package com.qf.Model.mail;

import com.qf.Model.service.DemoService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 接受方测试
 */
public class Start {


    public static void main(String[] args) {

        //启动Spring上下文
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"spring-consumer.xml"});

        //获取远程代理对象
        DemoService demoService = (DemoService) context.getBean("demoService");

        //调用远程方法
        String str = demoService.service("你好");

        System.out.println(1/0);

    }

}

