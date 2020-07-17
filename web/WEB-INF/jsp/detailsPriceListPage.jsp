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
            <tr></tr>
            <tr>
                <td>销售表单号</td>
                <td>${sale_PriceList.sales_Price_Number}</td>
            </tr>
            <tr>
                <td>日期</td>
                <td>${sale_PriceList.preparation_Date}</td>
            </tr>
            <tr>
                <td>经办人ID号</td>
                <td>${sale_PriceList.operator_Id_Number}</td>
            </tr>
            <tr>
                <td>商品ID号</td>
                <td>${sale_PriceList.commodity_Id_Number}</td>
            </tr>
            <tr>
                <td>进货仓ID号</td>
                <td>${sale_PriceList.warehouse_Id_Number}</td>
            </tr>
            <tr>
                <td>客户ID号</td>
                <td>${sale_PriceList.customer_Id_Number}</td>
            </tr>
            <tr>
                <td>供应商ID号</td>
                <td>${sale_PriceList.supplier_Id_Number}</td>
            </tr>
            <tr>
                <td>单位</td>
                <td>${sale_PriceList.unit}</td>
            </tr>
            <tr>
                <td>备注</td>
                <td>${sale_PriceList.remarks}</td>
            </tr>
        </table>
    </div>
</div>
<form class="form-inline" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/queryallPriceList" method="post">
    <input class="btn btn-primary" type="submit" value="返回查询页面">
</form>
</body>