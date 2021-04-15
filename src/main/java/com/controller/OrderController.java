package com.controller;

import com.pojo.Order;
import com.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/order")
//@SessionAttributes(value ={"uname","uid"})
public class OrderController {
    @Autowired
    private OrderService orderService;

    //查询全部
    @RequestMapping("/allOrder")
    public String list(Model model) {
        List<Order> list = orderService.queryAllOrder();
        model.addAttribute("list", list);
        return "my_order_ing";
    }

    /*//新建订单后转入未完成界面，查询条件：WHERE order_status="未支付"
    @RequestMapping("/allOrder1")
    public String list1(Model model) {
        List<Order> list = orderService.queryAllOrder1();
        model.addAttribute("list", list);
        return "my_order_ing";
    }

    //已完成界面，查询条件：WHERE order_status="已支付"
    @RequestMapping("/allOrder2")
    public String list10(Model model) {
        List<Order> list = orderService.queryAllOrder2();
        model.addAttribute("list", list);
        return "my_order_ed";
    }*/



    //管理员-未接单界面，查询条件：WHERE chef_id=null
    @RequestMapping("/allOrder2")
    public String list2(Model model) {
        List<Order> list = orderService.queryAllOrder3();
        model.addAttribute("list", list);
        return "admin_order_hall";
    }
    //管理员-未完成界面，查询条件：WHERE order_status="未支付"
    @RequestMapping("/allOrder3")
    public String list3(Model model) {
        List<Order> list = orderService.queryAllOrder1();
        model.addAttribute("list", list);
        return "admin_order_ing";
    }

    //管理员-已完成界面，查询条件：WHERE order_status="已支付"
    @RequestMapping("/allOrder4")
    public String list4(Model model) {
        List<Order> list = orderService.queryAllOrder2();
        model.addAttribute("list", list);
        return "admin_order_ed";
    }



    //厨师-订单大厅，查询条件：chef_id=NULL
    @RequestMapping("/allOrder5")
    public String list5(Model model) {
        List<Order> list = orderService.queryAllOrder3();
        model.addAttribute("list", list);
        return "chef_order_hall";
    }

    //厨师-未完成订单，查询条件：******************************bug
    @RequestMapping("/allOrder6")
    public String list6(Model model, HttpSession session) {

        //session获取厨师id
        long id = (long) session.getAttribute("cid");
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);


        List<Order> list = orderService.queryAllOrder4(id);

