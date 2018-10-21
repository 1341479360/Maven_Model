package DuanXin;

/**
 * 发送验证码工具类
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class QueryUtil {

    /**
     *  请求的json参数
     */
    public static String queryArguments(String ACCOUNT_SID,String AUTH_TOKEN, String smsContent,String to) {

        //1 时间戳
        String timestamp = getTimestamp();

        //2 执行MD5加密(   1 账户ID,     2 密钥 ,   3 时间戳 )
        String sig =  MD5(ACCOUNT_SID,AUTH_TOKEN,timestamp);//签名认证

        //3 拼接json参数返回
        String str = "accountSid="+ACCOUNT_SID+"&smsContent="+
                smsContent+"&to="+to+"&timestamp="+timestamp+"&sig="+sig;

        return str;
    }
    /**
     * 执行   MD5加密
     * @param args  参数1  ACCOUNT SID     用户注册ID
     * @param args  参数2  AUTH TOKEN      用户密钥
     * @param args  参数3  timestamp       当前时间戳
     * @return  三个参数加密的 MD5 格式 密文
     */
    public static String MD5(String... args){ //动态参数
        StringBuffer result = new StringBuffer();
        if (args == null || args.length == 0) {
            return "";
        } else {
            StringBuffer str = new StringBuffer();
            for (String string : args) {
                str.append(string);
            }
            System.out.println("加密前：\t"+str.toString());

            try {
                //获取MD5加密功能
                MessageDigest digest = MessageDigest.getInstance("MD5");
                //将需要加密的字符串转化为字符数组,并执行加密
                byte[] bytes = digest.digest(str.toString().getBytes());
                for (byte b : bytes) {
                    String hex = Integer.toHexString(b&0xff);  //转化十六进制
                    if (hex.length() == 1) {
                        result.append("0"+hex);
                    }else{
                        result.append(hex);
                    }
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        //获取加密后的密文
        System.out.println("加密后：\t"+result.toString());
        return result.toString();
    }
    /*
     * 加密参数3    获取时间戳
     */
    public static String getTimestamp(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        return sdf.format(date);
    }
}
