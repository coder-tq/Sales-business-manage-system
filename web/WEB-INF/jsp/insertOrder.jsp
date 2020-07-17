<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <script src="../../js/jquery-3.5.1.js"></script>
    <script src="../../layui/layui.js"></script>
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
</html>
<body>

<form class="layui-form" lay-filter="layuiadmin-app-form-list" id="wOrder" action="${pageContext.request.contextPath}/sale/doInsert" METHOD="post" >

    <div class="layui-form-item">
        <%--      销售退货单号--%>
        <label class="layui-form-label" >单号:</label>
        <div class="layui-input-block">
            <input type="text" name="id" required  lay-verify="required" placeholder="请输入销售退货单号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <%--      制单日期--%>
        <label class="layui-form-label" >日期:</label>
        <div class="layui-input-block">
            <input type="text" id="dateinput" name="order_date" placeholder="yyyy-mm-dd HH:mm:ss" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <%--      仓库--%>
        <label class="layui-form-label">仓库:</label>
        <div class="layui-input-block">
            <input type="text" name="warehouse" required  lay-verify="required" placeholder="请输入仓库" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      员工--%>
        <label class="layui-form-label">员工:</label>
        <div class="layui-input-block">
            <input type="text" name="worker" required  lay-verify="required" placeholder="请输入员工" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      条码--%>
        <label class="layui-form-label">条码:</label>
        <div class="layui-input-block">
            <input type="text" name="bar_code" required  lay-verify="required" placeholder="请输入条码" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      预收款--%>
        <label class="layui-form-label">预收款:</label>
        <div class="layui-input-block">
            <input type="text" name="advance_payment" required  lay-verify="required" placeholder="请输入预收款" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      账户--%>
        <label class="layui-form-label">账户:</label>
        <div class="layui-input-block">
            <input type="text" name="account" required  lay-verify="required" placeholder="请输入账户" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      供应商--%>
        <label class="layui-form-label">供应商:</label>
        <div class="layui-input-block">
            <input type="text" name="supplier" required  lay-verify="required" placeholder="请输入供应商" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      订单号--%>
        <label class="layui-form-label">订单号:</label>
        <div class="layui-input-block">
            <input type="text" name="order_id" lay-verify="" placeholder="请输入订单号" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      客户--%>
        <label class="layui-form-label">客户:</label>
        <div class="layui-input-block">
            <input type="text" name="customer" lay-verify=""  placeholder="请输入客户" autocomplete="off" class="layui-input">
            <br>
        </div>

        <%--      备注--%>
        <label class="layui-form-label">备注:</label>
        <div class="layui-input-block">
            <input type="text" name="note" lay-verify="" placeholder="请输入备注" autocomplete="off" class="layui-input">
            <br>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input class="layui-btn layui-btn-radius" type="submit">
            <button type="reset" class="layui-btn layui-btn-radius">重置&nbsp;<span style="font-size: 100%" class="layui-icon layui-icon-delete"></span></button>
<%--            <button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
        </div>
    </div>
</form>


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
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#dateinput' //指定元素
            ,type: 'datetime'
            ,value: new Date()
            ,format: 'yyyy-MM-dd HH:mm:ss'
            // ,position: 'fixed'
            ,zIndex: 99999999
        });
    });
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