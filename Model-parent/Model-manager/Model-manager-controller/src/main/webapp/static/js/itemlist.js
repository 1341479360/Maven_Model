//引入admin.js(webapp/static/js/admin.js)
//itemlist.js(webapp/static/js/itemlist.js)
layui.extend({
    admin: '{/}../../static/js/admin'
});
//按需加载admin.js
layui.use(['admin', 'jquery', 'table','form'], function () {
    //初始化变量
    var admin = layui.admin,
        $ = layui.jquery,
        table = layui.table,
        form = layui.form;
    //对表格进行渲染
    table.render({
        //什么是表格属性：page,elem,url,cols
        //什么是列属性：type,field,title
        //开启分页
        page: true,
        //渲染的容器是谁
        elem: '#articleList',
        //异步提交请求给后台返回JSON
        url: '../../items',
        //要显示的表头是什么
        cols: [[
            {type: 'checkbox'},
            {field: 'id',       title: '商品编号'},
            {field: 'title',    title: '商品名称'},
            {field: 'sellPoint',title: '商品卖点'},
            {field: 'catName',  title: '分类名称'},
                                                /*状态值判断*/
            {field: 'status',   title: '商品状态', templet: '#myTpl'},
            {title: '修改' ,      templet: '#find'}
        ]]

        
        
        // ,done:function(res,curr,count){
        //     // var $statusCol = $("[data-field='status']");//商品状态这一列
        //     // console.log($statusCol.children());
        //     // console.log($("[data-field='status']").children());
        //     $("[data-field='status']").children().each(function(){
        //         // this 当前DOM对象
        //         //$(this) 当前jQuery对象
        //         // val() text() html() 三个函数都是既可以设值也可以取值
        //         // val() 一般用于文本框 单选按钮 复选按钮这些的取值
        //         // text() 一般是用于获取指定控件中的文本 <div><strong>hello</strong></div> text() ====> hello
        //         // html() 一般是用于获取指定控件中的标签和文本 <div><strong>hello</strong></div> html() ====> <strong>hello</strong>
        //         // console.log($(this).text());
        //         if($(this).text() == '1'){
         //             //正常
        //             $(this).text('正常');
        //         }else if($(this).text() == '2'){
        //             //下架
        //             $(this).text('下架');
        //         }
        //     });
        // }
    });

    //
    var active = {
        getCheckData: function () {
            //你点击了"批量删除"
            //获取id=articleList的table组件选中行的数据
            var data = table.checkStatus("articleList").data;
            //table中有选中行
            if (data.length > 0) {
                layer.confirm('确认删除吗?', {icon: 3, title:'提示'}, function(){
                    //定义一个空数组
                    var ids = [];
                    //对选中的所有行数组进行遍历
                    for (var i = 0; i < data.length; i++) {
                        //将获取到的行数据的主键ID放入到空数组中
                        ids.push(data[i].id);
                    }
                    //异步提交到后台 ids
                    $.post(
                        //1 异步访问的urL
                        '../../item/batch',

                        //2 传递的值为id的数组
                        {'ids[]': ids},

                        //3 访问后成功的回调函数
                        function (data) {
                            //如果选中的条数>0并且至少删除一条记录
                            if (data > 0) {
                                //停留在原来页面刷新
                                $('.layui-laypage-btn').click();
                                layer.msg("删除成功！", {icon: 1});
                            }
                        }
                    );
                    layer.close();
                });

            } else {
                //没有选中                                icon:1:警告|2:X|3:V   弹出图案类型
                layer.msg("请选择至少一行后再批量删除！", {icon: 0});
            }
        },

        reload:function(){

            //获取输入查询的名称
            var title = $("#title").val();
            //   验证输入内容不为空
            // trim:去除字符串前后空格
            if($.trim(title).length > 0 ){
                //对id = articleList的表格重新载入数据
                table.reload("articleList",{
                    //重新加载时,重第一页重新加载
                    page:{curr:1},
                    //模糊查询的搜索内容:
                    // Key : Value  传入到后台的参数
                    where:{title:title}
                });
            }else{

                table.reload("articleList", {
                    //重新加载时,重第一页重新加载
                    page: {curr: 1},
                })
            }
        }
    };

    /*
    *
    *
    *
    * */
    //点击"批量删除"按钮触发的事件
    $(".demoTable .layui-btn-danger").on('click', function () {
        //为了获取data-type属性
        // this:DOM对象     $(this) jQuery对象
        var type = $(this).data("type");//getCheckData
        //判断定义的函数集合active中是否具有getCheckData字段对应的函数
        // 若有    那么直接调用该字段对应的函数
        // 没有   否则什么都不做
        active[type] ? active[type].call(this) : '';

    });

    //点击"模糊查询"按钮触发的事件
    $(".weadmin-body .layui-btn").on('click', function () {
        //为了获取按钮的data-type属性
        var type = $(this).data("type");//reload
        //判断active变量中是否具有reload属性
        active[type] ? active[type].call( this) : '';
    });



    //监听器
    form.on('switch(checkTest)', function(data){
        //开关是否开启，true或者false
        console.log(data.elem.checked);
       var boolean =  data.elem.checked;

        if(boolean){
            //true : 下架改为正常     2-->1
            $.post(
                "../../item/checkBox",
                {'status' : 1 ,
                'id' : data.value}
            )
        }else{
            //false : 正常改为下架    1-->2
            $.post(
                "../../item/checkBox",
                {'status' : 2 ,
                'id' : data.value}
            )
        }
    });




});