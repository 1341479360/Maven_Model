package com.qf.Model.mail;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;

/**
 * 提供方测试
 */
public class Start {


    public static void main(String[] args) throws IOException {

        //启动Spring上下文
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"spring-provider.xml"});

        //长连接
        context.start();

        //
        System.in.read();



    }

}

