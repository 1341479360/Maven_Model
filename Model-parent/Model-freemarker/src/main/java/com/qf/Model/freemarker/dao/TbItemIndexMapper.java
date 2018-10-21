package com.qf.Model.freemarker.dao;
import com.qf.Model.freemarker.pojo.po.vo.TbItemIndex;

/**
 * 索引库查询接口,查询新加入索引库的商品对象
 */
public interface TbItemIndexMapper {

    //通过制定ID查询商品对象
    TbItemIndex selectItemByID(long id);

}
