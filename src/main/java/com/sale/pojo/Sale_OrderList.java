package com.sale.pojo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Sale_OrderList{
    String sales_order_number;
    Date time;
    int warehouse_id_number;
    int worker_id_number;
    String worker_name;
    String bar_code;
    Double advance_payment;
    String account;
    int commodity_id_number;
    int customer_id_number;
    String remarks;


    @Override
    public String toString() {
        return "Sale_OrderList{" +
                "sales_order_number='" + sales_order_number + '\'' +
                ", time=" + time +
                ", warehouse_id_number=" + warehouse_id_number +
                ", worker_id_number=" + worker_id_number +
                ", worker_name='" + worker_name + '\'' +
                ", bar_code='" + bar_code + '\'' +
                ", advance_payment=" + advance_payment +
                ", account='" + account + '\'' +
                ", commodity_id_number=" + commodity_id_number +
                ", customer_id_number=" + customer_id_number +
                ", remarks='" + remarks + '\'' +
                '}';
    }

    public String getSales_order_number() {
        return sales_order_number;
    }

    public void setSales_order_number(String sales_order_number) {
        this.sales_order_number = sales_order_number;
    }

    public String getTime() {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
        String str_Time = format.format(this.time);
        return str_Time;
    }//这里，我把返回值类型Date改成String了

    public void setTime(String str_Time) throws ParseException {
        Date date = new SimpleDateFormat("yyyy-mm-dd").parse(str_Time);
        this.time = date;
    }

    public int getWarehouse_id_number() {
        return warehouse_id_number;
    }

    public void setWarehouse_id_number(int warehouse_id_number) {
        this.warehouse_id_number = warehouse_id_number;
    }

    public int getWorker_id_number() {
        return worker_id_number;
    }

    public void setWorker_id_number(int worker_id_number) {
        this.worker_id_number = worker_id_number;
    }

    public String getWorker_name() {
        return worker_name;
    }

    public void setWorker_name(String worker_name) {
        this.worker_name = worker_name;
    }

    public String getBar_code() {
        return bar_code;
    }

    public void setBar_code(String bar_code) {
        this.bar_code = bar_code;
    }

    public Double getAdvance_payment() {
        return advance_payment;
    }

    public void setAdvance_payment(Double advance_payment) {
        this.advance_payment = advance_payment;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public int getCommodity_id_number() {
        return commodity_id_number;
    }

    public void setCommodity_id_number(int commodity_id_number) {
        this.commodity_id_number = commodity_id_number;
    }

    public int getCustomer_id_number() {
        return customer_id_number;
    }

    public void setCustomer_id_number(int customer_id_number) {
        this.customer_id_number = customer_id_number;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Sale_OrderList() {
    }

    public Sale_OrderList(String sales_order_number, Date time,
                          int warehouse_id_number, int worker_id_number,
                          String worker_name, String bar_code, Double advance_payment,
                          String account, int commodity_id_number, int customer_id_number, String remarks) {
        this.sales_order_number = sales_order_number;
        this.time = time;
        this.warehouse_id_number = warehouse_id_number;
        this.worker_id_number = worker_id_number;
        this.worker_name = worker_name;
        this.bar_code = bar_code;
        this.advance_payment = advance_payment;
        this.account = account;
        this.commodity_id_number = commodity_id_number;
        this.customer_id_number = customer_id_number;
        this.remarks = remarks;
    }
}
