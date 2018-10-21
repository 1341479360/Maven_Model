package com.qf.Model.common.pojo.dto;
import java.io.Serializable;

/**
 * 页面page信息,封装前台传递的page参数
 * 前端框架参数  1 page              当前页
 *              2 limit             页面显示数量
 *              3 pageFirstIndex    查询起始索引(在mapper.xml中自动计算)
 *
 */
public class PageInfo implements Serializable {

    //1 当前页码值
    private int page;
    //2 每页显示条数
    private int limit;


    //查询起始值 = (当前页码值 - 1)*每页显示条数
    //3 SQL语句查询起始条数
    public long getPageFirstIndex() {
        return (page-1)*limit;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }
}
