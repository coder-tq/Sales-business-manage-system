<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/16
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销售订单查询</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        form{
            display:inline;
        }
    </style>
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">销售订单列表</h1>
        </div>
    </div>
</div>
<div class="text-right form-inline col-md-1">
    <form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/queryallOrderList" method="post">
        <input class="btn btn-primary" type="submit" value="返回查询页面">
    </form>
</div>
<div class="row clearfix container-fluid">
    <div class="col-md-12">
        <table class="table table-hover table-striped table-bordered">
            <thead>
            <tr>
                <td class="col-md-4">销售订单号</td>
                <td class="col-md-3">日期</td>
                <td class="col-md-3">员工姓名</td>
                <td class="col-md-2">操作</td>
            </tr>
            </thead>
            <tbody>
            <p class="text-info text-center">${msg}</p>
            <c:forEach var="sale_OrderList" items="${list}">
                <tr>
                    <td>${sale_OrderList.sales_order_number}</td>
                    <td>${sale_OrderList.time}</td><!--这里用的time，就是那个getTime-->
                    <td>${sale_OrderList.worker_name}</td>
                    <td>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/toViewDetailsOrderList" method="post">
                            <input type="hidden" name="sales_order_number" value="${sale_OrderList.sales_order_number}">
                            <input type="hidden" name="time" value="${sale_OrderList.time}">
                            <input type="hidden" name="worker_name" value="${sale_OrderList.worker_name}">
                            <input type="hidden" name="worker_id_number" value="${sale_OrderList.worker_id_number}">
                            <input type="hidden" name="bar_code" value="${sale_OrderList.bar_code}">
                            <input type="hidden" name="advance_payment" value="${sale_OrderList.advance_payment}">
                            <input type="hidden" name="account" value="${sale_OrderList.account}">
                            <input type="hidden" name="commodity_id_number" value="${sale_OrderList.commodity_id_number}">
                            <input type="hidden" name="customer_id_number" value="${sale_OrderList.customer_id_number}">
                            <input type="hidden" name="warehouse_id_number" value="${sale_OrderList.warehouse_id_number}">
                            <input type="hidden" name="remarks" value="${sale_OrderList.remarks}">
                            <input class="btn btn-primary" type="submit" value="查看详情">
                        </form>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/deleteSale_OrderList" method="post">
                            <input type="hidden" name="sales_order_number" value="${sale_OrderList.sales_order_number}">
                            <input class="btn btn-primary" type="submit" value="删除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
