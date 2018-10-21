package com.qf.Model.search.listener;
import com.qf.Model.search.dao.TbItemIndexMapper;
import com.qf.Model.search.pojo.vo.TbItemIndex;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;
/**
 *      消息队列监听器:实现MessageListener接口
 *  功能:当消息队列中发送消息时,进行监听,查询并添加到索引库中
 */
public class ItemAddMessageListener implements MessageListener {

    Logger logger= LoggerFactory.getLogger(this.getClass());

    //spring-solr.xml提供
    @Autowired
    private SolrServer solrServer;

    @Autowired
    private TbItemIndexMapper tbItemIndexMapper;

    /*onMessage   当消息队列中出现消息时,调用该方法
        Message     产生的消息对象             */
    @Override
    public void onMessage(Message message) {

        try {

            //1 获取消息队列中产生的消息对象,并强转为ID
           TextMessage textMessage = (TextMessage) message;
           long itemID  = Long.parseLong(textMessage.getText());

           //2  通过ID从数据库中查询对象
           TbItemIndex tbItemIndex = tbItemIndexMapper.selectItemByID(itemID);

            /*3         将新增的商品添加到索引库中
                3.1   创建一个输入文档*/
            SolrInputDocument inputDocument=new SolrInputDocument();

            //  3.2   将数据库查询出的对象封装到solr的文档对象中(与schema.xml中配置相同)
            inputDocument.addField("id",tbItemIndex.getId());
            inputDocument.addField("item_title",tbItemIndex.getTitle());
            inputDocument.addField("item_sell_point",tbItemIndex.getSellPoint());
            inputDocument.addField("item_price",tbItemIndex.getPrice());
            inputDocument.addField("item_image",tbItemIndex.getImage());
            inputDocument.addField("item_category_name",tbItemIndex.getCatName());

            //  3.3   将封装好的document对象添加到索引库
            solrServer.add(inputDocument);

            //  3.4   提交事务
            solrServer.commit();

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
    }
}
