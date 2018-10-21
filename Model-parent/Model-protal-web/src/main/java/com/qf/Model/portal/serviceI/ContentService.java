package com.qf.Model.portal.serviceI;

import com.qf.Model.portal.po.pojo.TbContent;

import java.util.List;

public interface ContentService {

    //1 通过id查询轮播图的集合
    List<TbContent> listContentsByCid(Long cid);
}
