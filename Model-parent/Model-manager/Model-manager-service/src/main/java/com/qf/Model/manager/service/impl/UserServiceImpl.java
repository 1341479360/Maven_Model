package com.qf.Model.manager.service.impl;

import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.common.pojo.dto.UserPageInfo;
import com.qf.Model.manager.dao.TbUserCustomMapper;
import com.qf.Model.manager.pojo.po.TbUser;
import com.qf.Model.manager.pojo.po.TbUserExample;
import com.qf.Model.manager.service.UserService;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    //1 初始化logger
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbUserCustomMapper userMapper;



    //查询用户列表
    public List<TbUser> userListByPage(UserPageInfo userpageInfo){


        List<TbUser> list=null;

        try {

            if(userpageInfo.getLimit()==0 || userpageInfo.getPage()==0){

                userpageInfo.setLimit(10);
                userpageInfo.setPage(1);
            }
            //通过页码信息获取用户集合
            list= userMapper.listUserByPage(userpageInfo);
            //查询总条数
            long  count = userMapper.userCount();
            //未对象封装总条数
            userpageInfo.setUserCount(count);

            if(userpageInfo.getPageCount()==0){
                userpageInfo.setPageCount(1);
            }


        } catch (Exception e) {

            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        return list;

    }



   /*
    @Override
    //1 查询列表
    public UserResult<TbUser> listUserByPage(PageInfo page) {

        //1 创建url异步数据接口实现类
        UserResult<TbUser> result = new UserResult<>();

        //2 发送成功,此值为0
        result.setCode(0);
        //3 发送信息为发送成功
        result.setMsg("success");

        //出现异常时,改变传输的值
        try {

            //封装接口实现类数据:查询总数
            result.setCount(userMapper.userCount());
            //单页的数据集合
            result.setData(userMapper.listUserByPage(page));

        } catch (Exception e) {
            //为0状态证明传输失败
            result.setCode(1);
            result.setMsg("defiled");
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }*/


    //2 批量删除
    @Override
    public int removeByIds(List<Long> ids) {

        int i = 0;
        try {
            //封装一个修改更改的商品对象
            TbUser record = new TbUser();
            record.setStatus(0);

            //1 使用example对象
            TbUserExample example = new TbUserExample();

            //2 创建模板
            TbUserExample.Criteria criteria = example.createCriteria();

            //3 为模板设值
            criteria.andIdIn(ids);

            //4 执行修改操作
          //  i = exampleMapper.updateByExampleSelective(record, example);

        } catch (Exception e) {

            logger.error(e.getMessage(), e);

            e.printStackTrace();
        }
        return i;
    }

}
