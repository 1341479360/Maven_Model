<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" type="text/css" href="css/productlist.css" />
    <link rel="stylesheet" type="text/css" href="css/base_w1200.css" />
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.alerts.css" />
    <script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
    <script type="text/javascript" src="js/jquery.alerts.js"></script>
    <script type="text/javascript" src="js/newversion.js"></script>
    <title>顺丰优选</title>
    <meta http-equiv=X-UA-Compatible content=IE=7>
    <meta name="Keywords" content="顺丰优选"/>
    <meta name="Description" content="顺丰优选"/>
    <script>
        var SF_STATIC_BASE_URL = 'http://i.sfimg.cn/com';
    </script>
    <!--[if IE 6]>
    <script type="text/javascript" src="js/png.js"></script>
    <![endif]-->
    <link rel="dns-prefetch" href="//p02.sfimg.cn">
    <link rel="dns-prefetch" href="//i.sfimg.cn">
</head>
<body>
<div class="toppromo">
    <!--顶 通-->
    <div class="banner" style="background:url(images/91e0ad5f7835c5213fe3bf37c5bef74e.jpg) no-repeat top center;display: block;">
        <a name="sfbest_hp_hp_headbanner_1" class="trackref" href="http://www.sfbest.com/paidMember/" target="_blank">会员频道</a>
    </div>
    <span class="topclose">关闭</span>
    <script>
        $(function(){
            $(".topclose").click(function() {
                $(".topclose").hide();
                $(".banner").slideUp(500)
            });
        });
    </script>
</div>
<!----topbanner------->
<div class="gg_full wrapfix" style="display:none">
    <div class="gg_fcon"></div>
</div>

<!----topbar------->
<script type="text/javascript" src="js/cookie.js"></script>
<script type="text/javascript" src="js/shadow.js"></script>
<script>
    function AddFavorite(url, title) {
        if (url == "") {
            url = "http://www.sfbest.com";
        }
        if (title == "") {
            title = "顺丰优选";
        }
        try {
            window.external.addFavorite(url, title);
        } catch (e) {
            try {
                window.sidebar.addPanel(title, url, "");
            } catch (e) {
                alert("您的浏览器不支持该操作!请您使用菜单栏或Ctrl+D收藏本站。");
            }
        }
    }
</script>
=======================================
<c:forEach items="${list.list}" var="item">
${item.title}
    ${item.price}
<br>
</c:forEach>

<div class="topMenu">
    <div class="pW">
        <ul class="fl topTh">
            <li class="d1">冷链配送 顺丰到家 送至：</li>
            <li class="d6 tShow" id="currentCityName">
                <p class="pshort"><span class="city_title1">...</span><b></b><span class="outline1"></span><span class="blank1"></span></p>
                <div class="dd" id="headAllCity">
                </div>
            </li>
        </ul>
        <ul class="fr topTh">
            <li class="login" id="login"></li>
            <li class="myOrder"><a name="sfbest_hp_hp_head_OrderList" class="trackref" href="http://home.sfbest.com/myorder/index/" rel="nofollow">我的订单</a></li>
            <li class="menus">
                <a name="sfbest_hp_hp_head_home1" href="http://home.sfbest.com/my/index/" rel="nofollow" class="trackref t">我的优选</a><b></b>
                <span class="outline"></span>
                <span class="blank"></span>
                <div class="dd">
                    <div><a name="sfbest_hp_hp_head_home2" class="trackref" href="http://home.sfbest.com/myorder/index/" rel="nofollow">我的订单</a></div>
                    <div><a name="sfbest_hp_hp_head_home4" class="trackref" href="http://home.sfbest.com/my/points/" rel="nofollow">我的积分</a></div>
                    <div><a name="sfbest_hp_hp_head_home3" class="trackref" href="http://home.sfbest.com/favorites/index/" rel="nofollow">我的收藏</a></div>
                    <!-- <div><a href="http://home.sfbest.com/my/balance/" rel="nofollow">账户余额</a>
                </div> -->
                    <div><a href="http://home.sfbest.com/giftcard/list/" rel="nofollow">我的优选卡</a></div>
                    <div><a href="http://home.sfbest.com/usercoupon/list/" rel="nofollow">我的优惠券</a></div>
                </div>
            </li>
            <li class="d2 tShow">
                <s></s>
                <q></q><a name="sfbest_hp_hp_head_app1" class="trackref" href="http://app.sfbest.com/" target="_blank" class="t">移动客户端</a>
                <div class="dd">
                    <div class="sf-client">
                        <span class="client-img"></span>
                        <i></i>
                        <div class="client-txt">
                            <em>扫描我，即可下载</em>
                            <strong>顺丰优选客户端</strong>
                        </div>
                    </div>
                    <div class="app-btn">
                        <a class="app-apple" target="_blank" rel="nofollow" href="http://itunes.apple.com/cn/app/id563194150"></a>
                        <a class="app-android" target="_blank" rel="nofollow" href="http://android.sfimg.cn/sfandroid_gw_v1.2.apk"></a>
                    </div>
                </div>
                <div class="corner">
                    <div class="aBg"></div>
                    <div class="aCt"></div>
                </div>
            </li>
            <li class="menus">
                <a name="sfbest_hp_hp_head_help1" href="http://help.sfbest.com/" target="_blank" class="trackref t">帮助中心</a><b></b>
                <span class="outline"></span>
                <span class="blank"></span>
                <div class="dd">
                    <div><a name="sfbest_hp_hp_head_help2" class="trackref" href="http://help.sfbest.com/140/128.html" rel="nofollow" target="_blank">购物指南</a></div>
                    <div><a name="sfbest_hp_hp_head_help3" class="trackref" href="http://help.sfbest.com/141/134.html" rel="nofollow" target="_blank">配送服务</a></div>
                    <div><a name="sfbest_hp_hp_head_help4" class="trackref" href="http://help.sfbest.com/143/131.html" rel="nofollow" target="_blank">支付方式</a></div>
                    <div><a name="sfbest_hp_hp_head_help5" class="trackref" href="http://help.sfbest.com/144/143.html" rel="nofollow" target="_blank">售后服务</a></div>
                    <div><a name="sfbest_hp_hp_head_help7" class="trackref" href="http://help.sfbest.com/377/4407.html" rel="nofollow" target="_blank">客服邮箱</a></div>
                    <div><a name="sfbest_hp_hp_head_help8" class="trackref" href="http://help.sfbest.com/377/6766.html" rel="nofollow" target="_blank">投诉与建议</a></div>
                </div>
            </li>
            <li class="allCat"><em class="site">网站导航</em>
                <s></s><span class="outline"></span> <span class="blank"></span>
                <div class="dd">
                    <dl>
                        <dt class="dh1">商品分类</dt>
                        <dd>
                            <a name="sfbest_hp_hp_head_category1" class="trackref" href="http://www.sfbest.com/fresh/" target="_blank">肉类海鲜</a>
                            <a name="sfbest_hp_hp_head_category2" class="trackref" href="http://www.sfbest.com/fresh/" target="_blank">新鲜果蔬</a>
                            <a name="sfbest_hp_hp_head_category3" class="trackref" href="http://www.sfbest.com/fresh/" target="_blank">速食冷藏</a>
                            <a name="sfbest_hp_hp_head_category4" class="trackref" href="http://www.sfbest.com/multi/7417_7431_7433_7435_7437_7439_7441-0-0-0-0-2-0-0-0-0-0.html" target="_blank">酒水饮料</a>
                            <a name="sfbest_hp_hp_head_category5" class="trackref" href="http://www.sfbest.com/multi/7411_7413_7415-0-0-0-0-2-0-0-0-0-0.html" target="_blank">休闲糖巧</a>
                            <a name="sfbest_hp_hp_head_category6" class="trackref" href="http://www.sfbest.com/multi/7443_7445_7447_7449-0-0-0-0-2-0-0-0-0-0.html" target="_blank">粮油干货</a>
                            <a name="sfbest_hp_hp_head_category7" class="trackref" href="http://www.sfbest.com/mall/7451-0-0-0-0-2-0-0-0-0-0.html" target="_blank">冲调茶饮</a>
                            <a name="sfbest_hp_hp_head_category8" class="trackref" href="http://www.sfbest.com/ht/" target="_blank">优选国际</a>
                        </dd>
                    </dl>
                    <dl class="line"></dl>
                    <dl>
                        <dt class="dh2">特色频道</dt>
                        <dd><a name="sfbest_hp_hp_head_channel12" class="trackref" href="http://www.sfbest.hk/" target="_blank">跨境直发</a><a name="sfbest_hp_hp_head_channel2" class="trackref" href="http://www.sfbest.com/qiye/" target="_blank">企业专区</a><a name="sfbest_hp_hp_head_channel3" class="trackref" href="http://www.sfbest.com/wine/" target="_blank">红酒廊</a><a name="sfbest_hp_hp_head_channel4" class="trackref" href="http://www.sfbest.com/taste/" target="_blank">寰宇美食</a>
                            <!-- <a name="sfbest_hp_hp_head_channel5" class="trackref" href="http://www.sfbest.com/healthy/" target="_blank">健康养生</a> -->
                            <!-- <a name="sfbest_hp_hp_head_channel6" class="trackref" href="http://www.sfbest.com/member/" target="_blank">会员俱乐部</a> --></dd>
                    </dl>
                    <dl class="line"></dl>
                    <dl>
                        <dt class="dh3">更多</dt>
                        <dd><a name="sfbest_hp_hp_head_moreapp" class="trackref" href="http://app.sfbest.com/" target="_blank">客户端</a><a name="sfbest_hp_hp_head_moreabout" class="trackref" href="http://www.sfbest.com/www/380/5118.html" target="_blank">关注我们</a>
                            <p>客服电话：9533858</p>
                        </dd>
                    </dl>
                </div>
            </li>
            <li class="d3 tShow">
                <a name="sfbest_hp_hp_head_weibo" class="trackref" title="关注顺丰优选微博" href="http://weibo.com/sfbest" rel="nofollow" target="_blank">
                    <q></q>
                </a>
            </li>
            <li class="d4 tShow">
                <q></q>
                <!--微信-->
                <div class="dd">
                    <div class="sf_wx_t">关注顺丰优选微信</div>
                    <div class="sf_wx"></div>
                </div>
                <div class="corner">
                    <div class="aBg"></div>
                    <div class="aCt"></div>
                </div>
            </li>
        </ul>
        <span class="clear"></span>
    </div>
</div>
<script language="javascript">
    $(document).ready(function() {
        isOnline('http://www.sfbest.com', 'http://home.sfbest.com', 'https://passport.sfbest.com');
        //$("img[src='http://i.sfimg.cn/html/images/iconzf_r3_c2.jpg']").parent().remove();
    });
