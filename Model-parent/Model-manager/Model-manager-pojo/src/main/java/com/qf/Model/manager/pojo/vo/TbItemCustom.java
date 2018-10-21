package com.qf.Model.manager.pojo.vo;

import com.qf.Model.manager.pojo.po.TbItem;

/**
 * vo    前端页面对象
 * po    数据库绑定对象
 * 继承原对象,添加新属性
 */
public class TbItemCustom extends TbItem {

    private String catName;

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }
}
