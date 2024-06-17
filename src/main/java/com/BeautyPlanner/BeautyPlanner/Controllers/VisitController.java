package com.BeautyPlanner.BeautyPlanner.Controllers;
//import ch.qos.logback.core.model.Model;
import com.BeautyPlanner.BeautyPlanner.models.Service;
import com.BeautyPlanner.BeautyPlanner.models.Visit;
import com.BeautyPlanner.BeautyPlanner.models.Facility;
import com.BeautyPlanner.BeautyPlanner.models.VisitStatus;
import com.BeautyPlanner.BeautyPlanner.repo.VisitRepository;
import com.BeautyPlanner.BeautyPlanner.repo.FacilityRepository;
import com.BeautyPlanner.BeautyPlanner.repo.ServiceRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/visits")
public class VisitController {
    @Autowired
    private VisitRepository visitRepository;

    @Autowired
    private ServiceRepository serviceRepository;

    @Autowired
    private FacilityRepository facilityRepository;

    @GetMapping("/new")
    public String showReservationForm(Model model) {
        model.addAttribute("visit", new Visit());

        List<Service> services = serviceRepository.findAll();
        List<Facility> facilities = facilityRepository.findAll();
        model.addAttribute("services", services);
        model.addAttribute("facilities", facilities);

        return "new-visit";
}
    //Rezerwacja wizyty
    @PostMapping("/new")
    public String saveVisit(@ModelAttribute Visit visit) {
        visit.setDateAndTimeOfVisit(LocalDateTime.now());
        visit.setStatus(VisitStatus.Oczekuje); // Ustawiamy status na Oczekuje z enuma VisitStatus
        visitRepository.save(visit);
        return "redirect:/visits";
    }
    //Lista wizyt
    @GetMapping
    public String listVisits(Model model) {
        List<Visit> visits = visitRepository.findAll();
        model.addAttribute("visits", visits);
        return "visits";
    }

    // Pokazuje szczegóły wizyty
    @GetMapping("/{id}")
    public String visitDetails(@PathVariable("id") Integer id, Model model) {
        Optional<Visit> optionalVisit = visitRepository.findById(id);
        if (optionalVisit.isPresent()) {
            Visit visit = optionalVisit.get();
            model.addAttribute("visit", visit);
            return "visit-details";
        } else {
            return "404";
        }
    }

    // Formularz zmiany statusu wizyty
    @GetMapping("/{id}/edit")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Optional<Visit> optionalVisit = visitRepository.findById(id);
        if (optionalVisit.isPresent()) {
            model.addAttribute("visit", optionalVisit.get());
            return "edit-visit";
        } else {
            return "404";
        }
    }
    // Zapisuje zmiany w statusie wizyty
    @PostMapping("/{id}/edit")
    public String updateVisitStatus(@PathVariable("id") Long id, @RequestParam("status") String status) {
        Optional<Visit> optionalVisit = visitRepository.findById(id);
        if (optionalVisit.isPresent()) {
            Visit visit = optionalVisit.get();
            visit.setStatus(VisitStatus.valueOf(status));
            visitRepository.save(visit);
            return "redirect:/visits/" + id;
//            return "visits";
        } else {
//           return "404";
            return "visits";
        }
    }

    // Usuwa wizytę
    @PostMapping("/{id}/delete")
    @Transactional
    public String deleteVisit(@PathVariable("id") Long id) {
        visitRepository.deleteById(id);
        return "redirect:/visits";
    }

}
