<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--配置当前时间对象--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>添加订单-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/treeselect.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/treeselect.js" charset="utf-8"></script>--%>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form" method="post" onsubmit="return false">
        <%--隐藏属性--%>
        <%--默认状态值--%>
    <input type="hidden" name="status" value="2" >
         <%--默认创建时间--%>
    <input type="hidden" name="created"
           value="<fmt:formatDate value="${now}"
           pattern="yyyy-MM-dd-HH-mm-ss"/>">

        <div class="layui-form-item">
            <label for="cid" class="layui-form-label">
                <span class="we-red">*</span>商品类别
            </label>
            <div class="layui-input-inline">
                <input type="text" id="cid" lay-filter="demo" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="title" class="layui-form-label">
                <span class="we-red">*</span>商品标题
            </label>
            <div class="layui-input-inline">
                <input type="text" id="title" name="title" required="" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="sellPoint" class="layui-form-label">商品卖点</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入卖点" id="sellPoint" name="sellPoint" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="priceView" class="layui-form-label">
                <span class="we-red">*</span>商品价格
            </label>
            <div class="layui-input-inline">
                <input type="text" id="priceView" name="price" required="" lay-verify="number" autocomplete="off"
                       class="layui-input">
               <%-- <input type="hidden" id="price" name="price">--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="num" class="layui-form-label">
                <span class="we-red">*</span>商品库存
            </label>
            <div class="layui-input-inline">
                <input type="text" id="num" name="num" required="" lay-verify="number" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="barcode" class="layui-form-label">
                <span class="we-red">*</span>条形码
            </label>
            <div class="layui-input-inline">
                <input type="text" id="barcode" name="barcode" required="" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="itemDesc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <%--第一步--%>
                <textarea id="itemDesc" name="image" lay-verify="content" class="layui-textarea" style="display: none"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="add" class="layui-form-label">
            </label>
            <button id="add" class="layui-btn" lay-filter="add" lay-submit="">增加</button>
        </div>
    </form>
</div>
<script>
    layui.extend({
        admin: '{/}../../static/js/admin',
        treeselect: '{/}../../static/js/treeselect'
    });
    layui.use(['form', 'admin','layer', 'layedit', 'treeselect'], function () {
        var form = layui.form,
            admin = layui.admin,
            layer = layui.layer,
            layedit = layui.layedit,
            $=layui.jquery,
            treeselect = layui.treeselect;


        //初始化树形下拉框
        treeselect.render(
            {
                elem: "#cid",
                data: [{ //节点
                    name: '父节点1',
                    spread: false
                    ,
                    children: [{

                        name: '子节点11'
                    }]
                }],
                method: "GET"
            });


        //第二步
        //初始化富文本编辑器
       var index = layedit.build('itemDesc', {
            height: 100,//设置编辑器高度
            //文件上传路径
            uploadImage:{
                url:'${pageContext.request.contextPath}/item/uploadImage',
                type:'post',
            }
        });

       //表单验证
        form.verify({
            content: function(value) {
                return layedit.sync(index);
            }
        });


        //监听提交
        form.on('submit(add)', function (data) {

            console.log(data.field);
            alert($("img").attr("src"));
            $.post(
                //1 异步提交的urL
                '${pageContext.request.contextPath}/item/add',

                //2 form表单以键值对形式传输
                data.field,

                //3 访问后成功的回调函数
                function (data) {
                    if (data > 0) {
                        //3.1   弹窗提示
                        layer.msg("添加成功！", {icon: 1});
                        //3.2  获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //3.3   关闭当前frame
                        parent.layer.close(index);
                        //3.4   刷新页面
                        window.parent.location.reload();
                    }else{
                        layer.msg("添加失败！", {icon: 1});
                    }
                }
            );

            return false;
        });

    });
</script>
</body>

</html>