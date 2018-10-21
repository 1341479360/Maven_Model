package com.qf.Model.search.service.Impl;
import com.qf.Model.search.dao.SearchIndexDao;
import com.qf.Model.search.dao.TbItemIndexMapper;
import com.qf.Model.search.pojo.dto.TbItemIndexResult;
import com.qf.Model.search.pojo.vo.TbItemIndex;
import com.qf.Model.search.service.SearchIndexService;
import org.apache.solr.client.solrj.SolrQuery;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchIndexServiceImpl implements SearchIndexService {


    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SearchIndexDao searchIndexDao;

    @Autowired
    private TbItemIndexMapper tbItemIndexMapper;

    /**
     * 封装好query对象,将该对象交给dao层查询索引库
     * @param keyword   前端传递的查询关键字
     * @param pageIndex 当前页码
     * @param pageSize  本页显示数量
     * @return 查询到的结果封装
     */
    @Override
    public TbItemIndexResult SearchIndex(String keyword, int pageIndex, int pageSize) {

        TbItemIndexResult result = null;

        try {
            /*0创建一个solr的查询对象,solr页面查询内容的封装
             */
            SolrQuery query = new SolrQuery();


            /*1  封装查询的关键字
             */
            query.setQuery(keyword);


            /*2  设置默认查询的字段
             */
            query.set("df", "item_keywords");


            /*3   设置分页信息
             */
            //3.1   判断页码
            if (pageIndex < 0) {
                pageIndex = 1;
            }
            //3.2   设置分页查询起始索引
            query.setStart((pageIndex - 1) * pageSize);

            //3.3   设置页面显示条数
            query.setRows(pageSize);


            /* 4     设置高亮部分
             */
            //4.1   开启高亮
            query.setHighlight(true);

            //4.2   设置高亮显示的字段
            query.addHighlightField("item_title");

            //4.3   设置高亮显示的前缀
            query.setHighlightSimplePre("<em style='color:red'>");

            //4.4   设置高亮显示的结尾
            query.setHighlightSimplePost("</em>");


            /*5    执行查询
             */
            result = searchIndexDao.search(query, pageSize);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return result;
    }
}
