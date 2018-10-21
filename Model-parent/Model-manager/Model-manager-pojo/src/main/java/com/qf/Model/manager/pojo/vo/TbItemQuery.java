package com.qf.Model.manager.pojo.vo;
import com.qf.Model.manager.pojo.po.TbItem;

/**
 * 查询参数的封装类
 */
public class TbItemQuery extends TbItem {

    private String title;

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public void setTitle(String title) {
        this.title = title;
    }
}
