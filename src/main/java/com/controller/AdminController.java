package com.controller;

import com.pojo.Admin;
import com.pojo.Order;
import com.service.AdminService;
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
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;
    private OrderService orderService;


    @RequestMapping("/allAdmin")
    public String list(Model model) {
        List<Admin> list = adminService.queryAllAdmin();
        model.addAttribute("list", list);
        return "allAdmin";
    }



//跳转至html有问题
   /* @RequestMapping("htmltest")
    public void htmltest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("htmltest.html").forward(request, response);
    }*/

    @RequestMapping("/register")
    public String register(Admin admin){
        System.out.println(admin);
        System.out.println(admin);
        System.out.println(admin);
        adminService.register(admin);
        System.out.println(admin);
        System.out.println(admin);
        System.out.println(admin);
        return "login";
    }
    @RequestMapping("/login")
    public String login(Model model,Admin admin, HttpServletRequest request){
        System.out.println(admin);
        System.out.println(admin);
        admin = adminService.login(admin);

        System.out.println(admin);
        System.out.println(admin);

        if(admin!=null){
            HttpSession session = request.getSession();
            session.setAttribute("aname", admin.getAdminName());
            session.setAttribute("aid", admin.getAdminId());
            return "admin";
        }else{
            model.addAttribute("msg", "<div class=\"am-alert am-alert-danger\" data-am-alert>\n" +
                    "                    <button type=\"button\" class=\"am-close\">&times;</button>\n" +
                    "                    <p>手机号/密码不正确，请重新输入。</p>\n" +
                    "                </div>");
            return "login_admin";
        }
    }
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "login_admin";
    }
    //已完成
    @RequestMapping("order3")
    public String order3(){return "redirect:/order/allOrder4";
    }
    //未完成
    @RequestMapping("order2")
    public String order2() {
        return "redirect:/order/allOrder3";
    }
    //未接单
    @RequestMapping("order1")
    public String order1() {
        return "redirect:/order/allOrder2";
    }
    //厨师列表
    @RequestMapping("listChef")
    public String listChef() {
        return "redirect:/chef/allChef";
    }
    //用户列表
    @RequestMapping("listUser")
    public String listUser(){return "redirect:/user/allUser"; }

    //删除模块，实现删除
    @RequestMapping("/del/{adminId}")
    public String deleteAdmin(@PathVariable("adminId") Long id) {
        adminService.deleteAdminById(id);
        return "redirect:/admin/allAdmin";
    }
    //进入更新页面，传值
    @RequestMapping("toUpdateAdmin")
    public String toUpdateAdmin(Model model1, Long id) {
        Admin admin1 = new Admin();
        System.out.println(admin1);
        System.out.println(admin1);
        System.out.println(adminService.queryById(id));

        admin1= adminService.queryById(id);

        System.out.println(admin1);
        System.out.println(admin1);
        model1.addAttribute("admin", admin1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        return "updateAdmin";
    }
    //更新模块，实现更新
    @RequestMapping("/updateAdmin")
    public String updateAdmin(Model model, Admin admin) {
        System.out.println(admin);
        System.out.println(admin);
        System.out.println(admin.getAdminId());
        System.out.println(admin.getAdminId());
        ////调试
        adminService.updateAdmin(admin);
        admin = adminService.queryById(admin.getAdminId());
        model.addAttribute("admin", admin);
        return "redirect:/admin/allAdmin";
    }

}