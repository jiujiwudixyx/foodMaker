package com.controller;

import com.pojo.User;
import com.service.UserService;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

@RequestMapping("/user")



public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/allUser")
    public String list(Model model) {
        List<User> list = userService.queryAllUser();
        model.addAttribute("list", list);
        return "admin_list_user";
    }



    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "login";
    }

    @RequestMapping("/register")
    public String register(User user){
        System.out.println(user);
        System.out.println(user);
        System.out.println(user);
        userService.register(user);
        System.out.println(user);
        System.out.println(user);
        System.out.println(user);
        return "login";
    }
    @RequestMapping("/login")
    public String login(Model model,User user, HttpServletRequest request){
        System.out.println(user);
        System.out.println(user);
        user = userService.login(user);

        System.out.println(user);
        System.out.println(user);

        if(user!=null){

            HttpSession session = request.getSession();
            session.setAttribute("uname", user.getUserName());
            session.setAttribute("uid", user.getUserId());




            return "index";

        }else{
            model.addAttribute("msg", "<div class=\"am-alert am-alert-danger\" data-am-alert>\n" +
                    "                    <button type=\"button\" class=\"am-close\">&times;</button>\n" +
                    "                    <p>?????????/????????????????????????????????????</p>\n" +
                    "                </div>");
            return "login";
        }
    }
    //?????????????????????
    @RequestMapping("/del/{userId}")
    public String deleteUser(@PathVariable("userId") Long id) {
        userService.deleteUserById(id);
        return "redirect:/user/allUser";
    }
    /*//???????????????????????????
    @RequestMapping("toUpdateUser")
    public String toUpdateUser(Model model1, Long id) {
        User user1 = new User();
        System.out.println(user1);
        System.out.println(user1);
        System.out.println(userService.queryById(id));

        user1= userService.queryById(id);

        System.out.println(user1);
        System.out.println(user1);
        model1.addAttribute("user", user1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        System.out.println(model1);
        return "updateUser";
    }*/

//????????????-????????????
    @RequestMapping("/myInfomationQuery")
    public String userInfomationQuery(Model model, User user, HttpSession session ) {

        long id = (long) session.getAttribute("uid");

        user = userService.queryById(id);
        model.addAttribute("user", user);
        return "my_information_query";
    }
    //????????????-????????????
    @RequestMapping("/myInfomationUpdate")
    public String myInfomationRecharge(Model model, User user, HttpSession session ) {

        long id = (long) session.getAttribute("uid");

        user = userService.queryById(id);
        model.addAttribute("user", user);
        return "my_information_update";
    }
    //????????????-????????????
    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpSession session ) {
        long id = (long) session.getAttribute("uid");

        user.setUserId(id);
        System.out.println(user);



        userService.updateUser(user);
        System.out.println(user);

        return "my_information_query";
    }
}