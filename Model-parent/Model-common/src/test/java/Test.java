
import com.qf.Model.common.jedis.JedisClient;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import sun.tools.tree.PreIncExpression;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-jedis-test.xml")
public class Test {



    @Autowired
    private JedisClient jedisClient;




    @org.junit.Test
    public  void test() {


jedisClient.set("name","00");



    }
}

