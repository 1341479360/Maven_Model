package com.qf.Model.manager.service;


import com.qf.Model.common.pojo.dto.ItemResult;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.common.pojo.dto.UserPageInfo;
import com.qf.Model.common.pojo.dto.UserResult;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.po.TbUser;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemQuery;

import java.util.List;


public interface UserService {
    /**
     ****1  table接口实现类
     *              1   当前页码
     *              2   显示条数
     *              3   查询前索引
     *
     *
     * @return  返回值为url异步接口实现类
     */
   // UserResult<TbUser> listUserByPage(PageInfo page);


    List<TbUser> userListByPage(UserPageInfo userPageInfo);


    /**
     ****2  批量删除(status修改为3)
     * @param ids   封装的数组ids
     * @return      操作影响的条数
     */
    int removeByIds(List<Long> ids);




}
