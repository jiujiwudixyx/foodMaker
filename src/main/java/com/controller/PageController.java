package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/page")
public class PageController {
    @Autowired
    private UserService userService;

    @RequestMapping("toDownload")
    public String toDownload() {
        return "download";
    }
    @RequestMapping("toIndex")
    public String toIndex() {
        return "index";
    }
    @RequestMapping("toMy")
    public String toMy() {
        return "my";
    }
    @RequestMapping("toMyWalletQuery")
    public String toMyWalletQuery() {
        return "my_wallet_query";
    }
    @RequestMapping("toMyWalletRecharge")
    public String toMyWalletRecharge() {
        return "my_wallet_recharge";
    }
    @RequestMapping("toAdmin")
    public String toAdmin() {
        return "admin";
    }
    @RequestMapping("toChef")
    public String toChef() {
        return "chef";
    }
    @RequestMapping("toRegister")
    public String toRegister() {
        return "register";
    }
    @RequestMapping("toLogin")
    public String toLogin() {
        return "login";
    }
    @RequestMapping("toRegisterChef")
    public String toRegisterChef() {
        return "register_chef";
    }

    @RequestMapping("toLoginAdmin")
    public String toLoginAdmin() {
        return "login_admin";
    }
    @RequestMapping("toLoginChef")
    public String toLoginChef() {
        return "login_chef";
    }
    /*@RequestMapping("toUpdateUser")
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

}