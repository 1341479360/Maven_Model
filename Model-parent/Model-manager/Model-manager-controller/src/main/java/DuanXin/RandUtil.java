package DuanXin;
import java.util.Random;

/**
 * 产生的随机数类
 */
public class RandUtil {

    public static String getRandNum() {
        String randNum = new Random().nextInt(1000000)+"";
        System.out.println("生成"+randNum);
        if (randNum.length()!=6) {   //如果生成的不是6位数随机数则返回该方法继续生成
            return getRandNum();
        }
        return randNum;
    }
}
