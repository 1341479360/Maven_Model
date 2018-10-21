package com.qf.Model.manager.dao;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemIndex;
import com.qf.Model.manager.pojo.vo.TbItemQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 索引库查询接口,查询索引库需要的商品对象集合
 *
 */
public interface TbItemIndexMapper {

    //从数据库查询所有的商品对象,放入集合中
    List<TbItemIndex> listItemByCondition();
}
