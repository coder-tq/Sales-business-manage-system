package com.sale.service;

import com.sale.pojo.Sale_OrderList;
import com.sale.pojo.Sale_PriceList;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface Sale_OrderListandPriceListService {

    //添加销售订单
    public int insertSale_OrderList(Sale_OrderList sale_orderList);
    //删除订单
    public int deleteSale_OrderListBysales_order_number(String sales_order_number);
    //根据销售订单号查询订单
    public List<Sale_OrderList> querySale_OrderListBysales_order_number(String sales_order_number);
    //根据日期查询订单
    public List<Sale_OrderList> querySale_OrderListBytime(String time);
    //根据员工姓名查询订单
    public  List<Sale_OrderList> querySale_OrderListByworker_name(String worker_name);
    //查询全部订单
    public List<Sale_OrderList> queryAllSale_OrderList();

    int insertSale_PriceList(Sale_PriceList sale_priceList);
    int deleteSale_PriceListByNumber(String sales_price_number);
    List<Sale_PriceList> queryAllSale_PriceList();
}
