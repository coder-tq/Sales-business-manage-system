<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填写销售表单</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">销售表单信息填写</h1>
        </div>
    </div>
</div>
<div class="col-md-3"></div>
<div class="col-md-6">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sale_OrderListandPriceList/insertSale_PriceList" method="post">
        <div class="form-group">
            <label for="Sales_Price_Number" class="col-sm-2 control-label">销售表单号</label>
            <div class="col-sm-10">
                <input type="text" name="Sales_Price_Number" class="form-control" id="Sales_Price_Number" placeholder="123" value="${Sale_PriceList.Sales_Price_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Preparation_Date" class="col-sm-2 control-label">日期</label>
            <div class="col-sm-10">
                <input type="text" name="Preparation_Date" class="form-control" id="Preparation_Date" placeholder="****-**-**" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime())%>" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Commodity_Id_Number" class="col-sm-2 control-label">商品ID号</label>
            <div class="col-sm-10">
                <input type="text" name="Commodity_Id_Number" class="form-control" id="Commodity_Id_Number" placeholder="123" value="${Sale_PriceList.Commodity_Id_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Warehouse_Id_Number" class="col-sm-2 control-label">进货仓ID号</label>
            <div class="col-sm-10">
                <input type="text" name="Warehouse_Id_Number" class="form-control" id="Warehouse_Id_Number" placeholder="123" value="${Sale_PriceList.Warehouse_Id_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Customer_Id_Number" class="col-sm-2 control-label">客户ID号</label>
            <div class="col-sm-10">
                <input type="text" name="Customer_Id_Number" class="form-control" id="Customer_Id_Number" placeholder="123" value="${Sale_PriceList.Customer_Id_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Supplier_Id_Number" class="col-sm-2 control-label">供应商ID号</label>
            <div class="col-sm-10">
                <input type="text" name="Supplier_Id_Number" class="form-control" id="Supplier_Id_Number" placeholder="123" value="${Sale_PriceList.Supplier_Id_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Operator_Id_Number" class="col-sm-2 control-label">经办人ID号</label>
            <div class="col-sm-10">
                <input type="text" name="Operator_Id_Number" class="form-control" id="Operator_Id_Number" placeholder="123" value="${Sale_PriceList.Operator_Id_Number}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Unit" class="col-sm-2 control-label">单位</label>
            <div class="col-sm-10">
                <input type="text" name="Unit" class="form-control" id="Unit" placeholder="123" value="${Sale_PriceList.Unit}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Remarks" class="col-sm-2 control-label">备注</label>
            <div class="col-sm-10">
                <input type="text" name="Remarks" class="form-control" id="Remarks" placeholder="123" value="${Sale_PriceList.Remarks}" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">添加</button>
            </div>
        </div>
    </form>
</div>
<div class="col-md-3"></div>
</body>
</html>
