package DuanXin;
import net.sf.json.JSONObject;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;

/**
 * 获取短信验证码类
 * @author LB_lfx
 */
public class GetMessage {


    /**
     * 1    请求地址前半部分
     */
    public static final String BASE_URL = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";//请求地址是固定的不用改


    /**
     * 2    拼接JSON参数
     *
     * 2.1   用户ID*/
    public static final String ACCOUNT_SID = "9c3aaac7feed4f2396a5e5c58d15a705";//这里填写你在平台里的ACOUNT_SID


    // 2.2   密钥
    public static final String AUTH_TOKEN = "8a74f54cc34547bb989538b328326b1a";

    // 获取随机验证码
    public static  String randNum = RandUtil.getRandNum();

    //2.3   短信内容
    public  static String smsContent ="【千峰教育】您的验证码为"+randNum+"，请于30分钟内正确输入，如非本人操作，请忽略此短信。";

    /**
     * (获取短信验证码)
     * @param to        手机号
     * @return String   返回状态值
     */
    public static String getResult(String to) {


        //拼接json字符串
        String args = QueryUtil.queryArguments(ACCOUNT_SID, AUTH_TOKEN, smsContent, to);


        OutputStreamWriter out = null;
        InputStream in = null;
        BufferedReader br = null;
        StringBuffer sb = new StringBuffer();
        try {
            //创建访问路径
            URL url = new URL(BASE_URL);
            //打开链接
            URLConnection connection = url.openConnection();
            //设置连接信息
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setConnectTimeout(5000);  //设置链接超时
            connection.setReadTimeout(10000);    //设置读取超时

            //提交数据
            out = new OutputStreamWriter(connection.getOutputStream(),"utf-8");
            out.write(args);
            out.flush();

            //读取返回数据
            br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line = "";
            while((line = br.readLine())!=null){
                sb.append(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if (br!=null) {
                    br.close();
                }
                if (out!=null) {
                    out.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        JSONObject jsonObject = JSONObject.fromObject(sb.toString());

        System.out.println(jsonObject);

        Object object = jsonObject.get("respCode");

        System.out.println("状态码："+object+"验证码："+randNum);

        System.out.println(!object.equals("00000"));

        //发送失败 , 返回错误码
        if (!object.equals("00000")) {

            return object.toString();

        }else{
            //发送成功 , 返回验证码
            return randNum;
        }


    }
//  测试功能
  public static void main(String[] args) {
      String result = getResult("13504592296");
     System.out.println("验证码："+randNum+"\t"+result);
  }
}
