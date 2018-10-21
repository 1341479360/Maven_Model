package com.qf.Model.manager.web;

import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.common.pojo.dto.UserPageInfo;
import com.qf.Model.common.pojo.dto.UserResult;
import com.qf.Model.manager.pojo.po.TbUser;
import com.qf.Model.manager.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 商品模块的控制器
 */
@Controller
public class ManagerUserAction {

    //获取本类的日志对象
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    //创建分页查询业务层对象
    @Autowired
    private UserService userService;


    @RequestMapping("pages/member/list")
    public String memberlist(UserPageInfo userPageInfo, Model model) {

        List<TbUser> list = null;

        try {

            list = userService.userListByPage(userPageInfo);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        model.addAttribute("userPage", userPageInfo);
        model.addAttribute("userList", list);

        return "pages/member/list";
    }




















    /*
     *//**
     * 1   异步访问数据库列表并实现分页
     *
     * @param page 用来实现翻页的dto类
     * @return 返回table异步交互接口的实现类
     *//*
    @ResponseBody
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public UserResult<TbUser> listUserByPage(PageInfo page) {

        UserResult<TbUser> result = null;

        try {

            //通过传入的页面信息,计算出集合
           // result = userService.listUserByPage(page);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }*/


    /**
     * 2    批量删除
     *
     * @param ids 前端传递需要删除的id数组
     * @return 影响结果的条数
     */
    @ResponseBody
    @RequestMapping("/user/batch")
    public int removesByIds(@RequestParam("ids[]") List<Long> ids) {

        int i = 0;
        try {
            i = userService.removeByIds(ids);

        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return i;
    }

    /* *//**
     * 3  预添加功能,将查询到的所有种类添加到增加页面
     *
     * @return
     *//*
    @RequestMapping("pages/item/prAdd")
    public String prAdd(Model model) {

        try {

            model.addAttribute("itemCats", userService.findAll());

            return "pages/item/add";
        } catch (Exception e) {
            //通过logback将异常 打印日志中
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return null;
    }*/


    /**
     * 4    更改状态
     * @param tbItem    传递来的对象
     * @return 返回影响结果集
     */
   /* @ResponseBody
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
    }*/

    /**
     * 5    查看并修改
     * @param tbItem    通过id进行查询
     * @return 返回到修改页面
     */
   /* @RequestMapping("/item/find")
    public String findById(TbItem tbItem){




        return "pages/item/add";
    }*/


}
