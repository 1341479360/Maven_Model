package com.qf.Model.manager.dao;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 *  dao层自定义接口
 *  自定义的新方法
 *  1   查询总条数
 *  2   根据页面信息进行分页查询
 * @Param   参数绑定,在xml中可以省略parameterType绑定
 */
public interface TbItemCustomMapper {

    long itemCount(@Param("query") TbItemQuery query);

    List<TbItemCustom> listItemByPage(@Param("page") PageInfo page,
                                      @Param("query") TbItemQuery query);

    int changeStatus(@Param("tbItem") TbItem tbItem);
}
