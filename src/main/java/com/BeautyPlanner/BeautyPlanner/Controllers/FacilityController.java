package com.BeautyPlanner.BeautyPlanner.Controllers;
import com.BeautyPlanner.BeautyPlanner.models.Service;
import com.BeautyPlanner.BeautyPlanner.repo.ServiceRepository;
import org.springframework.ui.Model;
import com.BeautyPlanner.BeautyPlanner.models.Facility;
import com.BeautyPlanner.BeautyPlanner.repo.FacilityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/facilities")
public class FacilityController {
    @Autowired
    private FacilityRepository facilityRepository;

    @GetMapping
    public String listFacilities(Model model) {
        List<Facility> facilities = facilityRepository.findAll();
        model.addAttribute("facilities", facilities);
        return "facilities";
    }

    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("facility", new Facility());
        return "new-facility";
    }

    //Dodanie nowej placówki

    @PostMapping("/new")
    public String createFacility(Facility facility) {
        facilityRepository.save(facility);
        return "redirect:/facilities";
    }
    //Usuwanie placówki

    @GetMapping("/delete/{id}")
    public String deleteFacility(@PathVariable("id") int id) {
        Facility facility = facilityRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid facility Id:" + id));
        facilityRepository.delete(facility);
        return "redirect:/facilities";
    }
}
