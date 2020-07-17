package com.sale.pojo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Sale_PriceList {
    String Sales_Price_Number;
    Date Preparation_Date;
    String Commodity_Id_Number;
    int Warehouse_Id_Number;
    int Customer_Id_Number;
    int Supplier_Id_Number;
    int Operator_Id_Number;
    String Unit;
    String Remarks;

    @Override
    public String toString() {
        return "Sale_PriceList{" +
                "Sales_Price_Number=" + Sales_Price_Number +
                ", Preparation_Date=" + Preparation_Date +
                ", Commodity_Id_Number='" + Commodity_Id_Number + '\'' +
                ", Warehouse_Id_Number=" + Warehouse_Id_Number +
                ", Customer_Id_Number=" + Customer_Id_Number +
                ", Supplier_Id_Number=" + Supplier_Id_Number +
                ", Operator_Id_Number=" + Operator_Id_Number +
                ", Unit='" + Unit + '\'' +
                ", Remarks='" + Remarks + '\'' +
                '}';
    }

    public String getSales_Price_Number() {
        return Sales_Price_Number;
    }

    public void setSales_Price_Number(String sales_Price_Number) {
        Sales_Price_Number = sales_Price_Number;
    }

    public String getPreparation_Date() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
        String str_Preparation_Date = format.format(this.Preparation_Date);
        return str_Preparation_Date;
    }

    public void setPreparation_Date(String str_Preparation_Date) throws ParseException {
        Date date = new SimpleDateFormat("yyyy-mm-dd").parse(str_Preparation_Date);
        this.Preparation_Date = date;
    }

    public String getCommodity_Id_Number() {
        return Commodity_Id_Number;
    }

    public void setCommodity_Id_Number(String commodity_Id_Number) {
        Commodity_Id_Number = commodity_Id_Number;
    }

    public int getWarehouse_Id_Number() {
        return Warehouse_Id_Number;
    }

    public void setWarehouse_Id_Number(int warehouse_Id_Number) {
        Warehouse_Id_Number = warehouse_Id_Number;
    }

    public int getCustomer_Id_Number() {
        return Customer_Id_Number;
    }

    public void setCustomer_Id_Number(int customer_Id_Number) {
        Customer_Id_Number = customer_Id_Number;
    }

    public int getSupplier_Id_Number() {
        return Supplier_Id_Number;
    }

    public void setSupplier_Id_Number(int supplier_Id_Number) {
        Supplier_Id_Number = supplier_Id_Number;
    }

    public int getOperator_Id_Number() {
        return Operator_Id_Number;
    }

    public void setOperator_Id_Number(int operator_Id_Number) {
        Operator_Id_Number = operator_Id_Number;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String unit) {
        Unit = unit;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }

    public Sale_PriceList() {
    }

    public Sale_PriceList(String sales_price_number, Date preparation_date, String commodity_id_number, int warehouse_id_number, int customer_id_number, int supplier_id_number, int operator_id_number, String unit, String remarks) {
        Sales_Price_Number = sales_price_number;
        Preparation_Date = preparation_date;
        Commodity_Id_Number = commodity_id_number;
        Warehouse_Id_Number = warehouse_id_number;
        Customer_Id_Number = customer_id_number;
        Supplier_Id_Number = supplier_id_number;
        Operator_Id_Number = operator_id_number;
        Unit = unit;
        Remarks = remarks;
    }
}
