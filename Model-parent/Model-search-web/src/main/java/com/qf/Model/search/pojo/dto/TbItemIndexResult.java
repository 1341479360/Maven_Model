package com.qf.Model.search.pojo.dto;


import com.qf.Model.search.pojo.vo.TbItemIndex;

import java.util.List;

/**
 * 从索引库查询的结果集合
 */
public class TbItemIndexResult {

    //1 符合查询条件的总数
    public long searchCount;

    //2 总页数
    public long pageCount;

    //3 指定分页的集合
    private List<TbItemIndex> list;



    public long getSearchCount() {
        return searchCount;
    }

    public void setSearchCount(long searchCount) {
        this.searchCount = searchCount;
    }


    public long getPageCount() {
        return pageCount;
    }

    public void setPageCount(long pageCount) {
        this.pageCount = pageCount;
    }

    public List<TbItemIndex> getList() {
        return list;
    }

    public void setList(List<TbItemIndex> list) {
        this.list = list;
    }
}
