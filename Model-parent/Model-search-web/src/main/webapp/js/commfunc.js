/* 
 * 公用方法
 * 注意：此文件禁止使用初始化例如 $(function(){...}) 等操作
 */

var hostUrl = document.location.host;
var urlArr = hostUrl.split('.');
var domain = urlArr[1] + '.' + urlArr[2];

//登录弹窗
function loginWin(){
    SF.Widget.login();//登录成功后停留在商品详情页面
}
//周期配立即购买
function buyNow(pId,pNo){
    var cartHostUrl = 'http://cart.'+domain; //购物车域名
    var requestUrl = cartHostUrl + '/period/addProduct/'; //请求URL
    var ownUrl = cartHostUrl + '/period/index?hashKey='; //自营和商铺商品的订单页面
    $.ajax({
        url: requestUrl,
        type: 'GET',
        dataType: "jsonp",
        jsonp: "callback",
        data: {
            product_id: pId,
            number: pNo,
            mes: 1
        },
        success: function(msg) {
            if (msg.error == -1) {
                SF.Widget.login(); //登录成功后停留在商品详情页面 
            } else if (msg.error == 0) {
                location.href = ownUrl + msg.hashKey;
            } else{
                jAlert(msg.info);
            }
        }
    });
}