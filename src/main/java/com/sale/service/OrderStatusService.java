package com.sale.service;

import com.sale.pojo.OrderStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderStatusService {
    public List<OrderStatus> queryAllOrderStatus();
    public int updateOrderStatus(OrderStatus orderStatus);
    public int insertOrderStatus(OrderStatus orderStatus);
    public int deleteOrderStatus(String Order_number);
    public List<OrderStatus> queryOrderStatusByOrder_number(String Order_number);
}