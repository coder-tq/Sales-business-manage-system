package com.sale.controller;

import com.sale.pojo.SalesReturnOrder;
import com.sale.service.ReturnOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class OrderController {

    @Autowired
    @Qualifier("ReturnOrderServiceImpl")
    private ReturnOrderService OrderService;

//    @RequestMapping("/sale/toInsertPage")
//    public String addOrder(SalesReturnOrder reorder)
//    {
//        System.out.println("reorder = " + reorder);
//        OrderService.addOrder(reorder);
//        return "redirect:/sale/queryAllOrder";
//    }
    @RequestMapping("/sale/doInsert")
    public String addOrder(Model model,String id, String order_date, String warehouse, String worker, String bar_code
            , String advance_payment, String account, String customer, String supplier, String order_id, String note) throws ParseException
    {
        OrderService.addOrder(id, order_date, warehouse, worker, bar_code, advance_payment, account, customer, supplier, order_id, note);
        model.addAttribute("msg","添加成功！");
        return "insertOrder";
    }

    @RequestMapping("/sale/insertOrder")
    public String insertOrder()
    {
        return "insertOrder";
    }


    @RequestMapping("/sale/queryAllOrder")
    public String queryAllOrder(Model model)
    {
        model.addAttribute("list",OrderService.queryAllOrder());
        return "orderQuery";
    }
    @RequestMapping("/sale/queryOrder")
    public String queryAllOrder(Model model,String id, String date, String worker)
    {
        model.addAttribute("list",OrderService.queryOrder(id, date, worker));
        return "orderQuery";
    }

    @RequestMapping("/sale/deleteOrder")
    public String deleteOrder(String id)
    {
        OrderService.deleteOrder(id);
        return "redirect:/sale/queryAllOrder";
    }
}