</script>


<!----boxStart------->

<!-------headerStart--------->
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
<link href="css/jquery.autocomplete.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/helper.js"></script>
<div id="header">
    <div class="header_inner">
        <div class="logo">
            <a name="sfbest_Uhead_Uhead_head_logo" href="http://www.sfbest.com" class="trackref logoleft"></a><a name="sfbest_Uhead_Uhead_head_logo" href="http://www.sfbest.com" class="trackref logoright" title="顺丰优选"><span style="text-indent:-9999px; display:block;">顺丰优选</span></a><div class="logo-text"><img src="picture/logo_word.png"></div>
        </div>

        <div class="search">
            <form action="${pageContext.request.contextPath}/search" id="searchForm" name="query" method="GET">
                <input type="hidden" name="inputBox" value="1">
                <input type="hidden" name="categoryId" value="0">
                <input type="hidden" id="deviceId" name="deviceId" value="0">
                <input type="hidden" id="couponTypeId" name="couponTypeId" value="0">
                <input type="text" class="text" name="keyword" id="keyword" value="" style="color: rgb(153, 153, 153); " >
                <input type="submit" value="" class="submit"/>
            </form><div class="search_hot"></div>
        </div>
        <div class="shopingcar" id="topCart">
            <s class="setCart"></s><a href="http://cart.sfbest.com" class="t" rel="nofollow">我的购物车</a><b id="cartNum">0</b>
            <span class="outline"></span>
            <span class="blank"></span>
            <div id="cart_lists">
                <!--cartContent-->
                <div class="clear"></div>
            </div>
        </div>

    </div>
</div>
<!--选择城市弹层start-->
<div id="screen"></div>
<div class="indexshadow" id="shadowAllCity">
</div>
<!--选择城市弹层end-->
<script type="text/javascript">

    $(document).ready(function(){
        getkeyword(1,'http://www.sfbest.com');
        getWordAll(1,'http://www.sfbest.com');
        getCartList();
    });
    function checkWord(len){
        var str=$.trim($('#keyword').val());
        var showstr = '';
        myLen=0;
        i=0;
        for(;(i<str.length)&&(myLen<=len);i++){
            if(str.charCodeAt(i)>0&&str.charCodeAt(i)<128){
                myLen++;
            }
            else{
                myLen+=2;
            }
            if(myLen-len <= 0)
            {
                showstr += str.substr(i,1);
            }else{}
        }
        $('#keyword').val(showstr);
    }
</script>		<div class="mainNav">
    <div class="navmenu">
        <div class="categories" id="public_cate">
            <div class="dt"><a name="sfbest_Uhead_Uhead_menu_all" class="trackref topall" href="javascript:void(0);">精选商品分类</a></div>
            <div id="allSort" class="dd"></div>
        </div>
        <!----menufloat------->
        <div class="menu1">
            <ul>
                <li><a name="sfbest_Uhead_Uhead_nav_nav1" class="trackref" href="http://www.sfbest.com">首页</a></li>
                <li id="cat1">
                    <a name="sfbest_Uhead_Uhead_nav_nav2" href="http://www.sfbest.com/fresh/" class="trackref
																																			"
                    >优选生鲜</a>
                </li>
                <li id="cat2">
                    <a name="sfbest_Uhead_Uhead_nav_nav3" href="http://www.sfbest.com/html/activity/1449559102.html#trackref=sfbest_Uhead_Uhead_nav_nav5" class="trackref
																																			"
                    >优选厨房</a>
                </li>
                <li id="cat3">
                    <a name="sfbest_Uhead_Uhead_nav_nav4" href="http://www.sfbest.com/ht" class="trackref
																																			"
                    >优选国际</a>
                </li>
                <li id="cat4">
                    <a name="sfbest_Uhead_Uhead_nav_nav5" href="http://www.sfbest.com/qiye/" class="trackref
																																			"
                    >企业专区</a>
                </li>
                <li id="cat5">
                    <a name="sfbest_Uhead_Uhead_nav_nav6" href="http://www.sfbest.com/paidMember/" class="trackref
																																			"
                    >优选会员</a>
                </li>
                <!--
        <li class="minisite1"></li>
<li class="minisite"><a name="sfbest_Uhead_Uhead_nav_nav6" class="trackref " href="http://www.sfbest.com/wine/">红酒廊</a></li>
<li class="minisite"><a name="sfbest_Uhead_Uhead_nav_nav7" class="trackref " href="http://www.sfbest.com/taste/">寰宇美食</a></li>
     -->
            </ul>
        </div>
        <span class="clear"></span>
    </div>
</div>	<!-------headerOver--------->

<!-------面包线 linknav--------->
<div class="linknav"><div class="schArticle"><a href="/article/search?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87" target="_blank">找到和“<span>小猪佩奇</span>”相关的文章<span id="articlenum"></span>篇>></a></div><div class="breadcrumb"><span>全部结果&nbsp;>&nbsp;小猪佩奇</span></div></div>

