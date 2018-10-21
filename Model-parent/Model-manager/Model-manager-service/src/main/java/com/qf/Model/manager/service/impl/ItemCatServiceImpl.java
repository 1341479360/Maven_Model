package com.qf.Model.manager.service.impl;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.qf.Model.manager.dao.TbItemCatCustomMapper;
import com.qf.Model.manager.pojo.po.TbItemCat;
import com.qf.Model.manager.service.ItemCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Service
@Transactional
public class ItemCatServiceImpl implements ItemCatService {

    //1 初始化logger
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    //2 织入自定义的 种类  接口
    @Autowired
    private TbItemCatCustomMapper mapper;

    @Override
    public List<TbItemCat> findAll() {

        try {
            return mapper.selectAll();


        } catch (Exception e) {
            //为0状态证明传输失败
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return null;
    }
}
