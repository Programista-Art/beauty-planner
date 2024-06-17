package com.BeautyPlanner.BeautyPlanner.Controllers;


import com.BeautyPlanner.BeautyPlanner.models.Service;
import com.BeautyPlanner.BeautyPlanner.repo.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ServiceController {
    @Autowired
    private ServiceRepository serviceRepository;

    @GetMapping("/services")
    public String listServices(Model model) {
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        return "services-list";
    }
    //Gdy klikamy na przycisk więcej
    @GetMapping("/services/details/{id}")
    public String showServiceDetails(@PathVariable Long id, Model model) {
        Service service = serviceRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid service Id:" + id));
        model.addAttribute("service", service);
        return "service-details";
    }
}


