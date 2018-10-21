package com.qf.Model.manager.service;


import com.qf.Model.common.pojo.dto.ImageUpload;
import com.qf.Model.common.pojo.dto.ItemResult;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemQuery;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


public interface ItemService {
    /**
     ****1  table接口实现类
     * @param page  前端传入的page对象:
     *              1   当前页码
     *              2   显示条数
     *              3   查询前索引
     *
     * @param query 查询的内容的封装
     *
     * @return  返回值为url异步接口实现类
     */
    ItemResult<TbItemCustom> listItemByPage(PageInfo page, TbItemQuery query);


    /**
     ****2  批量删除(status修改为3)
     * @param ids   封装的数组ids
     * @return      操作影响的条数
     */
    int removeByIds(List<Long> ids);


    /**
     * 3    更改状态
     */
    int changeStatus(TbItem tbItem);

    /**
     * 4    图片上传
     */
    String uploadImage(MultipartFile file);

}
