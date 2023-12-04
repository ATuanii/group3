package com.mycompany.spring_mvc_project_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {


    @RequestMapping(value = {"/shop"}, method = RequestMethod.GET)
    public String shop(Model model) {
        return "shop";
    }
    @RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
    public String cart(Model model) {
        return "cart";
    }
    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String about(Model model) {
        return "about";
    }
    @RequestMapping(value = {"/services"}, method = RequestMethod.GET)
    public String services(Model model) {
        return "services";
    }
    @RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
    public String contact(Model model) {
        return "contact";
    }
    @RequestMapping(value = {"/blog"}, method = RequestMethod.GET)
    public String blog(Model model) {return "blog";}
}
