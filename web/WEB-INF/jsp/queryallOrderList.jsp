<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/7/13
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销售订单浏览</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script language="javascript">
        function selectQuery() {
            var showType = document.getElementById("showType").value;
            var input1 =  document.getElementById("sales_order_number").value;
            var input2 =  document.getElementById("time").value;
            var input3 =  document.getElementById("worker_name").value;
            if(input1==""&&input3==""&&input2==""){
                alert("请输入查询信息！")
            }
            else{
                if ("1" == showType) {
                    document.forms["QueryForm"].action = "${pageContext.request.contextPath}/sale_OrderListandPriceList/querySale_OrderListBysales_order_number";
                    document.forms["QueryForm"].submit();
                } else if("3"==showType){
                    document.forms["QueryForm"].action = "${pageContext.request.contextPath}/sale_OrderListandPriceList/querySale_OrderListByworker_name";
                    document.forms["QueryForm"].submit();
                } else if("2"==showType){
                    document.forms["QueryForm"].action = "${pageContext.request.contextPath}/sale_OrderListandPriceList/querySale_OrderListBytime";
                    document.forms["QueryForm"].submit();
                }
            }

        }
        function t1(){
            if(document.getElementById("test1").style.display="none"){
                document.getElementById("test1").style.display="";
                document.getElementById("test3").style.display="none";
                document.getElementById("test2").style.display="none";
                document.getElementById("worker_name").value="";
                document.getElementById("time").value="";
            }

        }
        function t2(){
            if(document.getElementById("test2").style.display="none"){
                document.getElementById("test2").style.display="";
                document.getElementById("test3").style.display="none";
                document.getElementById("test1").style.display="none";
                document.getElementById("worker_name").value="";
                document.getElementById("sales_order_number").value="";
            }

        }
        function t3(){
            if(document.getElementById("test3").style.display="none"){
                document.getElementById("test3").style.display="";
                document.getElementById("test1").style.display="none";
                document.getElementById("test2").style.display="none";
                document.getElementById("sales_order_number").value="";
                document.getElementById("time").value="";
            }
        }
    </script>
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
    <div class="text-left">
        <div class="col-md-4 column">
            <%--toinsertSale_Orderlist--%>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/sale_OrderListandPriceList/toinsertSale_OrderList">添加销售订单</a>
        </div>
    </div>
</div>
<div class="col-md-4">
    <h1 class="text-info text-center">${msg}</h1>
</div>
<div class="col-md-4">
    <h1 class="text-info text-center">${msg}</h1>
</div>
<!--导航栏-->
<div class="form-inline col-md-4">
    <div class="text-right ">
        <form name="QueryForm" id="QueryForm" method="post">
            <select class="form-control" id="showType" name="showType">
                <option value="1" onclick="t1()">按销售订单号查询</option>
                <option value="2" onclick="t2()">按订单日期查询</option>
                <option value="3" onclick="t3()">按员工姓名查询</option>
            </select>
            <span id="test1">
            <input class="form-control" type="text" name="sales_order_number" id = "sales_order_number" value="${sale_OrderList.sales_order_number}" placeholder="请输入销售订单号">
        </span>
            <span id="test2" style="display:none">
           <input class="form-control" type="text" name="time" id="time" placeholder="请输入订单日期"/>
        </span>
            <span id="test3" style="display:none">
           <input class="form-control" type="text" name="worker_name" id="worker_name" placeholder="请输入员工姓名"/>
        </span>
            <input class="btn btn-primary" type="button" value="查 询" onclick="selectQuery()"/>
        </form>
    </div>
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