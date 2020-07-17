package com.sale.controller;

import com.sale.pojo.Sale_OrderList;
import com.sale.pojo.Sale_PriceList;
import com.sale.service.Sale_OrderListandPriceListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/sale_OrderListandPriceList")
public class Sale_OrderListandPriceListController {
    //Controller层调service层
    @Autowired
    @Qualifier("Sale_OrderListandPriceListServiceImpl")
    private Sale_OrderListandPriceListService sale_OrderListandPriceListService;

    @RequestMapping("/queryallOrderList")
    public String list(Model model) {
        for(int i = 0; i< sale_OrderListandPriceListService.queryAllSale_OrderList().size(); i++)
        {
            System.out.print(sale_OrderListandPriceListService.queryAllSale_OrderList().get(i).toString());
        }
        model.addAttribute("list", sale_OrderListandPriceListService.queryAllSale_OrderList());
        return "queryallOrderList";
    }
    @RequestMapping("/toViewDetailsOrderList")
    public String toViewDetails(Model model, Sale_OrderList sale_OrderList)
    {
        model.addAttribute("sale_OrderList",sale_OrderList);//向前端传对象
        System.out.println("sale_OrderList = " + sale_OrderList);
        return "detailsOrderListPage";
    }
    @RequestMapping("/deleteSale_OrderList")
    public String deleteSale_OrderList(Model model,String sales_order_number)
    {
        sale_OrderListandPriceListService.deleteSale_OrderListBysales_order_number(sales_order_number);
        return "redirect:/sale_OrderListandPriceList/queryallOrderList";
    }
    @RequestMapping("/querySale_OrderListBysales_order_number")
    public String querySale_OrderListBysales_order_number(Model model, String sales_order_number)
    {
        System.out.println(sales_order_number);
        List<Sale_OrderList> sale_OrderListServices = sale_OrderListandPriceListService.querySale_OrderListBysales_order_number(sales_order_number);
        if(sale_OrderListServices.size() == 0) {
            model.addAttribute("msg", "未查询到结果!");
        }

        model.addAttribute("list",sale_OrderListServices);
        return "queryBy";
    }
    @RequestMapping("/querySale_OrderListBytime")
    public String querySale_OrderListBytime(Model model, String time) {
        List<Sale_OrderList> sale_OrderListServices = sale_OrderListandPriceListService.querySale_OrderListBytime(time);
        if(sale_OrderListServices.size() == 0) {
            model.addAttribute("msg", "未查询到结果!");
        }

        model.addAttribute("list",sale_OrderListServices);
        return "queryBy";
    }

    @RequestMapping("/querySale_OrderListByworker_name")
    public String querySale_OrderListByworker_name (Model model, String worker_name)
    {
        System.out.println(worker_name);
        List<Sale_OrderList> sale_OrderListServices = sale_OrderListandPriceListService.querySale_OrderListByworker_name(worker_name);
        if(sale_OrderListServices.size() == 0) {
            model.addAttribute("msg", "未查询到结果!");
        }
        model.addAttribute("list",sale_OrderListServices);
        return "queryBy";
    }
    //跳转新增销售列表名单
    @RequestMapping("/toinsertSale_OrderList")
    public String toinsertSale_OrderList(){
        return "insertOrderListPage";
    }
    //添加销售列表的请求
    @RequestMapping("/insertSale_OrderList")
    public String insertSale_OrderList(Sale_OrderList sale_orderList){
        int i= sale_OrderListandPriceListService.insertSale_OrderList(sale_orderList);
        System.out.println(i);
        return "redirect:/sale_OrderListandPriceList/queryallOrderList";
    }

    @RequestMapping("/queryallPriceList")
    public String priceList(Model model) {
        for(int i = 0; i< sale_OrderListandPriceListService.queryAllSale_PriceList().size(); i++)
        {
            System.out.print(sale_OrderListandPriceListService.queryAllSale_PriceList().get(i).toString());
        }
        model.addAttribute("list", sale_OrderListandPriceListService.queryAllSale_PriceList());
        return "queryallPriceList";
    }

    @RequestMapping("/toViewDetailsPriceList")
    public String toViewDetails(Model model, Sale_PriceList sale_PriceList){
        model.addAttribute("sale_PriceList",sale_PriceList);
        System.out.println("sale_PriceList = " + sale_PriceList);
        return "detailsPriceListPage";
    }

    @RequestMapping("/deleteSale_PriceList")
    public String deleteSale_PriceList(Model model,String sales_Price_Number){
        sale_OrderListandPriceListService.deleteSale_PriceListByNumber(sales_Price_Number);
        return "redirect:/sale_OrderListandPriceList/queryallPriceList";
    }


    @RequestMapping("/toinsertSale_PriceList")
    public  String toinsertSale_PriceList(){
        return "insertPriceListPage";
    }
    @RequestMapping("/insertSale_PriceList")
    public String insertSale_PriceList(Sale_PriceList sale_PriceList){
        sale_OrderListandPriceListService.insertSale_PriceList(sale_PriceList);
        return "redirect:/sale_OrderListandPriceList/queryallPriceList";
    }

}
