package com.sale.dao;

import com.sale.pojo.Sale_OrderList;
import com.sale.pojo.Sale_PriceList;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Sale_OrderListandPriceListMapper {

    //删除订单
    public int deleteSale_OrderListBysales_order_number(@Param("sales_order_number") String sales_order_number);
    //根据销售订单号查询订单
    public List<Sale_OrderList> querySale_OrderListBysales_order_number(@Param("sales_order_number") String sales_order_number);
    //根据日期查询订单
    public List<Sale_OrderList> querySale_OrderListBytime(@Param("time") String time);
    //根据员工姓名查询订单
    public List<Sale_OrderList> querySale_OrderListByworker_name(@Param("worker_name") String worker_name);
    //查询全部订单
    public List<Sale_OrderList> queryAllSale_OrderList();
    //添加销售订单
    public int insertSale_OrderList(Sale_OrderList sale_orderList);
    //添加销售定价表
    int insertSale_PriceList(Sale_PriceList sale_priceList);
    //删除销售定价表
    int deleteSale_PriceListByNumber(@Param("Sales_Price_Number")String sales_price_number);
    //查询全部信息
    List<Sale_PriceList> queryAllSale_PriceList();
}
