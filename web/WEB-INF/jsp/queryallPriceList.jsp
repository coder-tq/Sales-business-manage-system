<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销售单表浏览</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style>
        form{
            display: inline;
        }
    </style>
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">销售单表</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/sale_OrderListandPriceList/toinsertSale_PriceList">添加销售单表</a>
        </div>
    </div>
</div>
<div class="col-md-4">
    <h1 class="text-info text-center">${msg}</h1>
</div>
<div class="col-md-4">
    <h1 class="text-info text-center">${msg}</h1>
</div>
<div class="row clearfix container-fluid">
    <div class="col-md-12">
        <table class="table table-hover table-striped table-bordered">
            <thead>
            <tr>
                <td class="col-md-4">销售单价表单号</td>
                <td class="col-md-3">日期</td>
                <td class="col-md-3">经办人ID号</td>
                <td class="col-md-2">操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="sale_PriceList" items="${list}">
                <tr>
                    <td>${sale_PriceList.sales_Price_Number}</td>
                    <td>${sale_PriceList.preparation_Date}</td>
                    <td>${sale_PriceList.operator_Id_Number}</td>
                    <td>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/toViewDetailsPriceList" method="post">
                            <input type="hidden" name="Sales_Price_Number" value="${sale_PriceList.sales_Price_Number}">
                            <input type="hidden" name="Preparation_Date" value="${sale_PriceList.preparation_Date}">
                            <input type="hidden" name="Operator_Id_Number" value="${sale_PriceList.operator_Id_Number}">
                            <input type="hidden" name="Commodity_Id_Number" value="${sale_PriceList.commodity_Id_Number}">
                            <input type="hidden" name="Warehouse_Id_Number" value="${sale_PriceList.warehouse_Id_Number}">
                            <input type="hidden" name="Customer_Id_Number" value="${sale_PriceList.customer_Id_Number}">
                            <input type="hidden" name="Supplier_Id_Number" value="${sale_PriceList.supplier_Id_Number}">
                            <input type="hidden" name="Unit" value="${sale_PriceList.unit}">
                            <input type="hidden" name="Remarks" value="${sale_PriceList.remarks}">
                            <input class="btn btn-primary" type="submit" value="查看详情">
                        </form>
                        <form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/deleteSale_PriceList" method="post">
                            <input type="hidden" name="sales_Price_Number" value="${sale_PriceList.sales_Price_Number}">
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
