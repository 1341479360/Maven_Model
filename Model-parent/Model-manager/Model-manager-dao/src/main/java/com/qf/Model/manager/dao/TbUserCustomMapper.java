package com.qf.Model.manager.dao;

import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.common.pojo.dto.UserPageInfo;
import com.qf.Model.manager.pojo.po.TbUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbUserCustomMapper {

    //1 为分页准备的总条数
    long userCount();

    //2 分局分页信息进行查询
    List<TbUser> listUserByPage(@Param("page") UserPageInfo page);
}
