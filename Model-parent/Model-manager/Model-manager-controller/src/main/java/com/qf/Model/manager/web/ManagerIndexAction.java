package com.qf.Model.manager.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 页面导航访问路径
 */
@Controller
public class ManagerIndexAction {

    //1 通配方式访问webApp下web资源
    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String index(@PathVariable String page){

        return page;
    }

     //2 通配方式访问pages下web资源
    @RequestMapping(value = "/pages/{pageName}", method = RequestMethod.GET)
    public String index2(@PathVariable String pageName){

        return "pages/" + pageName;
    }

  //3 通配访问order下的web资源
    @RequestMapping(value = "/pages/{page1}/{page2}", method = RequestMethod.GET)
    public  String index3(@PathVariable String page1,@PathVariable String page2){

        return  "pages/" + page1 + "/" + page2;
    }




}
