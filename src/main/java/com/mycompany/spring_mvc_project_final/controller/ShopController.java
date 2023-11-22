package com.mycompany.spring_mvc_project_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public String home(Model model) {
        return "home";
    }
    @RequestMapping(value = {"/shop"}, method = RequestMethod.GET)
    public String shop(Model model) {
        return "shop";
    }
    @RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
    public String cart(Model model) {
        return "cart";
    }
    @RequestMapping(value = {"/services"}, method = RequestMethod.GET)
    public String services(Model model) {
        return "services";
    }
}
