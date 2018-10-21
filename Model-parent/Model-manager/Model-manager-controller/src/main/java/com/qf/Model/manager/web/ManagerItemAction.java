package com.qf.Model.manager.web;

import com.qf.Model.common.pojo.dto.ItemResult;
import com.qf.Model.common.pojo.dto.MessageResult;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemQuery;
import com.qf.Model.manager.service.ItemCatService;
import com.qf.Model.manager.service.ItemIndexService;
import com.qf.Model.manager.service.ItemService;
import org.apache.activemq.command.ActiveMQTopic;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.jms.*;
import java.util.List;

/**
 * 商品模块的控制器
 */
@Controller
public class ManagerItemAction {

    //获取本类的日志对象
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    //创建分页查询业务层对象
    @Autowired
    private ItemService itemService;

    //织入种类服务对象
    @Autowired
    private ItemCatService itemCatService;

    //织入索引库服务
    @Autowired
    private ItemIndexService itemIndexService;

    /*
        JMS即Java消息服务（Java Message Service）应用程序接口
        是一个Java平台中关于面向消息中间件（MOM）的API
        用于在两个应用程序之间，或分布式系统中发送消息，进行异步通信
     */
    //spring-publisher.xml提供
    @Autowired
    private JmsTemplate jmsTemplate;


    /*
        该对象绑定了传输的消息队列的所有属性
     */
    @Autowired
    private ActiveMQTopic topicDestination;

    /**
     * 1   异步访问数据库列表并实现分页
     *
     * @param page 用来实现翻页的dto类
     * @return 返回table异步交互接口的实现类
     */
    @ResponseBody
    @RequestMapping(value = "/items", method = RequestMethod.GET)
    public ItemResult<TbItemCustom> listItemByPage(PageInfo page, TbItemQuery query) {

        ItemResult<TbItemCustom> result = null;

        try {
            //通过传入的页面信息,计算出集合
            result = itemService.listItemByPage(page, query);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return result;
    }


    /**
     * 2    批量删除
     *
     * @param ids 前端传递需要删除的id数组
     * @return 影响结果的条数
     */
    @ResponseBody
    @RequestMapping("/item/batch")
    public int removesByIds(@RequestParam("ids[]") List<Long> ids) {

        int i = 0;

        try {
            i = itemService.removeByIds(ids);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 3  预添加功能,将查询到的所有种类添加到增加页面
     *
     * @return
     */
    @RequestMapping("pages/item/prAdd")
    public String prAdd(Model model) {
        try {
            model.addAttribute("itemCats", itemCatService.findAll());
            return "pages/item/add";
        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return null;
    }


    /**
     * 4    更改状态
     * @param tbItem    传递来的对象
     * @return          返回影响结果集
     */
    @ResponseBody
    @RequestMapping("/item/checkBox")
    public Object checkBox(TbItem tbItem) {
        int i = 0;
        try {
            return itemService.changeStatus(tbItem);
        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 5    查看并修改
     * @param tbItem    通过id进行查询
     * @return          返回到修改页面
     */
    @RequestMapping("/item/find")
    public String findById(TbItem tbItem){

        return "pages/item/add";
    }

    /**
     * 6    文件上传功能
     */
    @ResponseBody
    @RequestMapping(value = "item/uploadImage",method = RequestMethod.POST)
    public String uploadImage(@RequestParam MultipartFile file){

        String imageUpload=null;
        try {

            imageUpload = itemService.uploadImage(file);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return imageUpload;
    }


    /**
     * 8   添加索引库
     */
    @ResponseBody
    @RequestMapping("importIndex")
    public MessageResult importIndex(){

        //1 创建dto对象
        MessageResult messageResult=new MessageResult();

        //2 设置默认状态
        messageResult.setSuccess(false);
        messageResult.setMsg("filed");
        try {
            //3 执行导入功能
            itemIndexService.importIndex();

            //4 导入成功后,更改状态
            messageResult.setMsg("success");
            messageResult.setSuccess(true);

        }catch (Exception e){

        }
        return messageResult;
    }


    /**
     * 9    添加新商品,发送创建的ID到消息队列中
     */
    @ResponseBody
    @RequestMapping(value = "/item/add",method = RequestMethod.POST)
    public void  saveItem(){

        //1 新增商品,并返回该商品ID值
        long itemID=123456789L;
        /*
            2 使用jms模板向消息队列发送消息
            topicDestination    绑定具体要发送的消息队列对象
            MessageCreator      实现该接口重写要发送的消息内容
            Session             与绑定的消息队列实现会话
         */
        jmsTemplate.send(topicDestination, new MessageCreator() {
            @Override
            public Message createMessage(Session session) throws JMSException {

                //2.1  创建本文消息对象封装传输的数据
                TextMessage textMessage=session.createTextMessage(itemID+"");

                //2.1   执行发送到绑定的消息队列中
                return textMessage;
            }
        });
    }
}
