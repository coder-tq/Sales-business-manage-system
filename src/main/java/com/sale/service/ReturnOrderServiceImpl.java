package com.sale.service;

import com.sale.pojo.SalesReturnOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service("ReturnOrderServiceImpl")
public class ReturnOrderServiceImpl implements ReturnOrderService{


    @Autowired
    private com.sale.dao.ReturnOrderMapper OrderMapper;

    @Override
    public void addOrder(String id, String order_date, String warehouse, String worker, String bar_code
            , String advance_payment, String account, String customer, String supplier, String order_id, String note) {
        OrderMapper.addOrder(id, order_date, warehouse, worker, bar_code, advance_payment, account, customer, supplier, order_id, note);
    }

    @Override
    public List<SalesReturnOrder> queryAllOrder() {
        return OrderMapper.queryAllOrder();
    }

    @Override
    public List<SalesReturnOrder> queryOrder(String id, String date, String worker) {
        return OrderMapper.queryOrder(id,date,worker);
    }

    @Override
    public int deleteOrder(String id) {
        return OrderMapper.deleteOrder(id);
    }
}
