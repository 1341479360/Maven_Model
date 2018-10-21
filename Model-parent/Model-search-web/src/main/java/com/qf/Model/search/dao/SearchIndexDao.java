package com.qf.Model.search.dao;

import com.qf.Model.search.pojo.dto.TbItemIndexResult;
import com.qf.Model.search.pojo.vo.TbItemIndex;
import com.sun.tools.javadoc.DocImpl;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchIndexDao {

    @Autowired
    private SolrServer solrServer;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    /**
     * 从索引库中查询的结果进行封装到dto中,并返回
     * @param query    封装的查询对象
     * @param pageSize 当前页显示的条数
     * @return
     */
    public TbItemIndexResult search(SolrQuery query, int pageSize) {

        //1 创建dto对象
        TbItemIndexResult result = new TbItemIndexResult();

        try {

            //2 根据查询对象执行查询操作
            QueryResponse queryResponse = solrServer.query(query);

            //3 从响应信息获取查到的文档对象集合
            SolrDocumentList documentList = queryResponse.getResults();

            //3 获取查询结果总数
            long searchCount = documentList.getNumFound();

            //4 计算出总页数(退一进一法)
            long pageCount = (pageSize + searchCount - 1) / pageSize;

            //5 封装dto(1,2)
            result.setPageCount(pageCount);
            result.setSearchCount(searchCount);


            /*
                "highlighting": {
                    "925237"(id): {
                          "item_title(高亮显示属性)": [
                                "<em style=color:red>三星(高亮显示关键字)</em> Galaxy S4"
                          ]
                    },{...},{...}
                 }
             */
            //6 获取高亮集合
            Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();

            /*
                7 将查询到的document集合转化为TbItemIndex对象集合
           */
            List<TbItemIndex> list = new ArrayList<>();

            for (SolrDocument document : documentList) {

                //7.1   普通属性封装
                TbItemIndex itemIndex = new TbItemIndex();
                itemIndex.setId(Long.parseLong((String) document.get("id")));
                itemIndex.setImage((String) document.get("item_image"));
                itemIndex.setPrice((Long) document.get("item_price"));
                itemIndex.setCatName((String) document.get("item_category_name"));
                itemIndex.setSellPoint((String) document.get("item_sell_point"));

                //7.2   高亮title封装
                List<String> stringList = highlighting.get(document.get("id")).get("item_title");

                String title = null;
                /*
                    7.2.1     item_title非空,证明为高亮

                       "item_title": [
                            "<em style=color:red>三星</em> Galaxy S5 (G9009W) 金 电信4G手机 双卡双待双通"
                        ]
                 */
                if (stringList != null && !stringList.isEmpty()) {

                    title = stringList.get(0);
                } else {
                    /*
                        7.2.2 无高亮
                         "item_title": "三星 Galaxy Note 3 (N9008V) 32G版 白色 移动4G手机"
                     */
                    title = (String) document.get("item_title");
                }

                //7.3 封装复杂属性title
                itemIndex.setTitle(title);

                //7.4 向集合中添加封装好的itemIndex对象
                list.add(itemIndex);
            }

            //8 封装dto(3)
            result.setList(list);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
}
