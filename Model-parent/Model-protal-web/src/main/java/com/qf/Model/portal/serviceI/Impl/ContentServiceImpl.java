package com.qf.Model.portal.serviceI.Impl;

import com.qf.Model.common.core.JsonUtils;
import com.qf.Model.common.core.StrKit;
import com.qf.Model.common.jedis.JedisClient;
import com.qf.Model.portal.dao.TbContentMapper;
import com.qf.Model.portal.po.pojo.TbContent;
import com.qf.Model.portal.po.pojo.TbContentExample;
import com.qf.Model.portal.serviceI.ContentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ContentServiceImpl implements ContentService {

    //引入日志对象
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbContentMapper contentMapper;


    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<TbContent> listContentsByCid(Long cid) {

        List<TbContent> contentList = null;

        //1 去缓存服务器中查询
        try {
            String jsonString = jedisClient.hget("CONTENTLIST", cid + "");
            //判断如果不为空
            if(StrKit.notBlank(jsonString)){
                //缓存中有数据
                contentList = JsonUtils.jsonToList(jsonString, TbContent.class);
                return contentList;
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        //2 真实的业务逻辑，去数据库中查询
        TbContentExample example = new TbContentExample();
        TbContentExample.Criteria criteria = example.createCriteria();
        criteria.andCategoryIdEqualTo(cid);
        contentList = contentMapper.selectByExample(example);

        //3 存放一份到缓存服务器
        try {
            //将查到的集合转化为json放入缓存中
            jedisClient.hset("CONTENTLIST", cid + "", JsonUtils.objectToJson(contentList));
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return contentList;
    }
}
