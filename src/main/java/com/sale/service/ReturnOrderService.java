package com.sale.service;

import com.sale.pojo.SalesReturnOrder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReturnOrderService {
    public void addOrder(String id, String order_date, String warehouse, String worker, String bar_code
            , String advance_payment, String account, String customer, String supplier, String order_id, String note);
    public List<SalesReturnOrder> queryAllOrder();
    public List<SalesReturnOrder> queryOrder(String id, String date, String worker);
    public int deleteOrder(String id);
}
