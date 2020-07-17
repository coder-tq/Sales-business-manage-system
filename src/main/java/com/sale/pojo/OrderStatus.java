package com.sale.pojo;

import java.util.Date;

public class OrderStatus {

    String Billing_date;
    String Completion_status;
    String Customer;
    String Order_number;
    String Company;
    String Order;
    int Order_quantity;
    int Quantity_completed;
    int Unfinished_quantity;
    String Remarks;

    public OrderStatus(){

    }

    public OrderStatus(String billing_date, String completion_status, String customer, String order_number, String company, String order, int order_quantity, int quantity_completed, int unfinished_quantity, String remarks) {

        Billing_date = billing_date;
        Completion_status = completion_status;
        Customer = customer;
        Order_number = order_number;
        Company = company;
        Order = order;
        Order_quantity = order_quantity;
        Quantity_completed = quantity_completed;
        Unfinished_quantity = unfinished_quantity;
        Remarks = remarks;
    }

    @Override
    public String toString() {
        return "OrderStatus{" +
                ",Billing_date=" + Billing_date + '\'' +
                ", Completion_status='" + Completion_status + '\'' +
                ", Customer='" + Customer + '\'' +
                ", Order_number='" + Order_number + '\'' +
                ", Company='" + Company + '\'' +
                ", Order='" + Order + '\'' +
                ", Order_quantity=" + Order_quantity +
                ", Quantity_completed=" + Quantity_completed +
                ", Unfinished_quantity=" + Unfinished_quantity +
                ", Remarks='" + Remarks + '\'' +
                '}';
    }

    public String getBilling_date() {
        return Billing_date;
    }

    public void setBilling_date(String billing_date) {
        Billing_date = billing_date;
    }

    public String getCompletion_status() {
        return Completion_status;
    }

    public void setCompletion_status(String completion_status) {
        Completion_status = completion_status;
    }

    public String getCustomer() {
        return Customer;
    }

    public void setCustomer(String customer) {
        Customer = customer;
    }

    public String getOrder_number() {
        return Order_number;
    }

    public void setOrder_number(String order_number) {
        Order_number = order_number;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getOrder() {
        return Order;
    }

    public void setOrder(String order) {
        Order = order;
    }

    public int getOrder_quantity() {
        return Order_quantity;
    }

    public void setOrder_quantity(int order_quantity) {
        Order_quantity = order_quantity;
    }

    public int getQuantity_completed() {
        return Quantity_completed;
    }

    public void setQuantity_completed(int quantity_completed) {
        Quantity_completed = quantity_completed;
    }

    public int getUnfinished_quantity() {
        return Unfinished_quantity;
    }

    public void setUnfinished_quantity(int unfinished_quantity) {
        Unfinished_quantity = unfinished_quantity;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }
}
