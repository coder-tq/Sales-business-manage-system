<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增销售订单</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script language="javascript">
        function selectInsert() {
            var input1 =  document.getElementById("sales_order_number").value;
            var input2 =  document.getElementById("time").value;
            var input3 =  document.getElementById("worker_name").value;
            var input4 =  document.getElementById("bar_code").value;
            var input5 =  document.getElementById("worker_id_number").value;
            var input6 =  document.getElementById("account").value;
            var input7 =  document.getElementById("advance_payment").value;
            var input8 =  document.getElementById("warehouse_id_number").value;
            var input9 =  document.getElementById("commodity_id_number").value;
            var input10 = document.getElementById("customer_id_number").value;
            var input11 = document.getElementById("remarks").value;
            if(input1==""&&input3==""&&input2==""&&input4==""&&input5==""&&input6==""&&input7==""&&input8==""&&input9==""&&input10==""&&input11==""){
                alert("请输入新增信息！")
            }
            else{
                document.forms["InsertForm"].action = "${pageContext.request.contextPath}/sale_OrderListandPriceList/insertSale_OrderList";
                document.forms["InsertForm"].submit();
            }

        }
    </script>
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">销售订单信息填写</h1>
        </div>
    </div>
</div>
<div class="col-md-3"></div>
<div class="col-md-6">
    <form class="form-horizontal" id="InsertForm" name="InsertForm" method="post">
        <div class="form-group">
            <label for="sales_order_number" class="col-sm-2 control-label">销售订单号</label>
            <div class="col-sm-10">
                <input type="text" name="sales_order_number" class="form-control" id="sales_order_number" placeholder="123" value="${Sale_OrderList.sales_order_number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="time" class="col-sm-2 control-label">日期</label>
            <div class="col-sm-10">
                <input type="text" name="time" class="form-control" id="time" placeholder="****-**-**" value="${Sale_OrderList.time}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="worker_id_number" class="col-sm-2 control-label">员工ID号</label>
            <div class="col-sm-10">
                <input type="text" name="worker_id_number" class="form-control" id="worker_id_number" placeholder="123" value="${Sale_OrderList.worker_id_number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="worker_name" class="col-sm-2 control-label">员工姓名</label>
            <div class="col-sm-10">
                <input type="text" name="worker_name" class="form-control" id="worker_name" placeholder="123" value="${Sale_OrderList.worker_name}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="bar_code" class="col-sm-2 control-label">条码</label>
            <div class="col-sm-10">
                <input type="text" name="bar_code" class="form-control" id="bar_code" placeholder="123" value="${Sale_OrderList.bar_code}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="advance_payment" class="col-sm-2 control-label">预收款</label>
            <div class="col-sm-10">
                <input type="text" name="advance_payment" class="form-control" id="advance_payment" placeholder="00.00" value="${Sale_OrderList.advance_payment}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="account" class="col-sm-2 control-label">账户</label>
            <div class="col-sm-10">
                <input type="text" name="account" class="form-control" id="account" placeholder="123" value="${Sale_OrderList.account}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="commodity_id_number" class="col-sm-2 control-label">商品ID号</label>
            <div class="col-sm-10">
                <input type="text" name="commodity_id_number" class="form-control" id="commodity_id_number" placeholder="123" value="${Sale_OrderList.commodity_id_number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="customer_id_number" class="col-sm-2 control-label">客户ID号</label>
            <div class="col-sm-10">
                <input type="text" name="customer_id_number" class="form-control" id="customer_id_number" placeholder="123" value="${Sale_OrderList.customer_id_number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="warehouse_id_number" class="col-sm-2 control-label">仓库ID号</label>
            <div class="col-sm-10">
                <input type="text" name="warehouse_id_number" class="form-control" id="warehouse_id_number" placeholder="123" value="${Sale_OrderList.warehouse_id_number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="remarks" class="col-sm-2 control-label">备注</label>
            <div class="col-sm-10">
                <input type="text" name="remarks" class="form-control" id="remarks" placeholder="123" value="${Sale_OrderList.remarks}" required>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" onclick="selectInsert()">添加</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
