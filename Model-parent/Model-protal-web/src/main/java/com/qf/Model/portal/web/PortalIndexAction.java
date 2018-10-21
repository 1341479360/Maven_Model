package com.qf.Model.portal.web;

import com.qf.Model.common.core.PropKit;
import com.qf.Model.portal.po.pojo.TbContent;
import com.qf.Model.portal.serviceI.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PortalIndexAction {


    @Autowired
    private ContentService contentService;

    /**
     * 景点
     * @param request
     * @return
     */
    @RequestMapping(value = "/place", method = RequestMethod.GET)
    public String place(HttpServletRequest request) {
        //0 读取配置文件
        Long cid = PropKit.use("index.properties").getLong("place.cid");//89
        //1 调用业务逻辑层进行查询
        List<TbContent> list = contentService.listContentsByCid(cid);
        //2 将列表存放request范围之内
        request.setAttribute("contentList",list);
        //3 转发到下一个页面
        return "place";
    }

    @RequestMapping(value = "/lijiang", method = RequestMethod.GET)
    public String lijiang() {

        return "lijiang";
    }

    @RequestMapping(value = "/hangzhou", method = RequestMethod.GET)
    public String hangzhou() {

        return "hangzhou";
    }

    @RequestMapping(value = "/huangshan", method = RequestMethod.GET)
    public String huangshan() {

        return "huangshan";
    }

    @RequestMapping(value = "/fushishan", method = RequestMethod.GET)
    public String fushishan() {

        return "fushishan";
    }



    /**
     * 购物
     * @param request
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(HttpServletRequest request) {
        //0 读取配置文件
        Long cid = PropKit.use("index.properties").getLong("lunbo.cid");//89
        //1 调用业务逻辑层进行查询
        List<TbContent> list = contentService.listContentsByCid(cid);
        //2 将列表存放request范围之内
        request.setAttribute("contentList",list);
        //3 转发到下一个页面
        return "index";
    }






}
