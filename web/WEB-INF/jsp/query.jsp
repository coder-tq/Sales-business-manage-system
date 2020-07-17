<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单完成情况表</title>
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
            <h1 class="text-center">订单完成情况表</h1>
        </div>
    </div>
</div>
<div class="row clearfix container-fluid">
    <div class="col-md-4">
        <a href="${pageContext.request.contextPath}/sale/toInsertPage" class="btn btn-primary active">添加订单完成情况表</a>
        <a href="${pageContext.request.contextPath}/sale/queryOrderStatus" class="btn btn-primary active">查询全部订单完成情况</a>
    </div>
    <div class="col-md-4">
        <h1 class="text-info text-center">${msg}</h1>
    </div>
    <div class="text-right form-inline col-md-4">
        <form action="${pageContext.request.contextPath}/sale/queryOrderStatusByOrder_number" method="post">
            <input class="form-control" type="text" name="Order_number" placeholder="请输入要查询的订单号" value="${OrderStatus.order_number}">
            <input class="btn btn-primary" type="submit" value="查询">
        </form>
    </div>
</div>


<div class="row clearfix container-fluid">
    <div class="col-md-12">
        <table class="table table-hover table-striped table-bordered">
            <thead>
            <tr>

                <td>开单日期</td>
                <td>完成情况单</td>
                <td>客户</td>
                <td>订单号</td>
                <td>单位</td>
                <td>商品</td>
                <td>订货数量</td>
                <td>完成数量</td>
                <td>未完成数量</td>
                <td>备注</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="OrderStatus" items="${list}">
                <tr>
                    <td>${OrderStatus.billing_date}</td>
                    <td>${OrderStatus.completion_status}</td>
                    <td>${OrderStatus.customer}</td>
                    <td>${OrderStatus.order_number}</td>
                    <td>${OrderStatus.company}</td>
                    <td>${OrderStatus.order}</td>
                    <td>${OrderStatus.order_quantity}</td>
                    <td>${OrderStatus.quantity_completed}</td>
                    <td>${OrderStatus.unfinished_quantity}</td>
                    <td>${OrderStatus.remarks}</td>
                    <td>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale/toUpdatePage" method="post">
                            <input type="hidden" name="Billing_date" value="${OrderStatus.billing_date}">
                            <input type="hidden" name="Completion_status" value="${OrderStatus.completion_status}">
                            <input type="hidden" name="Customer" value="${OrderStatus.customer}">
                            <input type="hidden" name="Order_number" value="${OrderStatus.order_number}">
                            <input type="hidden" name="Company" value="${OrderStatus.company}">
                            <input type="hidden" name="Order" value="${OrderStatus.order}">
                            <input type="hidden" name="Order_quantity" value="${OrderStatus.order_quantity}">
                            <input type="hidden" name="Quantity_completed" value="${OrderStatus.quantity_completed}">
                            <input type="hidden" name="Unfinished_quantity" value="${OrderStatus.unfinished_quantity}">
                            <input type="hidden" name="Remarks" value="${OrderStatus.remarks}">
                            <input class="btn btn-primary" type="submit" value="修改">
                        </form>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale/deleteOrderStatus" method="post">
                            <input type="hidden" name="Order_number" value="${OrderStatus.order_number}">
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
