
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增订单完成情况</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/moment-with-locales.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
          rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

</head>
<body>
<div class="row clearfix container-fluid">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="text-center">订单完成情况</h1>
        </div>
    </div>
</div>
<div class="col-md-3"></div>
<div class="col-md-6">
    <form id="orderstatusform" class="form-horizontal" action="${pageContext.request.contextPath}/sale/insertOrderStatus"
          method="post">

        <div class="form-group">
            <div class="form-group">
                <label for="Billing_date" class="col-sm-2 control-label">开单日期</label>
                <!--指定 date标记-->
                <div class="col-sm-10">
                    <div class='input-group date' id='datetimepicker2'>
                        <input type='text' name="Billing_date" class="form-control" id="Billing_date" required="required" />
                        <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                    </div>
                </div>
            </div>

        </div>
        <div class="form-group">
            <label for="Completion_status" class="col-sm-2 control-label">销售订单完成情况单</label>
            <div class="col-sm-10">
                <input type="text" name="Completion_status" class="form-control" id="Completion_status" required="required"
                       placeholder="销售订单完成情况单" value="${OrderStatus.completion_status}">
            </div>
        </div>
        <div class="form-group">
            <label for="Customer" class="col-sm-2 control-label">客户</label>
            <div class="col-sm-10">
                <input type="text" name="Customer" class="form-control" id="Customer" placeholder="请输入客户名" required="required"
                       value="${OrderStatus.oustomer}">
            </div>
        </div>
        <div class="form-group">
            <label for="Order_number" class="col-sm-2 control-label">订单号</label>
            <div class="col-sm-10">
                <input type="text" name="Order_number" class="form-control" id="Order_number" placeholder="请输入数字订单号" required="required" oninput="value=value.replace(/[^\d]/g,'')"
                       value="${OrderStatus.order_number}">
            </div>
        </div>
        <div class="form-group">
            <label for="Company" class="col-sm-2 control-label">单位</label>
            <div class="col-sm-10">
                <input type="text" name="Company" class="form-control" id="Company" placeholder="请输入单位名" required="required"
                       value="${OrderStatus.company}">
            </div>
        </div>
        <div class="form-group">
            <label for="Order" class="col-sm-2 control-label">商品</label>
            <div class="col-sm-10">
                <input type="text" name="Order" class="form-control" id="Order" placeholder="请输入商品名" required="required"
                       value="${OrderStatus.order}">
            </div>
        </div>
        <div class="form-group">
            <label for="Order_quantity" class="col-sm-2 control-label">订货数量</label>
            <div class="col-sm-10">
                <input type="text" name="Order_quantity" class="form-control" id="Order_quantity" required="required" oninput="value=value.replace(/[^\d]/g,'')"
                       placeholder="请输入订货数量" value="${OrderStatus.order_quantity}">
            </div>
        </div>
        <div class="form-group">
            <label for="Quantity_completed" class="col-sm-2 control-label" >完成数量</label>
            <div class="col-sm-10">
                <input type="text" name="Quantity_completed" class="form-control" id="Quantity_completed" required="required" oninput="value=value.replace(/[^\d]/g,'')"
                       placeholder="请输入完成数量" value="${OrderStatus.quantity_completed}">
            </div>
        </div>
        <div class="form-group">
            <label for="Unfinished_quantity" class="col-sm-2 control-label" >未完成数量</label>
            <div class="col-sm-10">
                <input type="text" name="Unfinished_quantity" class="form-control" id="Unfinished_quantity" required="required" oninput="value=value.replace(/[^\d]/g,'')"
                       placeholder="请输入未完成数量" value="${OrderStatus.unfinished_quantity}">
            </div>
        </div>
        <div class="form-group">
            <label for="Remarks" class="col-sm-2 control-label" >备注</label>
            <div class="col-sm-10">
                <input type="text" name="Remarks" class="form-control" id="Remarks" placeholder="无备注" required="required"
                       value="${OrderStatus.remarks}">
            </div>
        </div>

        <input class="btn btn-primary" type="submit" value="提交" >
    </form>
    <script type="text/javascript">
        function isExist() {
            var titleVal = $("input[type=text]").val();
            if(titleVal=="" || titleVal==null){
                $(".msg").html("输入框不可为空").css("color","red");
                return;
            }
        }
        $(function () {
            $('#datetimepicker1').datetimepicker({
                format: 'YYYY-MM-DD',
                locale: moment.locale('zh-cn')
            });
            $('#datetimepicker2').datetimepicker({
                format: 'YYYY-MM-DD hh:mm',
                locale: moment.locale('zh-cn')
            });
        });


    </script>
</div>
<div class="col-md-3"></div>

</body>
</html>
