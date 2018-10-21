<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用layui</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
</head>
<body>

<%--添加空的表单容器--%>
<table id="tb" lay-filter = "test"></table>


<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script>

    /*使用table组件,异步访问数据库查询列表后将数据填充到表单中*/
    layui.use(['table'],function () {

        var table = layui.table;

        /*对表单进行渲染,渲染完毕后,会发送异步请求到指定路径*/
        table.render({
            /*
               表格属性 elem , url , page , cols
               表头属性   field  ,title
             */

            // 1 渲染的目标
            elem : '#tb',
            //  2  异步访问的路径   ./ 本路径
            //                     ../  上级目录
            //  http : 127.0.0.1/manager/item
            url : './item',
            //3   是否开启分页功能
            page : true,
            //4     将请求传递回来的对象根据字段名进行展示
            cols:[[
                //field:对象属性   title:显示列表名
                {field:'id' ,title:'商品编号'}
                    //省略剩余字段
            ]]
        });
    });



</script>
</body>
</html>
