package com.qf.Model.service.Impl;

import com.qf.Model.service.DemoService;

public class DemoServiceImpl implements DemoService {


    @Override
    public String service(String str) {

        return "hello"+str;
    }
}
