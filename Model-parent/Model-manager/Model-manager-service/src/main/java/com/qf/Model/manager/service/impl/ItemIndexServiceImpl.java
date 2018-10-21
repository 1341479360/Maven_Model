package com.qf.Model.manager.service.impl;

import com.qf.Model.manager.dao.TbItemIndexMapper;
import com.qf.Model.manager.pojo.vo.TbItemIndex;
import com.qf.Model.manager.service.ItemIndexService;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemIndexServiceImpl implements ItemIndexService {

    //日志
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbItemIndexMapper itemIndexMapper;

    //注入solr服务对象
    @Autowired
    private SolrServer solrServer;

    @Override
    public void importIndex() {

        try {
        /*
            1 采集数据(从数据库获取索引库需要的对象集合), 注入dao接口
         */
            List<TbItemIndex> tbItemIndices = itemIndexMapper.listItemByCondition();

        /*
            2 遍历数据集产生document文档,注入solrServer
         */
        for(TbItemIndex tbItemIndex:tbItemIndices){

            //2.1   创建一个输入文档
            SolrInputDocument inputDocument=new SolrInputDocument();

            //2.2   将数据库查询出的对象封装到solr的文档对象中(与schema.xml中配置相同)
            inputDocument.addField("id",tbItemIndex.getId());
            inputDocument.addField("item_title",tbItemIndex.getTitle());
            inputDocument.addField("item_sell_point",tbItemIndex.getSellPoint());
            inputDocument.addField("item_price",tbItemIndex.getPrice());
            inputDocument.addField("item_image",tbItemIndex.getImage());
            inputDocument.addField("item_category_name",tbItemIndex.getCatName());

            //2.3   将封装好的document对象添加到索引库
            solrServer.add(inputDocument);
        }
            /*
                3 通过solrServer提交事务
             */
            solrServer.commit();

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
    }
}
