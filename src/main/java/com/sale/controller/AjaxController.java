package com.sale.controller;

import com.sale.pojo.SalesReturnOrder;
import com.sale.service.ReturnOrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@RestController
public class AjaxController {

    @Autowired
    ReturnOrderServiceImpl returnOrderService;

    @RequestMapping("/sale/queryApi")
    public Map<String,Object> queryApi(String id, String order_date, String worker)
    {
        Map<String,Object> mp = new TreeMap<>();
        List<SalesReturnOrder> list = returnOrderService.queryOrder(id,order_date,worker);
        if(list.size()>0)
        {
            mp.put("status","success");
            mp.put("msg","查询成功，共查询到"+list.size()+"条数据！");
        }
        else{
            mp.put("status","failed");
            mp.put("msg","未查询到相关数据！");
        }
        mp.put("list",list);
        return mp;
    }
}
