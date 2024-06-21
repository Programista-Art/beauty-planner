package com.BeautyPlanner.BeautyPlanner.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;


@Controller
public class MainController{

    @GetMapping("/")
    public String home(Model model){
        model.addAttribute("title","Beauty Planner");
        return "home";
    }

    @GetMapping("/calendar")
    public String calendar(Model model){
        model.addAttribute("title","Kalendarz");
        return "calendar";
    }
    @GetMapping("/clients")
    public String clients(Model model){
        model.addAttribute("title","Klienci");
        return "clients";
    }

    @GetMapping("/login")
    public String login(Model model){
        model.addAttribute("title","Logowanie");
        return "login";
    }

}
