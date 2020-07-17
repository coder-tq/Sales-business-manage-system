<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/13
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看详情</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h2 class="text-center">详情信息</h2>
        </div>
    </div>
</div>
<div class="row clearfix container-fluid">
    <div class="col-md-12">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <td>销售订单号</td>
                <td>${sale_OrderList.sales_order_number}</td>
            </tr>
            <tr>
                <td>日期</td>
                <td>${sale_OrderList.time}</td>
            </tr>
            <tr>
                <td>员工姓名</td>
                <td>${sale_OrderList.worker_name}</td>
            </tr>
            <tr>
                <td>员工ID号</td>
                <td>${sale_OrderList.worker_id_number}</td>
            </tr>
            <tr>
                <td>条码</td>
                <td>${sale_OrderList.bar_code}</td>
            </tr>
            <tr>
                <td>预收款</td>
                <td>${sale_OrderList.advance_payment}</td>
            </tr>
            <tr>
                <td>账户</td>
                <td>${sale_OrderList.account}</td>
            </tr>
            <tr>
                <td>商品ID号</td>
                <td>${sale_OrderList.commodity_id_number}</td>
            </tr>
            <tr>
                <td>客户ID号</td>
                <td>${sale_OrderList.customer_id_number}</td>
            </tr>
            <tr>
                <td>仓库ID号</td>
                <td>${sale_OrderList.warehouse_id_number}</td>
            </tr>
            <tr>
                <td>备注</td>
                <td>${sale_OrderList.remarks}</td>
            </tr>
        </table>
    </div>
</div>
<form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/queryallOrderList" method="post">
    <input class="btn btn-primary" type="submit" value="返回查询页面">
</form>
</body>