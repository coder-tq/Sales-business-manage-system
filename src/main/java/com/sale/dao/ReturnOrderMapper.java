package com.sale.dao;

import com.sale.pojo.SalesReturnOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReturnOrderMapper {
//    新增
    public void addOrder(@Param("id") String id,@Param("order_date") String order_date,@Param("warehouse") String warehouse,@Param("worker") String worker,@Param("bar_code") String bar_code
            ,@Param("advance_payment") String advance_payment,@Param("account") String account,@Param("customer") String customer,@Param("supplier") String supplier,@Param("order_id") String order_id,@Param("note") String note);

//    查询所有
    public List<SalesReturnOrder> queryAllOrder();

//    查询
    public List<SalesReturnOrder> queryOrder(@Param("id") String id,@Param("order_date") String date,@Param("worker") String worker);

//    删除
    public int deleteOrder(String id);
}
