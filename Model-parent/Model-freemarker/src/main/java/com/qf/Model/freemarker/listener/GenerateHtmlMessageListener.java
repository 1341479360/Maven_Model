package com.qf.Model.freemarker.listener;
import com.qf.Model.freemarker.dao.TbItemIndexMapper;
import com.qf.Model.freemarker.pojo.po.vo.TbItemIndex;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;
import java.io.FileWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
public class GenerateHtmlMessageListener implements MessageListener {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TbItemIndexMapper itemIndexDao;

    //spring-freemarker.xml提供
    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;

    @Override
    public void onMessage(Message message) {
        try {
            //1 将消息内容进行强转为商品ID
            TextMessage textMessage = (TextMessage) message;
            long itemID  = Long.parseLong(textMessage.getText());

            //2  通过ID从数据库中查询对象
            TbItemIndex tbItemIndex = itemIndexDao.selectItemByID(itemID);

            //3 创建Map封装存入的对象
            Map<String, Object> dataModel = new HashMap<String, Object>();
            dataModel.put("item", tbItemIndex);

            /*
                 4 产生静态页面

              4.1   获取freeMarker配置对象*/
            Configuration configuration = freeMarkerConfigurer.getConfiguration();

            //4.2   获取模板对象(目录为web-inf/ftl/)
            Template template = configuration.getTemplate("index.ftl");

            //4.3   获取输出流,指定创建的静态页面写出位置
            Writer out = new FileWriter("d:/web/" + itemID + ".html");

            //4.4   根据模板及Map执行生产html
            template.process(dataModel,out);

            //4.5   释放资源
            out.close();

        }catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(),e);
        }
    }
}
