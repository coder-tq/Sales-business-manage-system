package com.sale.service;

import com.sale.pojo.Sale_OrderList;
import com.sale.pojo.Sale_PriceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import java.util.List;
@Component
@Service("Sale_OrderListandPriceListServiceImpl")
public class Sale_OrderListandPriceListServiceImpl implements Sale_OrderListandPriceListService {
//service层调dao层,组合Dao层
    @Autowired
    private com.sale.dao.Sale_OrderListandPriceListMapper sale_OrderListandPriceListMapper;//注入SPring
    public void setSale_OrderListandPriceListMapper(com.sale.dao.Sale_OrderListandPriceListMapper sale_OrderListandPriceListMapper) {
        this.sale_OrderListandPriceListMapper = sale_OrderListandPriceListMapper;
    }
    //添加销售订单
    public int insertSale_OrderList(Sale_OrderList sale_orderList){
        return sale_OrderListandPriceListMapper.insertSale_OrderList(sale_orderList);
    }
    //删除订单
    public int deleteSale_OrderListBysales_order_number(String sales_order_number){
        return sale_OrderListandPriceListMapper.deleteSale_OrderListBysales_order_number(sales_order_number);
    }
    //根据销售订单号查询订单
    public List<Sale_OrderList> querySale_OrderListBysales_order_number(String sales_order_number){
        return sale_OrderListandPriceListMapper.querySale_OrderListBysales_order_number(sales_order_number);
    }
    //根据日期查询订单
    public List<Sale_OrderList> querySale_OrderListBytime(String time){
        return sale_OrderListandPriceListMapper.querySale_OrderListBytime(time);
    }
    //根据员工ID查询订单
    public List<Sale_OrderList> querySale_OrderListByworker_name(String worker_name){
        return sale_OrderListandPriceListMapper.querySale_OrderListByworker_name(worker_name);
    }
    //查询全部订单
    public List<Sale_OrderList> queryAllSale_OrderList(){
        return sale_OrderListandPriceListMapper.queryAllSale_OrderList();
    }


    public int insertSale_PriceList(Sale_PriceList sale_priceList) {
        return sale_OrderListandPriceListMapper.insertSale_PriceList(sale_priceList);
    }


    public int deleteSale_PriceListByNumber(String sales_price_number) {
        return sale_OrderListandPriceListMapper.deleteSale_PriceListByNumber(sales_price_number);
    }

    public List<Sale_PriceList> queryAllSale_PriceList() {
        return sale_OrderListandPriceListMapper.queryAllSale_PriceList();
    }
}
