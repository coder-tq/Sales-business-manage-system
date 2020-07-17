package com.sale.pojo;


import java.sql.Date;

public class SalesReturnOrder {
    String id;
    Date order_date;
    int warehouse;
    int worker;
    String bar_code;
    double advance_payment;
    String account;
    int customer;
    int supplier;
    String order_id;
    String note;

    public SalesReturnOrder(String id, Date order_date, int warehouse, int worker, String bar_code, double advance_payment, String account, int customer, int supplier, String order_id, String note) {
        this.id = id;
        this.order_date = order_date;
        this.warehouse = warehouse;
        this.worker = worker;
        this.bar_code = bar_code;
        this.advance_payment = advance_payment;
        this.account = account;
        this.customer = customer;
        this.supplier = supplier;
        this.order_id = order_id;
        this.note = note;
    }

    @Override
    public String toString() {
        return "SalesReturnOrder{" +
                "id='" + id + '\'' +
                ", order_date=" + order_date +
                ", warehouse=" + warehouse +
                ", worker=" + worker +
                ", bar_code='" + bar_code + '\'' +
                ", advance_payment=" + advance_payment +
                ", account='" + account + '\'' +
                ", customer=" + customer +
                ", supplier=" + supplier +
                ", order_id='" + order_id + '\'' +
                ", note='" + note + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public int getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(int warehouse) {
        this.warehouse = warehouse;
    }

    public int getWorker() {
        return worker;
    }

    public void setWorker(int worker) {
        this.worker = worker;
    }

    public String getBar_code() {
        return bar_code;
    }

    public void setBar_code(String bar_code) {
        this.bar_code = bar_code;
    }

    public double getAdvance_payment() {
        return advance_payment;
    }

    public void setAdvance_payment(double advance_payment) {
        this.advance_payment = advance_payment;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public int getCustomer() {
        return customer;
    }

    public void setCustomer(int customer) {
        this.customer = customer;
    }

    public int getSupplier() {
        return supplier;
    }

    public void setSupplier(int supplier) {
        this.supplier = supplier;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public SalesReturnOrder() {
    }
}
