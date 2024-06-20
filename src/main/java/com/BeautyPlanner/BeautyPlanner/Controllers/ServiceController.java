package com.BeautyPlanner.BeautyPlanner.Controllers;


import com.BeautyPlanner.BeautyPlanner.models.Service;
import com.BeautyPlanner.BeautyPlanner.repo.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/services")
public class ServiceController {
    @Autowired
    private ServiceRepository serviceRepository;
    @GetMapping
    public String listServices(Model model) {
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        return "services-list";
    }

    @GetMapping("/new")
    public String showAddServiceForm(Model model) {
        model.addAttribute("service", new Service());
        return "new-service";
    }

    @PostMapping("/new")
    public String saveService(@ModelAttribute Service service) {
        serviceRepository.save(service);
        return "redirect:/services";
    }

    @GetMapping("/details/{id}")
    public String showServiceDetails(@PathVariable Long id, Model model) {
        Service service = serviceRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid service Id:" + id));
        model.addAttribute("service", service);
        return "service-details";
    }

// Usuwanie usługi

@PostMapping("/delete/{id}")
public String deleteService(@PathVariable("id") Long id) {
    Optional<Service> service = serviceRepository.findById(id);
    if (service.isPresent()) {
        serviceRepository.delete(service.get());
    }
    return "redirect:/services";
}
}


