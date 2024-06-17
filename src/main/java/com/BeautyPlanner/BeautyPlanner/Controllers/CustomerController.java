package com.BeautyPlanner.BeautyPlanner.Controllers;
import com.BeautyPlanner.BeautyPlanner.repo.CustomerRepository;
import org.springframework.ui.Model;
import com.BeautyPlanner.BeautyPlanner.Servicess.CustomerService;
import com.BeautyPlanner.BeautyPlanner.models.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private CustomerRepository customerRepository;

    //Pokazuje stronę z dodaniem klientów

    @GetMapping("/customers")
    public String showCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer-form";
    }

    //Dodawanie klientów

    @PostMapping("/customers/add")
    public String addCustomer(@ModelAttribute Customer customer) {
        customerRepository.save(customer);
        return "redirect:/customers/list";
    }

    //Wyświetlanie klientów

    @GetMapping("/customers/list")
    public String listCustomers(Model model) {
        List<Customer> customers = customerRepository.findAll();
        model.addAttribute("customers", customers);
        return "customer-list";
    }

    //Usuwanie klienta
    @PostMapping("/customers/delete/{id}")
    public String deleteCustomer(@PathVariable Long id) {
        customerRepository.deleteById(id);
        return "redirect:/customers/list";
    }

}
