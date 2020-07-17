package com.sale.controller;

import com.sale.pojo.OrderStatus;
import com.sale.service.OrderStatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class OrderStatusController {

    @Autowired
    @Qualifier("OrderStatusServiceImpl")
    private OrderStatusService orderStatusService;

    @RequestMapping("/sale/queryOrderStatus")
    public String list(Model model)
    {
        model.addAttribute("list",orderStatusService.queryAllOrderStatus());
        return "query";
    }

    @RequestMapping("/sale/updateOrderStatus")
    public String update(Model model, OrderStatus orderStatus)
    {
        int i = orderStatusService.updateOrderStatus(orderStatus);
        if(i > 0)
            model.addAttribute("msg","更新成功");
        else model.addAttribute("msg","更新失败");
        return "redirect:/sale/queryOrderStatus";
    }

    @RequestMapping("/sale/toUpdatePage")
    public String toUpdatePage(Model model, OrderStatus orderStatus)
    {
        model.addAttribute("orderStatus_order_number",orderStatus.getOrder_number());
        model.addAttribute("orderStatus",orderStatus);
        System.out.println("orderStatus = " + orderStatus);
        return "updatePage";
    }

//    @RequestMapping("/sale/updateOrderStatus")
//    public String updateOrderStatus(Model model, OrderStatus orderStatus)
//    {
//        int i = orderStatusService.updateOrderStatus(orderStatus);
//        if(i> 0) model.addAttribute("msg","修改成功!");
//        else model.addAttribute("msg","修改失败!");
//        return "redirect:/sale/queryOrderStatus";
//    }

    @RequestMapping("/sale/toInsertPage")
    public String toInsertPage(Model model, OrderStatus orderStatus)
    {
        model.addAttribute("orderStatus",orderStatus);
        System.out.println("orderStatus = " + orderStatus);
        return "insertPage";
    }
/*    @InitBinder
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        simpleDateFormat.setLenient(false);
        CustomDateEditor dateEditor = new CustomDateEditor(simpleDateFormat, true);
        binder.registerCustomEditor(Date.class, dateEditor);
    }*/

    @RequestMapping("/sale/insertOrderStatus")
    public String insertOrderStatus(Model model, OrderStatus orderStatus)
    {
        orderStatusService.insertOrderStatus(orderStatus);
        System.out.println(orderStatus.getOrder_number());
        return "redirect:/sale/queryOrderStatus";
    }

    @RequestMapping("/sale/deleteOrderStatus")
    public String deleteOrderStatus(Model model,String Order_number)
    {
        orderStatusService.deleteOrderStatus(Order_number);
        return "redirect:/sale/queryOrderStatus";
    }

    @RequestMapping("/sale/queryOrderStatusByOrder_number")
    public String queryOrderStatusByOrder_number(Model model,String Order_number)
    {
        List<OrderStatus> orderStatus = orderStatusService.queryOrderStatusByOrder_number(Order_number);
        if(orderStatus.size() == 0) {
            model.addAttribute("msg", "未查询到结果!");
            orderStatus = orderStatusService.queryAllOrderStatus();
        }
        model.addAttribute("list",orderStatus);
        return "/query";
    }
}
