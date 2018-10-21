package com.qf.Model.search.service;


import com.qf.Model.search.pojo.dto.TbItemIndexResult;
import com.qf.Model.search.pojo.vo.TbItemIndex;

public interface SearchIndexService {

    /**
     * 根据条件查询索引库
     * @param keyword   前端传递的查询关键字
     * @param pageIndex 当前页码
     * @param pageSize  本页显示数量
     * @return          查询出的结果集合
     */
    TbItemIndexResult SearchIndex(String keyword, int pageIndex, int pageSize);

}
