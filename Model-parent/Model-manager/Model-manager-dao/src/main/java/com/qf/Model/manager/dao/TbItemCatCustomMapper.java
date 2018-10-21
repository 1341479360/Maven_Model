package com.qf.Model.manager.dao;

import com.qf.Model.manager.pojo.po.TbItemCat;
import com.qf.Model.manager.pojo.po.TbItemCatExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbItemCatCustomMapper {


    //查询所有类型对象
    public List<TbItemCat> selectAll();



}