<script type='text/javascript' src='js/productlist.js'></script><script type='text/javascript' src='js/jquery.lazyload.js'></script><script type='text/javascript' src='js/commfunc.js'></script><div class="content_list">
    <div class="main-box">

        <div class="r-select">
            <div class="cm">
                <div class="attrs-extend"><div class="attr">
                    <div class="a-key">品牌：</div>
                    <div class="a-value">
                        <div class="v-list">
                            <ul><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&brandId=12605">小猪佩奇<span class="v-c">(12)</span></a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&brandId=13193">亿智<span class="v-c">(3)</span></a></li></ul>
                        </div>
                        <div class="v-show hide"><span class="s-more"><b></b>更多</span></div>
                    </div>
                </div><div class="attr">
                    <div class="a-key">价格：</div>
                    <div class="a-value">
                        <div class="v-list">
                            <ul><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=0&endPrice=50">0-50</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=50&endPrice=100">50-100</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=100&endPrice=200">100-200</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=200&endPrice=500">200-500</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=500&endPrice=1000">500-1000</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&startPrice=1000">1000以上</a></li><li style="padding-top:0;">
                                <form action="" method="get" id="priceForm">
                                    <input type="hidden" name="pageNo" value="0">
                                    <input type="hidden" name="brandId" value="-1">
                                    <input type="hidden" name="attr" value="">
                                    <input type="hidden" name="o" value="">
                                    <input type="hidden" name="categoryId" value="0">
                                    <input type="hidden" name="keyword" value="小猪佩奇" />
                                    <input type="hidden" name="couponTypeId" value="0">
                                    <input type="hidden" name="deviceId" value="0" />
                                    <input type="text" class="priceInput" id="startPrice" name="startPrice" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')" onblur="this.value=this.value.replace(/[^\d]/g,'')" value="" autocomplete="off">-<input type="text" class="priceInput" name="endPrice" id="endPrice" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')" onblur="this.value=this.value.replace(/[^\d]/g,'')" value="" autocomplete="off">
                                    <input type="button" onclick="submitPriceForm()" class="submit1" value="确定">
                                </form>
                            </li></ul>
                        </div>
                        <div class="v-show hide"><span class="s-more"><b></b>更多</span></div>
                    </div>
                </div>
                </div>
                <div class="attrs-show hide"></div>
            </div>
        </div>	<a id="prolist-id"></a>
        <div class="r-filter">
            <div class="f-sort">
                <div class="sort">
                    <ul>
                        <!--li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87">默认</a></li-->
                        <li class="curr"><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&o=saleNum:desc">热卖</a></li>
                        <li><div class="up"><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&o=price:asc">价格<b></b></a></div></li>
                        <li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&o=commentsNum:desc">评论</a></li>
                        <li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&o=shelveDate:desc">新品</a></li>
                    </ul>
                </div>

                <div class="pagin">
                    <span class="txt"><span class="n">1</span>/1</span>
                    <span class="prev">上一页</span><span class='next'>下一页</span>       	</div>
                <div class="total">共<span id="searchTotal">15</span>个商品</div>
            </div>
            <div class="f-stock">
                <div class="rowTitle">库存：</div>
                <div class="rowAddr" id="regionSf">
                    <div class="" id="store-selector">
                        <div class="text"><div class="address-more" title="北京东城区">北京东城区</div><b></b></div>
                        <div class="content">

                            <!--<div class="tips">*红色星号仅为配送时令优选商品区域</div>-->
                            <div id="SF-stock" class="m SF-stock" data-widget="tabs">
                                <div class="mt">

                                    <ul class="tab">
                                        <li data-widget="tab-item" data-index="0"><a href="javascript:void(0);" title="北京"><em>北京</em><i></i></a></li><li data-index="1" data-widget="tab-item" style="display:none"><a title="北京市" href="javascript:void(0);">
                                        <em>北京市</em><i></i></a></li><li class="curr" data-index="2" data-widget="tab-item" style="display: block;"><a class="hover" title="东城区" href="javascript:void(0);">
                                        <em>东城区</em><i></i></a></li><li data-index="3" data-widget="tab-item" style="display: none;"><a title="请选择" href="javascript:void(0);">
                                        <em>请选择</em><i></i></a></li>
                                    </ul>
                                    <div class="stock-line"></div>
                                </div>
                                <div id="stock_province_item" data-widget="tab-content" data-area="0" class="mc" style="display: none;">
                                    <ul class="area-list"><li><a data-value="2" is_last="0" is_my="1" href="javascript:void(0);">北京</a></li><li><a data-value="27" is_last="0" is_my="1" href="javascript:void(0);">天津</a></li><li><a data-value="25" is_last="0" is_my="1" href="javascript:void(0);">上海</a></li><li><a data-value="32" is_last="0" is_my="1" href="javascript:void(0);">重庆</a></li><li><a data-value="6" is_last="0" is_my="0" href="javascript:void(0);">广东省</a></li><li><a data-value="31" is_last="0" is_my="0" href="javascript:void(0);">浙江省</a></li><li><a data-value="16" is_last="0" is_my="0" href="javascript:void(0);">江苏省</a></li><li><a data-value="4" is_last="0" is_my="0" href="javascript:void(0);">福建省</a></li><li><a data-value="18" is_last="0" is_my="0" href="javascript:void(0);">辽宁省</a></li><li><a data-value="15" is_last="0" is_my="0" href="javascript:void(0);">吉林省</a></li><li><a data-value="12" is_last="0" is_my="0" href="javascript:void(0);">黑龙江省</a></li><li><a data-value="17" is_last="0" is_my="0" href="javascript:void(0);">江西省</a></li><li><a data-value="10" is_last="0" is_my="0" href="javascript:void(0);">河北省</a></li><li><a data-value="11" is_last="0" is_my="0" href="javascript:void(0);">河南省</a></li><li><a data-value="22" is_last="0" is_my="0" href="javascript:void(0);">山东省</a></li><li><a data-value="23" is_last="0" is_my="0" href="javascript:void(0);">山西省</a></li><li><a data-value="13" is_last="0" is_my="0" href="javascript:void(0);">湖北省</a></li><li><a data-value="14" is_last="0" is_my="0" href="javascript:void(0);">湖南省</a></li><li><a data-value="30" is_last="0" is_my="0" href="javascript:void(0);">云南省</a></li><li><a data-value="9" is_last="0" is_my="0" href="javascript:void(0);">海南省</a></li><li><a data-value="24" is_last="0" is_my="0" href="javascript:void(0);">陕西省</a></li><li><a data-value="26" is_last="0" is_my="0" href="javascript:void(0);">四川省</a></li><li><a data-value="3" is_last="0" is_my="0" href="javascript:void(0);">安徽省</a></li><li><a data-value="8" is_last="0" is_my="0" href="javascript:void(0);">贵州省</a></li><li><a data-value="5" is_last="0" is_my="0" href="javascript:void(0);">甘肃省</a></li><li><a data-value="21" is_last="0" is_my="0" href="javascript:void(0);">青海省</a></li><li><a data-value="7" is_last="0" is_my="0" href="javascript:void(0);">广西</a></li><li><a data-value="19" is_last="0" is_my="0" href="javascript:void(0);">内蒙古</a></li><li><a data-value="20" is_last="0" is_my="0" href="javascript:void(0);">宁夏</a></li><li><a data-value="29" is_last="0" is_my="0" href="javascript:void(0);">新疆</a></li><li><a data-value="28" is_last="0" is_my="0" href="javascript:void(0);">西藏</a></li></ul></div><div id="stock_city_item" municipality="1" data-widget="tab-content" data-area="1" class="mc" style="display: none;">
                                <ul class="area-list"><li><a onclick="clickMore($(this));" is_last="0" data-value="52" href="javascript:void(0);">北京市</a></li></ul></div><div id="stock_area_item" data-widget="tab-content" data-area="2" class="mc" style="display: block;">
                                <ul class="area-list"><li><a onclick="clickMore($(this));" is_last="1" data-value="500" href="javascript:void(0);">东城区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="501" href="javascript:void(0);">西城区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="502" href="javascript:void(0);">海淀区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="503" href="javascript:void(0);">朝阳区</a></li><li><a onclick="clickMore($(this));" is_last="0" data-value="506" href="javascript:void(0);">丰台区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="507" href="javascript:void(0);">石景山区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="508" href="javascript:void(0);">房山区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="509" href="javascript:void(0);">门头沟区</a></li><li><a onclick="clickMore($(this));" is_last="0" data-value="510" href="javascript:void(0);">通州区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="511" href="javascript:void(0);">顺义区</a></li><li><a onclick="clickMore($(this));" is_last="0" data-value="512" href="javascript:void(0);">昌平区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="513" href="javascript:void(0);">怀柔区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="514" href="javascript:void(0);">平谷区</a></li><li><a onclick="clickMore($(this));" is_last="0" data-value="515" href="javascript:void(0);">大兴区</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="516" href="javascript:void(0);">密云县</a></li><li><a onclick="clickMore($(this));" is_last="1" data-value="517" href="javascript:void(0);">延庆县</a></li></ul></div><div id="stock_town_item" data-widget="tab-content" data-area="3" class="mc" style="display: none;">
                                <ul class="area-list"></ul></div>
                            </div>
                            <span class="clr"></span>
                        </div>
                        <div onclick="$('#store-selector').removeClass('hover')" class="close"></div>
                    </div>
                    <script>
                        var pname = "北京";
                        var cname = "北京市";
                        var aname = "东城区";
                        var provinceId = "2";
                        var cityidId = "52";
                        var areaId = "500";
                        var allArr = [{"2":{"region_id":"2","parent_id":"1","region_name":"\u5317\u4eac","show_name":"\u5317\u4eac","region_type":"1","area_code":"010","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"1","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":null,"sfv_region_id":"110000","sort":"1","operater_time":"1462763089","is_deleted":"0","created_time":"0","modified_time":"2016-05-09 11:04:49","city_code":"0","sale_regions":"3,2,4,5,6,7,11,13,10,15,14,16,20,22,26,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,77,91,121,125,145,147,135,155,153,163,165,167,157,173,137,1,36,177,181,187,67,175,87","is_last":"0"},"27":{"region_id":"27","parent_id":"1","region_name":"\u5929\u6d25","show_name":"\u5929\u6d25","region_type":"1","area_code":"022","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"1","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"120000","sort":"2","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2016-04-25 19:45:04","city_code":"0","sale_regions":"3,2,4,5,6,7,13,10,15,14,20,22,26,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,91,121,125,145,147,135,155,153,163,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"25":{"region_id":"25","parent_id":"1","region_name":"\u4e0a\u6d77","show_name":"\u4e0a\u6d77","region_type":"1","area_code":"021","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"1","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"310000","sort":"3","operater_time":"1389867490","is_deleted":"0","created_time":"0","modified_time":"2016-04-25 19:45:02","city_code":"0","sale_regions":"3,2,4,5,6,7,10,15,14,16,20,22,26,34,28,17,18,30,38,40,43,45,49,73,61,51,65,59,53,63,75,77,91,121,125,145,147,135,155,153,159,163,165,167,157,173,137,1,36,177,181,183,187,67,175,87","is_last":"0"},"32":{"region_id":"32","parent_id":"1","region_name":"\u91cd\u5e86","show_name":"\u91cd\u5e86","region_type":"1","area_code":"023","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"1","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"500000","sort":"4","operater_time":"1389867267","is_deleted":"0","created_time":"0","modified_time":"2016-04-25 19:45:06","city_code":"0","sale_regions":"4,5,7,15,14,16,20,22,28,17,18,30,40,43,45,73,51,65,59,57,63,75,89,145,147,135,155,153,163,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"6":{"region_id":"6","parent_id":"1","region_name":"\u5e7f\u4e1c\u7701","show_name":"\u5e7f\u4e1c\u7701","region_type":"1","area_code":"Guangdongsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"440000","sort":"5","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,4,5,6,8,7,15,14,16,20,22,26,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,77,91,125,127,145,147,135,149,155,153,161,163,165,167,157,173,137,1,36,177,181,179,183,187,185,67,175,87","is_last":"0"},"31":{"region_id":"31","parent_id":"1","region_name":"\u6d59\u6c5f\u7701","show_name":"\u6d59\u6c5f\u7701","region_type":"1","area_code":"Zhejiangsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"330000","sort":"6","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"2,4,5,6,7,12,10,15,14,16,20,22,26,34,28,17,18,30,38,40,43,45,73,61,51,65,59,53,63,75,77,91,121,125,145,147,135,155,153,159,163,165,167,157,173,137,1,36,177,181,187,67,175,87","is_last":"0"},"16":{"region_id":"16","parent_id":"1","region_name":"\u6c5f\u82cf\u7701","show_name":"\u6c5f\u82cf\u7701","region_type":"1","area_code":"Jiangsusheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"320000","sort":"7","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,4,5,6,10,15,14,16,20,22,26,34,28,17,18,30,38,40,43,45,73,61,51,65,59,53,47,81,79,63,75,77,91,121,125,145,147,135,151,155,153,159,163,165,167,173,137,1,36,177,181,183,187,67,175,87","is_last":"0"},"4":{"region_id":"4","parent_id":"1","region_name":"\u798f\u5efa\u7701","show_name":"\u798f\u5efa\u7701","region_type":"1","area_code":"Fujiansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"350000","sort":"8","operater_time":"1450945130","is_deleted":"0","created_time":"0","modified_time":"2015-12-24 16:18:50","city_code":"0","sale_regions":"3,2,4,5,6,7,15,16,20,22,26,28,17,18,30,40,43,45,73,61,51,65,59,63,75,77,91,125,141,145,147,135,155,153,163,165,167,173,137,1,36,177,181,183,187,67,175,87","is_last":"0"},"18":{"region_id":"18","parent_id":"1","region_name":"\u8fbd\u5b81\u7701","show_name":"\u8fbd\u5b81\u7701","region_type":"1","area_code":"Liaoningsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"210000","sort":"9","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,4,5,6,7,15,20,22,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,91,125,145,147,135,155,153,163,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"15":{"region_id":"15","parent_id":"1","region_name":"\u5409\u6797\u7701","show_name":"\u5409\u6797\u7701","region_type":"1","area_code":"Jilinsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"220000","sort":"10","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,6,7,15,22,17,38,40,45,73,51,65,59,63,75,91,125,145,147,135,155,153,163,165,167,173,137,1,36,187,67,175,87","is_last":"0"},"12":{"region_id":"12","parent_id":"1","region_name":"\u9ed1\u9f99\u6c5f\u7701","show_name":"\u9ed1\u9f99\u6c5f\u7701","region_type":"1","area_code":"Heilongjiangsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"230000","sort":"11","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,15,20,26,17,40,45,73,51,65,63,75,125,145,147,135,155,153,163,165,173,137,1,36,187,67,175,87","is_last":"0"},"17":{"region_id":"17","parent_id":"1","region_name":"\u6c5f\u897f\u7701","show_name":"\u6c5f\u897f\u7701","region_type":"1","area_code":"Jiangxisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"360000","sort":"12","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"4,5,6,7,20,18,30,40,45,73,61,51,65,59,63,75,125,145,147,135,155,153,163,165,167,173,137,1,36,187,67,175,87","is_last":"0"},"10":{"region_id":"10","parent_id":"1","region_name":"\u6cb3\u5317\u7701","show_name":"\u6cb3\u5317\u7701","region_type":"1","area_code":"Hebeisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"130000","sort":"13","operater_time":"1389868298","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,4,5,6,7,13,15,14,22,26,17,18,38,40,45,73,61,51,65,59,63,75,91,121,125,145,147,135,155,153,163,165,167,173,137,1,36,181,187,191,67,175,87","is_last":"0"},"11":{"region_id":"11","parent_id":"1","region_name":"\u6cb3\u5357\u7701","show_name":"\u6cb3\u5357\u7701","region_type":"1","area_code":"Henansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"410000","sort":"14","operater_time":"1457017446","is_deleted":"0","created_time":"0","modified_time":"2016-03-03 23:04:06","city_code":"0","sale_regions":"3,2,4,5,6,7,15,16,20,28,17,18,30,40,43,45,73,61,51,65,59,69,63,75,77,125,145,147,135,155,153,163,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"22":{"region_id":"22","parent_id":"1","region_name":"\u5c71\u4e1c\u7701","show_name":"\u5c71\u4e1c\u7701","region_type":"1","area_code":"Shandongsheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"370000","sort":"15","operater_time":"1451963136","is_deleted":"0","created_time":"0","modified_time":"2016-01-05 11:05:36","city_code":"0","sale_regions":"2,4,5,6,7,15,20,22,26,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,77,91,125,145,147,135,155,153,163,165,167,173,137,1,36,177,181,183,187,67,175,87","is_last":"0"},"23":{"region_id":"23","parent_id":"1","region_name":"\u5c71\u897f\u7701","show_name":"\u5c71\u897f\u7701","region_type":"1","area_code":"Shanxisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"140000","sort":"16","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,15,20,17,38,40,43,45,73,61,51,65,59,63,75,125,145,147,135,155,153,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"13":{"region_id":"13","parent_id":"1","region_name":"\u6e56\u5317\u7701","show_name":"\u6e56\u5317\u7701","region_type":"1","area_code":"Hubeisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"420000","sort":"17","operater_time":"1450942757","is_deleted":"0","created_time":"0","modified_time":"2015-12-24 15:39:17","city_code":"0","sale_regions":"4,5,6,7,10,15,16,20,17,18,40,43,45,73,61,51,65,59,63,75,77,91,125,145,147,135,155,153,163,165,167,173,137,1,36,177,181,187,67,175,87","is_last":"0"},"14":{"region_id":"14","parent_id":"1","region_name":"\u6e56\u5357\u7701","show_name":"\u6e56\u5357\u7701","region_type":"1","area_code":"Hunansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"430000","sort":"18","operater_time":"1450941820","is_deleted":"0","created_time":"0","modified_time":"2015-12-24 15:23:40","city_code":"0","sale_regions":"3,2,6,7,10,15,16,20,18,30,40,45,73,61,51,65,59,63,75,77,125,129,145,147,135,155,153,163,165,167,173,137,1,36,181,187,67,175,87","is_last":"0"},"30":{"region_id":"30","parent_id":"1","region_name":"\u4e91\u5357\u7701","show_name":"\u4e91\u5357\u7701","region_type":"1","area_code":"Yunnansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"530000","sort":"19","operater_time":"1389868328","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"16,20,17,38,40,43,45,73,61,51,65,59,63,75,145,147,135,155,153,163,165,167,173,1,36,181,187,67,175,87","is_last":"0"},"9":{"region_id":"9","parent_id":"1","region_name":"\u6d77\u5357\u7701","show_name":"\u6d77\u5357\u7701","region_type":"1","area_code":"Hainansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"460000","sort":"20","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,14,16,18,40,45,73,61,51,65,63,75,125,147,135,155,153,161,163,173,183,187,67,175,87","is_last":"0"},"24":{"region_id":"24","parent_id":"1","region_name":"\u9655\u897f\u7701","show_name":"\u9655\u897f\u7701","region_type":"1","area_code":"Shanxisheng3","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"610000","sort":"21","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"4,5,6,7,15,16,20,17,18,30,38,40,43,45,73,51,65,59,63,75,125,145,147,135,155,153,163,165,167,173,137,1,36,177,181,183,187,67,175,87","is_last":"0"},"26":{"region_id":"26","parent_id":"1","region_name":"\u56db\u5ddd\u7701","show_name":"\u56db\u5ddd\u7701","region_type":"1","area_code":"Sichuansheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"510000","sort":"22","operater_time":"1389867804","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"4,5,6,7,15,16,20,22,26,28,17,18,30,38,40,43,45,73,61,51,65,59,63,75,89,125,145,147,135,155,153,163,165,167,173,137,1,36,181,183,187,67,175,87","is_last":"0"},"3":{"region_id":"3","parent_id":"1","region_name":"\u5b89\u5fbd\u7701","show_name":"\u5b89\u5fbd\u7701","region_type":"1","area_code":"Anhuisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"340000","sort":"23","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"3,2,4,5,6,7,10,15,16,22,26,28,17,18,30,40,45,73,61,51,65,59,55,83,63,75,91,121,125,129,145,147,135,155,153,159,163,165,167,173,137,1,36,177,181,131,187,189,67,175,87","is_last":"0"},"8":{"region_id":"8","parent_id":"1","region_name":"\u8d35\u5dde\u7701","show_name":"\u8d35\u5dde\u7701","region_type":"1","area_code":"Guizhousheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"520000","sort":"24","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,16,40,43,45,73,51,65,59,63,75,125,145,147,135,155,153,165,167,173,137,181,187,67,175,87","is_last":"0"},"5":{"region_id":"5","parent_id":"1","region_name":"\u7518\u8083\u7701","show_name":"\u7518\u8083\u7701","region_type":"1","area_code":"Gansusheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"620000","sort":"25","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"20,40,43,45,73,51,65,59,63,75,125,145,147,135,155,153,163,165,173,137,181,187,67,175,87","is_last":"0"},"21":{"region_id":"21","parent_id":"1","region_name":"\u9752\u6d77\u7701","show_name":"\u9752\u6d77\u7701","region_type":"1","area_code":"Qinghaisheng","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"630000","sort":"26","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"15,40,73,51,65,63,75,145,147,135,155,153,163,165,173,137,181,67,175,87","is_last":"0"},"7":{"region_id":"7","parent_id":"1","region_name":"\u5e7f\u897f","show_name":"\u5e7f\u897f","region_type":"1","area_code":"Guangxizhuangzuzizhiqu","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"450000","sort":"27","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,16,18,40,43,45,73,51,65,59,71,63,75,91,125,145,147,135,155,153,161,163,165,167,173,137,1,177,183,187,185,67,175,87","is_last":"0"},"19":{"region_id":"19","parent_id":"1","region_name":"\u5185\u8499\u53e4","show_name":"\u5185\u8499\u53e4","region_type":"1","area_code":"Neimengguzizhiqu","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"150000","sort":"28","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2016-06-06 18:42:55","city_code":"0","sale_regions":"15,22,38,40,43,45,73,51,65,59,63,75,145,147,135,155,153,165,173,137,67,175,87","is_last":"0"},"20":{"region_id":"20","parent_id":"1","region_name":"\u5b81\u590f","show_name":"\u5b81\u590f","region_type":"1","area_code":"Ningxiahuizuzizhiqu","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"640000","sort":"29","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"7,20,40,43,45,73,51,65,59,63,75,85,125,145,147,135,155,153,163,165,173,181,67,175,87","is_last":"0"},"29":{"region_id":"29","parent_id":"1","region_name":"\u65b0\u7586","show_name":"\u65b0\u7586","region_type":"1","area_code":"Xinjiangweiwuerzizhiqu","sfairline":"1111","sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"1","other_areacode":"010ZZ","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"650000","sort":"30","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"73,51,65,63,75,147,155,153,165,173,67,175","is_last":"0"},"28":{"region_id":"28","parent_id":"1","region_name":"\u897f\u85cf","show_name":"\u897f\u85cf","region_type":"1","area_code":"Xizangzizhiqu","sfairline":0,"sfshipping":{"1":0,"2":0,"3":0,"46":0,"47":0,"49":0,"51":0,"53":0,"55":0,"57":0,"59":0,"61":0,"63":0,"65":0,"67":0,"73":0,"91":0,"93":0},"municipality":"0","status":"1","is_complement":"0","other_areacode":"","is_sfv":"0","ship_time":"2-5\u5929","sfv_region_id":"540000","sort":"31","operater_time":"0","is_deleted":"0","created_time":"0","modified_time":"2015-06-01 14:02:33","city_code":"0","sale_regions":"51,155,67","is_last":"0"}}];

                        var _scDom = document.createElement('script'),
                            _scripts = document.getElementsByTagName('script'),
                            _script = _scripts[_scripts.length - 1];
                        _scDom.type = 'text/javascript';
                        _scDom.src = 'http://i.sfimg.cn/html/js/regionEvent_sf.js?v=20180424';
                        _script.parentNode.insertBefore(_scDom, _script);
                    </script>	    </div>
                <div class="rowFilter">
                    <form action="" method="POST" id="formArea" name="formArea" >
                        <span><input type="checkbox" checked name="isstock" id="isstock" value="1">仅显示有货</span>
                        <span><input type="checkbox" name="isreach" id="isreach" value="1">仅显示当前区域可配送</span>
                        <span><input type="checkbox" name="isself" id="isself" value="1">仅显示优选自营商品</span>
                        <span><input type="checkbox" name="isOversea" id="isOversea" value="1">优选国际</span>
                        <span><input type="checkbox" name="isActivity" id="isActivity" value="1">有促销</span>
                    </form>
                </div>

                <span class="clear"></span>
            </div>
        </div>

        <a name="prolist" id="prolist"></a>
        <div class="p-list">
            <ul class="list-all">
                <input type="hidden" name="isPresentCard_274933" id="isPresentCard_274933" value="0">
                <li data="1_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_274933" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-1-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/275/4100274933.html" title="" target="_blank">
                        <img id="productImg_274933" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/4100274933/210x210_4100274933_0_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="274933">
						<span id="priceCon_274933">
				        		<span class="p-now">￥<strong>12.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_274933" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_274933"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_274933">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-1" class="trackref presaleSign_274933" href="http://www.sfbest.com/html/products/275/4100274933.html" title="小猪佩奇 奇趣冒险蛋奶片糖 8g" target="_blank"><font color="red">小猪佩奇</font> 奇趣冒险蛋奶片糖 8g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_274933">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-1" class="trackref" href="http://www.sfbest.com/html/products/275/4100274933.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_274933">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/275/4100274933.html" target="_blank">已有20877人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_274933">
                            <span><a class="p-reduce disable" id="p-reduce274933" onclick="reduceNum(274933);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_274933" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add274933" onclick="addNum(274933);">+</a></span>
                        </div>
                        <div id="productStockStatus_274933" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/4100274933/210x210_4100274933_0_1_1.jpg" pid="274933">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_264201" id="isPresentCard_264201" value="0">                <li data="2_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_264201" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-2-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/265/1600264201.html" title="" target="_blank">
                        <img id="productImg_264201" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2018/1600264201/210x210_1600264201_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="264201">
						<span id="priceCon_264201">
				        		<span class="p-now">￥<strong>12.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_264201" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_264201"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_264201">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-2" class="trackref presaleSign_264201" href="http://www.sfbest.com/html/products/265/1600264201.html" title="小猪佩奇 手指饼干（牛奶味） 105g" target="_blank"><font color="red">小猪佩奇</font> 手指饼干（牛奶味） 105g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_264201">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-2" class="trackref" href="http://www.sfbest.com/html/products/265/1600264201.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_264201">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/265/1600264201.html" target="_blank">已有48338人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_264201">
                            <span><a class="p-reduce disable" id="p-reduce264201" onclick="reduceNum(264201);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_264201" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add264201" onclick="addNum(264201);">+</a></span>
                        </div>
                        <div id="productStockStatus_264201" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2018/1600264201/210x210_1600264201_1_1.jpg" pid="264201">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_264211" id="isPresentCard_264211" value="0">                <li data="3_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_264211" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-3-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/265/1600264211.html" title="" target="_blank">
                        <img id="productImg_264211" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2018/1600264211/210x210_1600264211_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="264211">
						<span id="priceCon_264211">
				        		<span class="p-now">￥<strong>12.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_264211" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_264211"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_264211">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-3" class="trackref presaleSign_264211" href="http://www.sfbest.com/html/products/265/1600264211.html" title="小猪佩奇 蔬菜饼干 100g" target="_blank"><font color="red">小猪佩奇</font> 蔬菜饼干 100g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_264211">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-3" class="trackref" href="http://www.sfbest.com/html/products/265/1600264211.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_264211">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/265/1600264211.html" target="_blank">已有52169人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_264211">
                            <span><a class="p-reduce disable" id="p-reduce264211" onclick="reduceNum(264211);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_264211" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add264211" onclick="addNum(264211);">+</a></span>
                        </div>
                        <div id="productStockStatus_264211" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2018/1600264211/210x210_1600264211_1_1.jpg" pid="264211">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_265259" id="isPresentCard_265259" value="0">                <li data="4_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_265259" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-4-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/266/1600265259.html" title="" target="_blank">
                        <img id="productImg_265259" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265259/210x210_1600265259_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="265259">
						<span id="priceCon_265259">
				        		<span class="p-now">￥<strong>12.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_265259" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_265259"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_265259">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-4" class="trackref presaleSign_265259" href="http://www.sfbest.com/html/products/266/1600265259.html" title="小猪佩奇 蔓越莓曲奇 120g" target="_blank"><font color="red">小猪佩奇</font> 蔓越莓曲奇 120g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_265259">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-4" class="trackref" href="http://www.sfbest.com/html/products/266/1600265259.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_265259">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/266/1600265259.html" target="_blank">已有23530人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_265259">
                            <span><a class="p-reduce disable" id="p-reduce265259" onclick="reduceNum(265259);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_265259" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add265259" onclick="addNum(265259);">+</a></span>
                        </div>
                        <div id="productStockStatus_265259" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265259/210x210_1600265259_1_1.jpg" pid="265259">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_265257" id="isPresentCard_265257" value="0">                <li data="5_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_265257" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-5-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/266/1600265257.html" title="" target="_blank">
                        <img id="productImg_265257" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265257/210x210_1600265257_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="265257">
						<span id="priceCon_265257">
				        		<span class="p-now">￥<strong>12.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_265257" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_265257"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_265257">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-5" class="trackref presaleSign_265257" href="http://www.sfbest.com/html/products/266/1600265257.html" title="小猪佩奇 牛奶曲奇 120g" target="_blank"><font color="red">小猪佩奇</font> 牛奶曲奇 120g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_265257">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-5" class="trackref" href="http://www.sfbest.com/html/products/266/1600265257.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_265257">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/266/1600265257.html" target="_blank">已有35343人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_265257">
                            <span><a class="p-reduce disable" id="p-reduce265257" onclick="reduceNum(265257);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_265257" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add265257" onclick="addNum(265257);">+</a></span>
                        </div>
                        <div id="productStockStatus_265257" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265257/210x210_1600265257_1_1.jpg" pid="265257">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_281861" id="isPresentCard_281861" value="0">                <li data="6_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_281861" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-6-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/282/4000281861.html" title="" target="_blank">
                        <img id="productImg_281861" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2018/4000281861/210x210_4000281861_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="281861">
						<span id="priceCon_281861">
				        		<span class="p-now">￥<strong>19.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_281861" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_281861"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_281861">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-6" class="trackref presaleSign_281861" href="http://www.sfbest.com/html/products/282/4000281861.html" title="小猪佩奇 蔓越莓干 120g" target="_blank"><font color="red">小猪佩奇</font> 蔓越莓干 120g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_281861">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-6" class="trackref" href="http://www.sfbest.com/html/products/282/4000281861.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_281861">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/282/4000281861.html" target="_blank">已有0人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_281861">
                            <span><a class="p-reduce disable" id="p-reduce281861" onclick="reduceNum(281861);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_281861" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add281861" onclick="addNum(281861);">+</a></span>
                        </div>
                        <div id="productStockStatus_281861" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2018/4000281861/210x210_4000281861_1_1.jpg" pid="281861">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_279193" id="isPresentCard_279193" value="0">                <li data="7_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_279193" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-7-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/280/4200279193.html" title="" target="_blank">
                        <img id="productImg_279193" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/4200279193/210x210_4200279193_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="279193">
						<span id="priceCon_279193">
				        		<span class="p-now">￥<strong>29.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_279193" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_279193"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_279193">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-7" class="trackref presaleSign_279193" href="http://www.sfbest.com/html/products/280/4200279193.html" title="小猪佩奇 两小无猜 408g【配礼品袋】" target="_blank"><font color="red">小猪佩奇</font> 两小无猜 408g【配礼品袋】</a>
                    </div>
                    <div class="title-b" id="titleAdwords_279193">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-7" class="trackref" href="http://www.sfbest.com/html/products/280/4200279193.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_279193">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/280/4200279193.html" target="_blank">已有9094人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_279193">
                            <span><a class="p-reduce disable" id="p-reduce279193" onclick="reduceNum(279193);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_279193" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add279193" onclick="addNum(279193);">+</a></span>
                        </div>
                        <div id="productStockStatus_279193" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/4200279193/210x210_4200279193_1_1.jpg" pid="279193">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_265263" id="isPresentCard_265263" value="0">                <li data="8_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_265263" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-8-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/266/1600265263.html" title="" target="_blank">
                        <img id="productImg_265263" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265263/210x210_1600265263_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="265263">
						<span id="priceCon_265263">
				        		<span class="p-now">￥<strong>13.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_265263" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_265263"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_265263">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-8" class="trackref presaleSign_265263" href="http://www.sfbest.com/html/products/266/1600265263.html" title="小猪佩奇 薏米饼干 100g" target="_blank"><font color="red">小猪佩奇</font> 薏米饼干 100g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_265263">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-8" class="trackref" href="http://www.sfbest.com/html/products/266/1600265263.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_265263">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/266/1600265263.html" target="_blank">已有388人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_265263">
                            <span><a class="p-reduce disable" id="p-reduce265263" onclick="reduceNum(265263);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_265263" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add265263" onclick="addNum(265263);">+</a></span>
                        </div>
                        <div id="productStockStatus_265263" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265263/210x210_1600265263_1_1.jpg" pid="265263">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_278175" id="isPresentCard_278175" value="0">                <li data="9_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_278175" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-9-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/279/4100278175.html" title="" target="_blank">
                        <img id="productImg_278175" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/4100278175/210x210_4100278175_0_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="278175">
						<span id="priceCon_278175">
				        		<span class="p-now">￥<strong>29.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_278175" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_278175"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_278175">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-9" class="trackref presaleSign_278175" href="http://www.sfbest.com/html/products/279/4100278175.html" title="亿智 小猪佩奇VC软糖储钱罐（水蜜桃味） 36g" target="_blank">亿智 <font color="red">小猪佩奇</font>VC软糖储钱罐（水蜜桃味） 36g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_278175">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-9" class="trackref" href="http://www.sfbest.com/html/products/279/4100278175.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_278175">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/279/4100278175.html" target="_blank">已有309人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_278175">
                            <span><a class="p-reduce disable" id="p-reduce278175" onclick="reduceNum(278175);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_278175" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add278175" onclick="addNum(278175);">+</a></span>
                        </div>
                        <div id="productStockStatus_278175" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/4100278175/210x210_4100278175_0_1.jpg" pid="278175">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_265261" id="isPresentCard_265261" value="0">                <li data="10_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_265261" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-10-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/266/1600265261.html" title="" target="_blank">
                        <img id="productImg_265261" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265261/210x210_1600265261_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="265261">
						<span id="priceCon_265261">
				        		<span class="p-now">￥<strong>13.8</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_265261" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_265261"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_265261">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-10" class="trackref presaleSign_265261" href="http://www.sfbest.com/html/products/266/1600265261.html" title="小猪佩奇 蔬菜饼干 120g" target="_blank"><font color="red">小猪佩奇</font> 蔬菜饼干 120g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_265261">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-10" class="trackref" href="http://www.sfbest.com/html/products/266/1600265261.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_265261">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/266/1600265261.html" target="_blank">已有484人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_265261">
                            <span><a class="p-reduce disable" id="p-reduce265261" onclick="reduceNum(265261);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_265261" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add265261" onclick="addNum(265261);">+</a></span>
                        </div>
                        <div id="productStockStatus_265261" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265261/210x210_1600265261_1_1.jpg" pid="265261">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_278299" id="isPresentCard_278299" value="0">                <li data="11_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_278299" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-11-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/279/4100278299.html" title="" target="_blank">
                        <img id="productImg_278299" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/4100278299/210x210_4100278299_0_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="278299">
						<span id="priceCon_278299">
				        		<span class="p-now">￥<strong>9.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_278299" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_278299"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_278299">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-11" class="trackref presaleSign_278299" href="http://www.sfbest.com/html/products/279/4100278299.html" title="亿智 小猪佩奇惊奇铁蛋果汁软糖 10g" target="_blank">亿智 <font color="red">小猪佩奇</font>惊奇铁蛋果汁软糖 10g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_278299">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-11" class="trackref" href="http://www.sfbest.com/html/products/279/4100278299.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_278299">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/279/4100278299.html" target="_blank">已有65人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_278299">
                            <span><a class="p-reduce disable" id="p-reduce278299" onclick="reduceNum(278299);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_278299" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add278299" onclick="addNum(278299);">+</a></span>
                        </div>
                        <div id="productStockStatus_278299" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/4100278299/210x210_4100278299_0_1.jpg" pid="278299">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_278173" id="isPresentCard_278173" value="0">                <li data="12_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_278173" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-12-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/279/4100278173.html" title="" target="_blank">
                        <img id="productImg_278173" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/4100278173/210x210_4100278173_0_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="278173">
						<span id="priceCon_278173">
				        		<span class="p-now">￥<strong>15.5</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_278173" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_278173"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_278173">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-12" class="trackref presaleSign_278173" href="http://www.sfbest.com/html/products/279/4100278173.html" title="亿智 小猪佩奇VC软糖小水桶（草莓味） 36g" target="_blank">亿智 <font color="red">小猪佩奇</font>VC软糖小水桶（草莓味） 36g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_278173">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-12" class="trackref" href="http://www.sfbest.com/html/products/279/4100278173.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_278173">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/279/4100278173.html" target="_blank">已有175人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_278173">
                            <span><a class="p-reduce disable" id="p-reduce278173" onclick="reduceNum(278173);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_278173" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add278173" onclick="addNum(278173);">+</a></span>
                        </div>
                        <div id="productStockStatus_278173" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/4100278173/210x210_4100278173_0_1.jpg" pid="278173">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_281863" id="isPresentCard_281863" value="0">                <li data="13_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_281863" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-13-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/282/4000281863.html" title="" target="_blank">
                        <img id="productImg_281863" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2018/4000281863/210x210_4000281863_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="281863">
						<span id="priceCon_281863">
				        		<span class="p-now">￥<strong>19.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_281863" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_281863"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_281863">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-13" class="trackref presaleSign_281863" href="http://www.sfbest.com/html/products/282/4000281863.html" title="小猪佩奇 提子干 120g" target="_blank"><font color="red">小猪佩奇</font> 提子干 120g</a>
                    </div>
                    <div class="title-b" id="titleAdwords_281863">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-13" class="trackref" href="http://www.sfbest.com/html/products/282/4000281863.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_281863">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/282/4000281863.html" target="_blank">已有0人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_281863">
                            <span><a class="p-reduce disable" id="p-reduce281863" onclick="reduceNum(281863);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_281863" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add281863" onclick="addNum(281863);">+</a></span>
                        </div>
                        <div id="productStockStatus_281863" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2018/4000281863/210x210_4000281863_1_1.jpg" pid="281863">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_285373" id="isPresentCard_285373" value="0">                <li data="14_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_285373" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-14-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/286/4200285373.html" title="" target="_blank">
                        <img id="productImg_285373" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265261/210x210_1600265261_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="285373">
						<span id="priceCon_285373">
				        		<span class="p-now">￥<strong>49.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_285373" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_285373"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_285373">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-14" class="trackref presaleSign_285373" href="http://www.sfbest.com/html/products/286/4200285373.html" title="小猪佩奇 蔬菜饼干 120g*4" target="_blank"><font color="red">小猪佩奇</font> 蔬菜饼干 120g*4</a>
                    </div>
                    <div class="title-b" id="titleAdwords_285373">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-14" class="trackref" href="http://www.sfbest.com/html/products/286/4200285373.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_285373">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/286/4200285373.html" target="_blank">已有484人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_285373">
                            <span><a class="p-reduce disable" id="p-reduce285373" onclick="reduceNum(285373);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_285373" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add285373" onclick="addNum(285373);">+</a></span>
                        </div>
                        <div id="productStockStatus_285373" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265261/210x210_1600265261_1_1.jpg" pid="285373">加入购物车</a></div>
                        </div>
                    </div>
            </li>
                <input type="hidden" name="isPresentCard_285371" id="isPresentCard_285371" value="0">                <li data="15_1">
                <div class="l-wrap">
                    <span style="display:none;" id="product_icon_285371" class="icon-cx"><img src=""/></span>                    	<div class="pic">
                    <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-15-0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305-0" class="trackref" href="http://www.sfbest.com/html/products/286/4200285371.html" title="" target="_blank">
                        <img id="productImg_285371" src="picture/loading180.gif" class='lazy' data="http://p02.sfimg.cn/2017/1600265263/210x210_1600265263_1_1.jpg" onerror="this.src='http://i.sfimg.cn/html/images/150pic.jpg'">
                    </a>
                </div>
                    <div class="price" goods="285371">
						<span id="priceCon_285371">
				        		<span class="p-now">￥<strong>49.9</strong></span>
				        		<span class="p-nor"></span>
				        	</span><span class="yx-price" id="mpricek_285371" style="display:none;">会员价
                        		<span class="p-now" style="float:none;">￥<strong id="mpricev_285371"></strong></span>
                        	</span>			            </div>

                    <div class="title-a" id="titleName_285371">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-15" class="trackref presaleSign_285371" href="http://www.sfbest.com/html/products/286/4200285371.html" title="小猪佩奇 薏米饼干 100g*4" target="_blank"><font color="red">小猪佩奇</font> 薏米饼干 100g*4</a>
                    </div>
                    <div class="title-b" id="titleAdwords_285371">
                        <a name="sfbest_s_小猪佩奇_itemlist_0-default-1-15" class="trackref" href="http://www.sfbest.com/html/products/286/4200285371.html" target="_blank"></a>
                    </div>
                    <!-- 活动信息 -->
                    <div class="clearfix p-hd" id="priceCon_act_285371">
                        <span class="active" style="visibility: hidden;">限时抢</span>
                    </div>	              		<div class="comment">
                    <a href="http://www.sfbest.com/html/products/286/4200285371.html" target="_blank">已有388人评价</a>
                    <div class="owner_shop_list">自营</div>                            				            				        </div>
                    <div class="action">
                        <div class="p-num" id="p-num_285371">
                            <span><a class="p-reduce disable" id="p-reduce285371" onclick="reduceNum(285371);">-</a></span>
                            <span><input type="text" d="99" x="1" id="number_285371" class="numberInp" value="1"></span>
                            <span><a class="p-add" id="p-add285371" onclick="addNum(285371);">+</a></span>
                        </div>
                        <div id="productStockStatus_285371" siteId="">
                            <div class="p-btn"><a href="javascript:void(0)" belong="0" data_url="http://p02.sfimg.cn/2017/1600265263/210x210_1600265263_1_1.jpg" pid="285371">加入购物车</a></div>
                        </div>
                    </div>
            </li>
            </ul>
            <span class="clear"></span>
        </div>

        <div class="pages">
        </div>
    </div>

    <div class="left-box">
        <div class="catlist" id="cateall">
            <div class="ct"><h2>在结果中筛选</h2></div>
            <div class="cm">
                <div class="catitem"><h3><b></b><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7411" class="">休闲零食<span>（2）</span></a></h3><ul><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7473">蜜饯/干果（2）</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7811">&nbsp;&nbsp;&nbsp;&nbsp;蔓越莓（1）</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7801">&nbsp;&nbsp;&nbsp;&nbsp;其他蜜饯（1）</a></li></ul></div><div class="catitem"><h3><b></b><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7413" class="">糖果/巧克力<span>（4）</span></a></h3><ul><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7483">糖果（4）</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7869">&nbsp;&nbsp;&nbsp;&nbsp;软糖（3）</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7863">&nbsp;&nbsp;&nbsp;&nbsp;奶糖（1）</a></li></ul></div><div class="catitem"><h3><b></b><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7415" class="">饼干糕点<span>（9）</span></a></h3><ul><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7485">饼干（9）</a></li><li><a href="/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87&categoryId=7875">&nbsp;&nbsp;&nbsp;&nbsp;儿童饼干（9）</a></li></ul></div>       </div>
        </div>


    </div>


</div>


<div class="side-wrap">
    <div class="side-panel">
        <div class="side-c "><a href="/paidMember" target="_blank" class="side_v" rel="nofollow"></a></div>
        <div class="side-c" id="side_cart"><a href="http://cart.sfbest.com" target="_blank" class="s-cart" rel="nofollow"></a><span class="s-cart-num"></span></div>
        <div class="side-c" id="side_guang"><a href="javascript:void(0);" class="s-guang"></a></div>
        <div class="side-c" id="side_app"><a href="http://app.sfbest.com/" target="_blank" class="s-app" rel="nofollow">下载APP</a></div>
        <div class="side-c bToTop"><a href="javascript:void(0);" class="s-top"></a></div>
    </div>
    <div class="cart-wrap" style="display:none;">
        <div class="cart-shopping">
            <div class="cart-list">
                <div class="cart-num"><span class="cart-num-icon">您有<span id="add-num">1</span>件商品成功加入购物车！</span></div>
                <div id="list_cart" class="floatcar">购物车内暂无商品，赶紧抢购吧！</div>
                <div class="cart-arr"></div>
            </div>
        </div>
    </div>
    <div class="guang" style="display:none;" id="history_con">
        <div class="history">
            <div class="his-list" id="history_con">
                <div class="cart-num">您的浏览记录</div>
                <div class="floatcar">
                    <ul><li>暂无浏览记录</li></ul>
                </div>
            </div>
        </div>
    </div>
    <div class="appInfo" style="display:none;">
        <div class="appDown">
            <div class="appItem">
                <div class="sf-client">
                    <span class="client-img"></span>
                    <i></i>
                    <div class="client-txt">
                        <em>扫描我，即可下载</em>
                        <strong>顺丰优选客户端</strong>
                    </div>
                </div>
                <div class="client-promo"><a href="http://www.sfbest.com/html/activity/1370577634.html" target="_blank" rel="nofollow">先摇券 后买单</a></div>
                <div class="cart-arr"></div>
            </div>
        </div>
    </div>
</div>
<div class="listpic-mini" style="display:none;"></div>
<style>
    #float{width:0;height:0;background:0 none;border-bottom:0 none;overflow:hidden;line-height:0;font-size:0;}
    .backToTop{width:0;height:0;background:0 none;border-bottom:0 none;overflow:hidden;line-height:0;font-size:0;}
</style>
<script>
    var SEARCHID = '0038b92d_1681_448f_9314_e589b89c0ae0_5342_4305';
    var SMART_SORT_FLAG = 0;

    $("#float").addClass("float").attr("id","");
    $('<div id="float"></div>').appendTo("body");
    $(document).ready(function() {
        $("#isstock").click(function(){
            submitArea();
        });
        $("#isreach").click(function(){
            submitArea();
        });
        $("#isself").click(function(){
            submitArea();
        });
        $("#isOversea").click(function(){
            submitArea();
        });
        $("#isActivity").click(function(){
            submitArea();
        });
        ua = window.navigator.userAgent;
        var tnumber = ua.indexOf('iPad')>=1?400:200;
        $('img.lazy').lazyload({
            placeholder : "http://i.sfimg.cn/html/images/loading180.gif",
            threshold : tnumber
        });
        getHistory();
        getArticleNum("小猪佩奇");

        $(".comment").each(function(){
            var
                self = $(this),
                a = $(this).find('a'),
                comments = $(".comment"),
                index = (comments.index(self) * 1) + 1,
                ref = '?trackref=sfbest_s_小猪佩奇_itemlist_0-default-1-' + index + '#comment';
            href = a.attr('href');
            a.attr('href', href + ref);
        });
    });

    //回写关键词
    $('#keyword').val("小猪佩奇");

    //根据ISSTOCK ISREACH跳转(AND选地区时)
    function submitArea(){
        if($(":checkbox[name='isstock']").attr('checked')==true){
            isstock = 1;
        }else{
            isstock = 0;
        }
        if($(":checkbox[name='isreach']").attr('checked')==true){
            isreach = 1;
        }else{
            isreach = 0;
        }
        if($(":checked[name='isself']").attr('checked')==true){
            isself = 1;
        }else{
            isself = 0;
        }
        if($(":checked[name='isOversea']").attr('checked')==true){
            isOversea = 1;
        }else{
            isOversea = 0;
        }
        if($(":checked[name='isActivity']").attr('checked')==true){
            isActivity = 1;
        }else{
            isActivity = 0;
        }
        var exp = /modHt/ig;
        var ret = exp.test(location.href);
        var modHt = '';
        if(ret == true){
            modHt = '&modHt=1';
        }
        url = '/productlist/search/?keyword=%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87';
        window.location.href = url + "&isstock="+isstock+"&isreach="+isreach+"&isself="+isself+"&isOversea="+isOversea+modHt+'&isActivity='+isActivity;
    }

    $(document).ready(function(){
        var url = window.document.location.href,
            prolist = url.split('#').pop();
        if (prolist == 'prolist') {
            var prolistTop = $("#prolist-id").offset().top;
            $("body,html").animate({ scrollTop : prolistTop - 70}, 800);
        }
        getAllPrices('','',1);
        //显示标签
        showIcon();
    });

    function showCoudanMiniCart() {
        var aid = $('#activityId').val();
        $.ajax({
            url: cartHostUrl+'/cartapi/getActivetyMergeMessage',
            type: 'GET',
            dataType: "jsonp",
            jsonp: "callback",
            data :{
                aid : aid,
                belong : 0,
                t : Math.random()
            },
            success : function(data) {
                if (data.code == 0 ) {
                    showCartbar(data.data);
                } else {
                    jAlert(data.data.message);
                    return;
                }
            }
        });
    }

    function getAllPrices(p_ids,e_ids,p_nums){
        if(''==p_ids){
            var p_ids = '';
            var e_ids = '';
            $(".price").each(
                function (){
                    var goodsId = $(this).attr('goods');
                    if(p_ids){
                        p_ids = p_ids+','+goodsId;
                    }else{
                        p_ids = goodsId;
                    }
                }
            );
            p_ids = p_ids.replace(/,undefined/g,'');
            e_ids = p_ids;
        }
        if(p_ids){
            $.post("/product/getAllPrice/actTag/1/",{pids:p_ids,eids:e_ids,pnums:p_nums},function(data){
                var str=eval("("+data+")");
                for(var i=0;i<str.length;i++){
                    var e_id = str[i]['eid'];
                    var productImg= $("#productImg_"+str[i].pid).attr('data');
                    var goodsName = $(".presaleSign_"+str[i].pid).attr('title');
                    $(".presaleSign_"+str[i].pid).attr('title',goodsName);
                    var goodsUrl = $(".presaleSign_"+str[i].pid).attr('href');
                    var member_rank = str[i].member_rank || '';
                    var member_rank_flag = '#'+member_rank;
                    if(typeof(str[i].presell) !== 'undefined'){
                        $("#priceCon_"+e_id+" strong").html(str[i].presell.price);
                    }else{
                        if(str[i].price != undefined && member_rank_flag.indexOf("10") != -1){
                            $("#priceCon_"+e_id+" strong").html(str[i]['price']);
                        }else{
                            $("#priceCon_"+e_id+" strong").html(str[i].sfprice);
                        }
                        if(str[i].mprice != undefined && str[i].mprice > 0 && str[i].mprice < str[i].price && member_rank_flag.indexOf("20") != -1){
                            $("#mpricev_"+e_id).html(str[i].mprice);
                            $("#mpricek_"+e_id).show();
                        }
                    }

                    if(str[i]['tag_img']){
                        $("#product_icon_"+e_id+" img").attr('src',str[i]['tag_img']);
                        $("#product_icon_"+e_id).show();
                    }else{
                        $("#product_icon_"+e_id).hide();
                    }
                    if(str[i]['actTag']){
                        $("#priceCon_act_"+e_id+" .active").html(str[i]['actTag']);
                        $("#priceCon_act_"+e_id+" .active").css('visibility','visible');
                    }else{
                        $("#priceCon_act_"+e_id+" .active").css('visibility','hidden');
                    }
                    if(typeof(str[i]['min']) !== 'undefined'){
                        $('#number_'+e_id).attr('x',str[i]['min']);
                    }
                    if(typeof(str[i]['max']) !== 'undefined'){
                        $('#number_'+e_id).attr('d',str[i]['max']);
                    }
                    checkOneProMaxMinBuy(str[i].pid);//重新校正最大最小购买数
                    var stockStatusHtml = '';
                    var isPresentCard=$("#isPresentCard_"+str[i].pid).val();
                    //周期配
                    if(str[i].is_milk_ship == '1'){
                        $("#p-reduce"+str[i].pid).addClass("disable").attr("onclick","void(0);");
                        $("#p-add"+str[i].pid).addClass("disable").attr("onclick","void(0);");
                        $("#number_"+str[i].pid).val(str[i].min).attr("disabled","disabled");
                        if(str[i].stockStatus== 0){
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">已下架</a></div>';
                        }else if(str[i].stockStatus==6){
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">无法送达</a></div>';
                        }else if(str[i].stockStatus== 1){
                            if(str[i].user_id > 0){
                                $("#p-num_"+str[i].pid).show();
                                stockStatusHtml = '<div class="p-btn1"><a href="javascript:void(0);" onclick="buyNow('+str[i].pid+','+str[i].min+')">立即购买</a></div>';
                            }else{
                                $("#p-num_"+str[i].pid).show();
                                stockStatusHtml = '<div class="p-btn1"><a href="javascript:void(0);" onclick="loginWin()">立即购买</a></div>';
                            }
                        }else{
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">已结束</a></div>';
                        }
                    }else if(str[i]['sfshipping1'] || 3== str[i]['stockStatus']){
                        stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">无法送达</a></div>';
                    }else if(typeof(str[i].presell) !== 'undefined'){
                        if(str[i].presell.stateid > 1){
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">已售完</a></div><div class="p-btn1"><a href="'+goodsUrl+'" target="_blank">到货通知</a></div>';
                        }else{
                            $("#p-num_"+str[i].pid).show();
                            stockStatusHtml = '<div class="p-btn1"><a href="javascript:addPresale('+str[i].pid+');" >预约购买</a></div>';
                        }
                        //更换预售标识
                        $(".presaleSign_"+str[i].pid).attr('title',str[i].presell.sign+goodsName);
                        $(".presaleSign_"+str[i].pid).html("<font color='#ea5405'>"+str[i].presell.sign+"</font>"+goodsName);
                    }else{
                        if(str[i].stockStatus==1 || str[i].stockStatus==7) {
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">已售完</a></div><div class="p-btn1"><a href="'+goodsUrl+'" target="_blank">到货通知</a></div>';
                        }else if(str[i].stockStatus==6) {
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">已下架</a></div>';
                        }else if(str[i].stockStatus==3) {
                            stockStatusHtml = '<div class="p-btn2"><a href="javascript:void(0);">无法送达</a></div>';
                        }else{
                            //礼品卡
                            if(1==isPresentCard){
                                $("#p-num_"+str[i].pid).show();
                                stockStatusHtml =  '<div class="p-btn1"><a href="javascript:void(0)" onclick="window.location.href=\''+goodsUrl+'\';">立即购买</a></div>';
                            }else{
                                $("#p-num_"+str[i].pid).show();
                                stockStatusHtml = '<div class="p-btn"><a href="javascript:void(0)" belong="'+str[i].belong+'" data_url="'+productImg+'" pid="'+str[i].pid+'">加入购物车</a></div>';
                            }
                        }
                    }
                    $("#productStockStatus_"+str[i].pid).html(stockStatusHtml);
                    $("#productStockStatus_"+str[i].pid).attr('siteId',str[i].siteId);
                    //显示活动广告语
                    if(str[i].ad_words){
                        $("#titleName_"+str[i].pid).removeClass('title-c').addClass('title-a');
                        $("#titleAdwords_"+str[i].pid+" a").html(str[i].ad_words);
                        $("#titleAdwords_"+str[i].pid).show();
                    }
                }
            },"text");
        }
    }
    //图标
    function showIcon(){
        var exp = /\/(\d+)\.html/;
        var snstr = '';
        var map = '{';
        $(".pic a").each(function(){
            var arr = exp.exec($(this).attr("href"));
            snstr += arr[1]+",";
            var key = arr[1];
            var id = $(this).find("img").attr("id");
            map += '"'+key+'":"'+id+'",';
        });
        map = map.substr(0,map.length-1)+"}";
        map = eval("("+map+")");
        //是否显示标签
        var url = '/AjaxAds/ImgIcon';
        $.post(url,{'sn':snstr},function(ret){
            if(ret.code == 0){
                for(var i in ret.list){
                    var k = ret.list[i];
                    var oid = map[k];
                    if($("#"+oid).size()>0){
                        $("#"+oid).parent().before("<i></i>");
                    }
                }
            }
        },"json");
    }

</script>
<!--晶赞 start -->
<script type='text/javascript'>
    var zamplus_tag_params = {
        productId_list: '4100274933,1600264201,1600264211,1600265259,1600265257,4000281861,4200279193,1600265263,4100278175,1600265261',
        keyword: '小猪佩奇'
    };
</script>

<!--晶赞 end -->

<!-- 百度再营销页面代码 Start -->
<script>
    var _hmt = _hmt || [];
    var rtTag ={
        "data": {
            "ecom_search": {
                "word":"小猪佩奇",
                "p_brand":"小猪佩奇|亿智"
            }
        }
    };
    _hmt.push(['_setAccount', '53a0d71dba66835ff1aa907db99144d8']);
    _hmt.push(['_trackRTEvent', rtTag]);
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?53a0d71dba66835ff1aa907db99144d8";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

</script>
<!-- 百度再营销页面代码 Start -->
<!-- webtrekk代码 start-->
<script type="text/javascript" src="js/webtrekk_v4.min.js"></script>
<script type="text/javascript">
    var pageConfig = {
        linkTrack :"link",
        heatmap :"1"
    };
    var wt = new webtrekkV3(pageConfig);
    wt.contentId = "WEB:搜索结果页:小猪佩奇";
    wt.contentGroup = {
        1 :"WEB:搜索结果页",2 :"小猪佩奇",3 :"小猪佩奇"
    };
    wt.internalSearch = "小猪佩奇";
    wt.customParameter = {
        1 :"15", 2 :"有效搜索"
    };
    wt.sendinfo();
</script>
<noscript>
    <div><img src="picture/wt.pl" height="1"
              width="1" alt="" /></div></noscript>
<!-- webtrekk代码 end -->	<div class="clear1"></div>
<!----footerStart------>
<div id="footer">
    <div class="footer_zd1">
    </div>
    <div class="foot">
        <div class="pageFooter">
            <div class="middle">
                <ul>
                    <li class="kefu">9533858</li>
                    <li>周一至周日8:30-22:00</li>
                </ul>
            </div>
            <div class="right">
                <ul>
                    <li class="title">购物指南</li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/140/133.html" target="_blank">积分制度</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/140/132.html" target="_blank">会员介绍</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/140/128.html" target="_blank">购物流程</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/140/138.html" target="_blank">常见问题</a></li>
                </ul>
                <ul>
                    <li class="title">配送服务</li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/141/134.html" target="_blank">配送政策</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/141/136.html" target="_blank">开箱验货</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/141/137.html" target="_blank">配送运费</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/141/135.html" target="_blank">配送范围</a></li>
                </ul>
                <ul>
                    <li class="title">支付方式</li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/143/139.html" target="_blank">货到付款</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/143/141.html" target="_blank">在线支付</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/143/131.html" target="_blank">优选卡</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/143/142.html" target="_blank">发票制度</a></li>
                </ul>
                <ul>
                    <li class="title">售后服务</li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/144/145.html" target="_blank">退款说明</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/144/144.html" target="_blank">退换货流程</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/144/143.html" target="_blank">退换货政策</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/390/4643.html" target="_blank">隐私条款</a></li>
                </ul>
                <ul class="sj">
                    <li class="title">商家中心</li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/392/7232.html" target="_blank">商家规则</a></li>
                    <li><a rel="nofollow" href="http://help.sfbest.com/392/8659.html" target="_blank">食品安全规范</a></li>
                    <li><a rel="nofollow" href="/html/activity/1474966515.html" target="_blank">委托管理创业招募</a></li>
                </ul>
            </div>
            <div class="left">
                <ul class="f_ios">
                    <li><a target="_blank" href="http://app.sfbest.com">手机客户端</a></li>
                    <li><span></span></li>
                </ul>
                <ul class="f_wx">
                    <li>官方微信</li>
                    <li><span></span></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div id="float" style="display:none;"></div>
        <div class="bottom" style="position: relative;" >
            <!--可信网站图片LOGO安装开始-->
            <div class="bottom_kx" style ="position: static;padding: 0;">
                <span id="kx_verify"></span><script type="text/javascript">(function (){var _kxs = document.createElement('script');_kxs.id = 'kx_script';_kxs.async = true;_kxs.setAttribute('cid', 'kx_verify');_kxs.src = ('https:' == document.location.protocol ? 'https://ss.knet.cn' : 'http://rr.knet.cn')+'/static/js/icon3.js?sn=e14052911011349517cnbv000000&tp=icon3';_kxs.setAttribute('size', 3);var _kx = document.getElementById('kx_verify');_kx.parentNode.insertBefore(_kxs, _kx);})();</script>
            </div>
            <!--可信网站图片LOGO安装结束-->
            <!-- 诚信认证代码 start  20170710  -->
            <div class="bottom_cx" style="position: static;padding: 0;float:left;margin-left: 5px;">
                <a id='___szfw_logo___' href='https://credit.szfw.org/CX20170707035011220115.html' target='_blank'><img src='picture/cert.png' border='0' style="height:33px" /></a>
                <script type='text/javascript'>(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script>
            </div>
            <!-- 诚信认证代码 end -->
            <div class="bottom_sm" style ="position: static;padding: 0;margin-left: 5px;"><a id="_pingansec_bottomimagesmall_shiming" href="http://si.trustutn.org/info?sn=332160125020173365693&certType=1" target="_blank"><img src="picture/bottom_sm.png" style="height:33px"></a></div>	<div class="clear1"></div>
            <div id="float" style="display:none;"></div>	    <div class="siteinfo" style = "padding: 0;margin-left: 10px;position: absolute;top: 12px;left: 270px;">
            <p>
                <span><a rel="nofollow" href="http://www.sfbest.com/www/379/5109.html" target="_blank">关于我们</a></span>
                <span><a rel="nofollow" href="http://www.sfbest.com/www/380/5116.html" target="_blank">联系我们</a></span>
                <span><a rel="nofollow" href="http://www.sfbest.com/www/381/5117.html" target="_blank">招聘人才</a></span>
                <span><a href="http://www.sfbest.com/www/330/2705.html" target="_blank">友情链接</a></span>
                <span>Copyright© 顺丰优选 sfbest.com 版权所有</span></p>
            <p>
                <span>京公网安备11010502026831号</span>
                <span><a class="beian" rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn">京ICP证150325号</a></span>
                <span><a class="beian" rel="nofollow" target="_blank" href="http://www.sfbest.com/www/174/8765.html">食品经营许可证JY11113080533669号</a></span>
                <span><a class="beian" rel="nofollow" target="_blank" href="http://www.sfbest.com/www/174/461.html">企业营业执照</a></span>
            </p>
        </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        // 显示隐藏元素
        function thisdisplay(id,tag){
            if(document.getElementById(id)){
                var oBox=document.getElementById(id);
                var aDiv=oBox.getElementsByTagName(tag)
                oBox.onmouseover=function(){
                    aDiv[0].style.display="block"
                }
                oBox.onmouseout=function(){
                    aDiv[0].style.display="none"
                }
            }
        }
        thisdisplay('minisite','div');

        var $backToTopTxt = "", $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
            .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
                $("html, body").animate({ scrollTop: 0 }, 120);
            }), $backToTopFun = function() {
            var st = $(document).scrollTop(), winh = $(window).height();
            (st > 0)? $backToTopEle.show(): $backToTopEle.hide();
            // IE6下的定位
            if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
                $backToTopEle.css("top", st + winh - 37);
            }
        };
        if ($(".side-wrap").length > 0){
            $(".backToTop").hover(function(){$(this).addClass("backToTopHover")},function(){$(this).removeClass("backToTopHover")});
            $(".backToTop").addClass("backToTop_pos");
        }
        $(window).bind("scroll", $backToTopFun);
        $(function() { $backToTopFun(); });
    });

    function CNNIC_change(cnnic){
        var str= document.getElementById(cnnic).href;
        var str1 =str.substring(0,(str.length-6));
        str1+=CNNIC_RndNum(6);
        document.getElementById(cnnic).href=str1;
    }

    function CNNIC_RndNum(k){
        var rnd="";
        for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10);
        return rnd;
    }
</script>

<!-- 百度统计代码 Start -->
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F56b4bab8080250772f08703b41839413' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- 百度统计代码end -->

<!-- 易博DPS 基础代码 start -->
<script type="text/javascript">
    var _adwq = _adwq || [];
    _adwq.push(['_setAccount', 'dj5p1']);
    _adwq.push(['_setDomainName', '.sfbest.com']);
    _adwq.push(['_trackPageview']);

    (function() {
        var adw = document.createElement('script');
        adw.type = 'text/javascript';
        adw.async = true;
        adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(adw, s);
    })();
</script>
<!-- 易博DPS 基础代码 end -->

<!-- Emarsys电子商务追踪 -->
<script type="text/javascript" src="js/emstrack.js"></script>
<script type="text/javascript" language="JavaScript">
    $(document).ready(function(){
        emsSetEnv('suite');
        emsTracking(273131129,'sfbest.com');
    });
</script>

<script async="true" type="text/javascript" src="js/sa.js"></script>

<script type="text/javascript">
    /*百度定投*/
    (function (d) {
        window.bd_cpro_rtid="rj6YrHn";
        var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
        var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
    })(document);
</script>

<!-- ZYZ Code Start -->
<script type="text/javascript">
    var _zaq = _zaq || [];
    _zaq.push(['setTrackerUrl', 'http://tk.optaim.com/j']);
    _zaq.push(['setSiteId', 'sfbest']);
    _zaq.push(['trackPageView']);
    var _zyzs = document.getElementsByTagName('script')[0];
    var _s = document.createElement('script');
    _s.src = "http://images.sohu.com/optaim/tk2014.js";
    _s.type = 'text/javascript';
    _s.async = true;
    _zyzs.parentNode.insertBefore(_s, _zyzs);
</script>
<noscript>
    <p><img src="picture/d5806a14879c421b9cdada6e0ddff516.gif" width="0" height="0" border="0" alt="" /></p>
</noscript>
<!-- ZYZ Code End -->

<!-- 百度再营销标准代码 Start -->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?cceda50ef06cbaf44bdeaabe2470efee";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<!-- 百度再营销标准代码 end -->

<!-- start 记录sem的cookie -->
<script>
    var urlzszxcm = document.location.href;
    var szszxcm = urlzszxcm.indexOf("semk=");
    if (szszxcm != -1) {
        var srczszxcm = urlzszxcm.substring(szszxcm);
        if (srczszxcm) {
            setCookie('_sf_bdp_sem_cc', srczszxcm, '', '/', '.sfbest.com', '');
        }
    }
</script>
<!-- end 记录sem的cookie --></div>
<!----footerOver------>
</body>

<!----topbarScript----->
<script type="text/javascript">
    var IO=document.getElementById('float'),Y=IO,H=0,IE6;
    IE6=window.ActiveXObject&&!window.XMLHttpRequest;
    while(Y){H+=Y.offsetTop;Y=Y.offsetParent};
    if(IE6)
        IO.style.cssText="position:absolute;top:expression(this.fix?(document"+
            ".documentElement.scrollTop-(this.javascript||"+H+")):0)";
    window.onscroll=function (){
        var d=document,s=Math.max(d.documentElement.scrollTop,document.body.scrollTop);
        if(s>H&&IO.fix||s<=H&&!IO.fix)return;
        if(!IE6)IO.style.position=IO.fix?"":"fixed";
        IO.fix=!IO.fix;
    };
    try{document.execCommand("BackgroundImageCache",false,true)}catch(e){};
    //]]>
</script>
</html>