        model.addAttribute("list", list);
        return "chef_order_ing";
    }

    //厨师-已完成订单，查询条件：******************************bug
    @RequestMapping("/allOrder7")
    public String list7(Model model, HttpSession session, Order orde) {
        //session获取厨师id
        long id = (long) session.getAttribute("cid");
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);


        // List<Order> list = orderService.queryAllOrder5(id);
        List<Order> list = orderService.queryAllOrder5(id);

        model.addAttribute("list", list);
        return "chef_order_ed";
    }

    //用户-未完成订单，查询条件：******************************bug
    @RequestMapping("/allOrder8")
    public String list8(Model model, HttpSession session) {
        //session获取用户id
        long id = (long) session.getAttribute("uid");
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);


        //  List<Order> list = orderService.queryAllOrder6(id1);
        List<Order> list = orderService.queryAllOrder6(id);

        model.addAttribute("list", list);
        return "my_order_ing";
    }

    //用户-已完成订单，查询条件：******************************bug
    @RequestMapping("/allOrder9")
    public String list9(Model model, HttpSession session) {
        //session获取用户id
        long id = (long) session.getAttribute("uid");
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);


        //List<Order> list = orderService.queryAllOrder2(id1);
        List<Order> list = orderService.queryAllOrder7(id);

        model.addAttribute("list", list);
        return "my_order_ed";
    }


    @RequestMapping("toAddOrder")
    public String toAddOrder() {
        return "addOrder";
    }

    @RequestMapping("/addOrder")
    public String addOrder(Order order, HttpSession session) {
        System.out.println(order);
        System.out.println(order);
        System.out.println(order);
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        order.setOrderTimeCreate(sdf.format(d));


        if (order.getOrderTaocan().equals("39元两菜一汤")) {
            order.setOrderPrice(39);
            System.out.println("111");
        } else if (order.getOrderTaocan().equals("59元四菜一汤")) {
            order.setOrderPrice(39);
            System.out.println("222");
        } else if (order.getOrderTaocan().equals("99元八菜两汤")) {
            order.setOrderPrice(39);
            System.out.println("333");
        } else if (order.getOrderTaocan().equals("129元十二菜三汤")) {
            order.setOrderPrice(39);
            System.out.println("444");
        }


        System.out.println("当前时间：" + sdf.format(d));
        System.out.println(order.getOrderTimeCreate());
        System.out.println(order.getOrderPrice());
//session获取用户id
        long id = (long) session.getAttribute("uid");
        order.setUserId(id);


        orderService.addOrder(order);
        System.out.println(order);
        System.out.println(order);
        System.out.println(order);

        return "redirect:/order/allOrder8";
    }

    //用户删除订单
    @RequestMapping("/del/{orderId}")
    public String deleteOrder(@PathVariable("orderId") Long id) {
        orderService.deleteOrderById(id);
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);
        return "redirect:/order/allOrder8";
    }

    //支付订单
    @RequestMapping("/pay/{orderId}")
    public String payOrder(@PathVariable("orderId") Long id) {
        orderService.payOrderById(id);
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);
        return "redirect:/order/allOrder8";
    }

    //厨师接单
    @RequestMapping("/chefGet/{orderId}")
    public String chefGet(@PathVariable("orderId") Long id, HttpSession session, Order order) {
        //session获取厨师id
        long id1 = (long) session.getAttribute("cid");
        System.out.println(id1);
        System.out.println(id1);
        System.out.println(id1);

        order.setChefId(id1);
        order.setOrderId(id);
        System.out.println("********************************************");
        System.out.println(order);
        System.out.println(order);

        System.out.println(order);


        orderService.chefGetById(order);

        return "redirect:/order/allOrder6";
    }


    @RequestMapping("toOrderDetail")
    public String toOrderDetail(Model model, Long id) {


        Order order1 = new Order();
        System.out.println(order1);
        System.out.println(order1);
        order1 = orderService.queryById(id);
        model.addAttribute("order", order1);
        System.out.println(order1);
        System.out.println(order1);
        System.out.println(model);
        System.out.println(model);
        return "order_detail";
    }


    @RequestMapping("toUpdateOrder")
    public String toUpdateOrder(Model model, Long id) {


        Order order = orderService.queryById(id);
        model.addAttribute("order", order);

        System.out.println(model);
        System.out.println(model);
        return "order_update";
    }

    @RequestMapping("/updateOrder")
    public String updateOrder(Model model,Order order) {
        System.out.println(model);
        System.out.println(model);

        System.out.println(order);
        orderService.updateOrder(order);
        return "redirect:/order/allOrder8";
    }

    //管理员删除订单，del后加1
    @RequestMapping("/del1/{orderId}")
    public String deleteOrder1(@PathVariable("orderId") Long id) {
        orderService.deleteOrderById(id);
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);
        return "redirect:/order/allOrder2";
    }
    //管理员查看订单详情，toOrderDetail后加1
    @RequestMapping("toOrderDetail1")
    public String toOrderDetail1(Model model, Long id) {


        Order order1 = new Order();
        System.out.println(order1);
        System.out.println(order1);
        order1 = orderService.queryById(id);
        model.addAttribute("order", order1);
        System.out.println(order1);
        System.out.println(order1);
        System.out.println(model);
        System.out.println(model);
        return "admin_order_detail";
    }
    //厨师删除订单，del后加2
    @RequestMapping("/del2/{orderId}")
    public String deleteOrder2(@PathVariable("orderId") Long id) {
        orderService.deleteOrderById(id);
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);
        return "redirect:/order/allOrder5";
    }
    //厨师查看订单详情，toOrderDetail后加2
    @RequestMapping("toOrderDetail2")
    public String toOrderDetail2(Model model, Long id) {


        Order order1 = new Order();
        System.out.println(order1);
        System.out.println(order1);
        order1 = orderService.queryById(id);
        model.addAttribute("order", order1);
        System.out.println(order1);
        System.out.println(order1);
        System.out.println(model);
        System.out.println(model);
        return "chef_order_detail";
    }
}