package com.sale.dao;

import com.sale.pojo.OrderStatus;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderStatusMapper {
    public List<OrderStatus> queryAllOrderStatus();
    public int updateOrderStatus(OrderStatus OrderStatus);
    public int insertOrderStatus(OrderStatus OrderStatus);//返回id
    public int deleteOrderStatusByOrder_number(String Order_number);
    public List<OrderStatus> queryOrderStatusByOrder_number(String Order_number);
}
