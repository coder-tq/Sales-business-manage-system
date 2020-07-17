<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退货订单查询结果</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <style>
        form{
            display:inline;
        }
        input{
            display:inline;
        }
        .layui-input-block {
            width: 400px;
        }
    </style>
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">退货订单列表</h1>
        </div>
    </div>
</div>

<div class="row clearfix container-fluid">
    <div class="col-md-4">
        <div id="addReorder" class="btn btn-primary">新增销售退货单</div>
        <a href="${pageContext.request.contextPath}/sale/queryAllOrder" class="btn btn-primary active">查询全部销售退货单</a>
    </div>
    <div class="text-right form-inline col-md-push-2 col-md-6">
        <div class="col-md-4"><input type="text" class="layui-input layui-input-inline" id="id" name="id" placeholder="请输入订单编号"></div>
        <div class="col-md-3"><input type="text" class="layui-input layui-input-inline" id="order_date" name="order_date" placeholder="请选择订单日期"></div>
        <div class="col-md-4"><input type="text" class="layui-input layui-input-inline" id="worker" name="worker" placeholder="请输入工作员编号"></div>
        <div class="col-md-1"><button class="btn btn-primary active" id="query">查询</button></div>
    </div>
</div>

<div class="row clearfix container-fluid">
    <div class="col-md-12">
        <table class="layui-table">
            <thead>
            <tr>
                <td>编号</td>
                <td>日期</td>
                <td>仓库</td>
                <td>员工</td>
                <td>条码</td>
                <td>预收款</td>
                <td>账户</td>
                <td>客户</td>
                <td>供应商</td>
                <td>订单号</td>
                <td>备注</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody id="table">
            <c:forEach var="order" items="${list}">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.order_date}</td>
                    <td>${order.warehouse}</td>
                    <td>${order.worker}</td>
                    <td>${order.bar_code}</td>
                    <td>${order.advance_payment}</td>
                    <td>${order.account}</td>
                    <td>${order.customer}</td>
                    <td>${order.supplier}</td>
                    <td>${order.order_id}</td>
                    <td>${order.note}</td>

                    <td>
                        <form class="form-inline" action="/sale/deleteOrder" method="post">
                            <input type="hidden" name="id" value="${order.id}">
                            <input class="layui-btn layui-btn-danger layui-btn-xs" type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="../../js/jquery-3.5.1.js"></script>
<script src="../../layui/layui.js"></script>
<%--新增退货单--%>
<script>
    $(document).ready(function() {
        $("#addReorder").on("click", function () {
            layer.open({
                type: 2,
                offset: 't',
                title: '填写销售退货单',
                skin: 'layui-layer-lan',
                area: ['70%', '100%'],
                value:'初始值',
                // content: layui.$('#wOrder'),
                content: "${pageContext.request.contextPath}/sale/insertOrder",
                btn: [],
            });
        })
    });
</script>



<script src="../../js/jquery-3.5.1.js"></script>
<script src="../../layui/layui.js"></script>

<script>
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>

<script>
    let id = $('#id'),
        order_date = $('#order_date'),
        worker = $('#worker'),
        btn = $('#query'),
        table = $('#table');

    const func1 = function() {
        $.post("/sale/queryApi",{id:id.val(),order_date:order_date.val(),worker:worker.val()},function (data) {
            if(id.val() == ""&&order_date.val() == ""&&worker.val() == "")
            {
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('请填写任意一项');
                });
                return;
            }
            let list = data.list
            let String = "<tbody id=\"table\">"
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(data.msg);
            });
            $.each(list,function (index,value) {
                String+="<tr>"+
                    "<td>"+value.id+"</td>"+
                    "<td>"+new Date(value.order_date).getFullYear()+"-"+(new Date(value.order_date).getMonth()+1)+"-"+new Date(value.order_date).getDate()+"</td>"+
                    "<td>"+value.warehouse+"</td>"+
                    "<td>"+value.worker+"</td>"+
                    "<td>"+value.bar_code+"</td>"+
                    "<td>"+value.advance_payment+"</td>"+
                    "<td>"+value.account+"</td>"+
                    "<td>"+value.customer+"</td>"+
                    "<td>"+value.supplier+"</td>"+
                    "<td>"+value.order_id+"</td>"+
                    "<td>"+value.note+"</td>"+
                    "<td>"+
                    "<form class=\"form-inline\" action=\"/sale/deleteOrder\" method=\"post\">"+
                    "<input type=\"hidden\" name=\"id\" value=\""+value.id+"\">"+
                    "<input class=\"layui-btn layui-btn-danger layui-btn-xs\" type=\"submit\" value=\"删除\">"+
                    "</form>"+
                    "</td>"+
                    "</tr>"
            })
            String+="</tbody>"
            table.replaceWith(String)
            table=$('#table')
        })
    }
    btn.click(func1)

</script>
<script>
    layui.use('laydate', function() {
        var laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#order_date'
        });
    });
    layui.use('layer', function(){
        var layer = layui.layer;
        if('${msg}' !== '')
            layer.msg('${msg}');
    });
</script>
</body>
</html>
