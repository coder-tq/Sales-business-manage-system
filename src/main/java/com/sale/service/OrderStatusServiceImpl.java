package com.sale.service;

import com.sale.pojo.OrderStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Component
@Service("OrderStatusServiceImpl")
public class OrderStatusServiceImpl implements OrderStatusService {

    @Autowired
    private com.sale.dao.OrderStatusMapper OrderStatusMapper;

    public List<OrderStatus> queryAllOrderStatus() {
        return OrderStatusMapper.queryAllOrderStatus();
    }

    public int updateOrderStatus(OrderStatus orderStatus) {
        return OrderStatusMapper.updateOrderStatus(orderStatus);
    }

    public int insertOrderStatus(OrderStatus orderStatus) {
        return OrderStatusMapper.insertOrderStatus(orderStatus);
    }

    public int deleteOrderStatus(String Order_number) {
        return OrderStatusMapper.deleteOrderStatusByOrder_number(Order_number);
    }

    public List<OrderStatus> queryOrderStatusByOrder_number(String Order_number) {
        return OrderStatusMapper.queryOrderStatusByOrder_number(Order_number);
    }
}
