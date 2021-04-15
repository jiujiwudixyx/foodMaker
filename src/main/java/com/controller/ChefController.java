package com.controller;

import com.pojo.Chef;
import com.pojo.User;
import com.service.ChefService;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/chef")
public class ChefController {
    @Autowired
    private ChefService chefService;
    private OrderService orderService;

    @RequestMapping("/allChef")
    public String list(Model model) {
        List<Chef> list = chefService.queryAllChef();
        model.addAttribute("list", list);
        return "admin_list_chef";
    }






    @RequestMapping("/register")
    public String register(Chef chef){
        System.out.println(chef);
        System.out.println(chef);
        System.out.println(chef);
        chefService.register(chef);
        System.out.println(chef);
        System.out.println(chef);
        System.out.println(chef);
        return "login_chef";
    }
    @RequestMapping("/login")
    public String login(Model model,Chef chef, HttpServletRequest request){
        System.out.println(chef);
        System.out.println(chef);
        chef = chefService.login(chef);

        System.out.println(chef);
        System.out.println(chef);

        if(chef!=null){
            HttpSession session = request.getSession();
            session.setAttribute("cname", chef.getChefName());
            session.setAttribute("cid", chef.getChefId());
            return "chef";
        }else{
            model.addAttribute("msg", "<div class=\"am-alert am-alert-danger\" data-am-alert>\n" +
                    "                    <button type=\"button\" class=\"am-close\">&times;</button>\n" +
                    "                    <p>手机号/密码不正确，请重新输入。</p>\n" +
                    "                </div>");
            return "login_chef";
        }
    }
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "login_chef";
    }
    //订单大厅
    @RequestMapping("orderHall")
    public String orderHall(){return "redirect:/order/allOrder5"; }
    //未完成
    @RequestMapping("order1")
    public String order1() {
        return "redirect:/order/allOrder6";
    }
    //已完成
    @RequestMapping("order2")
    public String order2() {
        return "redirect:/order/allOrder7";
    }

//厨师钱包
    @RequestMapping("chefWallet")
    public String chefWallet() {
        return "chef_wallet";
    }



    //管理员删除厨师
    @RequestMapping("/delChef/{chefId}")
    public String deleteChef(@PathVariable("chefId") Long id) {
        chefService.deleteChefById(id);
        return "redirect:/chef/allChef";
    }
    //进入更新页面，传值
    @RequestMapping("toUpdateChef")
    public String toUpdateChef(Model model1, Long id) {
        Chef chef1 = new Chef();
        System.out.println(chef1);
        System.out.println(chef1);
        System.out.println(chefService.queryById(id));

        chef1= chefService.queryById(id);

        System.out.println(chef1);
        System.out.println(chef1);
        model1.addAttribute("chef", chef1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        return "updateChef";
    }
    //更新模块，实现更新
    @RequestMapping("/updateChef")
    public String updateChef( Chef chef,HttpSession session) {



        long id = (long) session.getAttribute("cid");

        chef.setChefId(id);
        System.out.println(chef);



        chefService.updateChef(chef);
        System.out.println(chef);

        return "chef_information_query";
    }

    @RequestMapping("/chefInfomationQuery")
    public String chefInfomationQuery(Model model,Chef chef, HttpSession session ) {

        long id = (long) session.getAttribute("cid");

        chef = chefService.queryById(id);
        model.addAttribute("chef", chef);
        return "chef_information_query";
    }

    @RequestMapping("/chefInfomationUpdate")
    public String chefInfomationRecharge(Model model,Chef chef, HttpSession session ) {

        long id = (long) session.getAttribute("cid");

        chef = chefService.queryById(id);
        model.addAttribute("chef", chef);

        return "chef_information_update";
    }
    //厨师删除订单
    @RequestMapping("/del/{orderId}")
    public String deleteOrder(@PathVariable("orderId") Long id) {
        orderService.deleteOrderById(id);
        System.out.println(id);
        System.out.println(id);
        System.out.println(id);
        return "redirect:/order/allOrder5";
    }

}