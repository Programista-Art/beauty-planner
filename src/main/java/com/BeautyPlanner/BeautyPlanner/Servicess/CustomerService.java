package com.BeautyPlanner.BeautyPlanner.Servicess;

import com.BeautyPlanner.BeautyPlanner.models.Customer;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

public interface CustomerService {
    Customer addCustomer(Customer customer);
    List<Customer> getAllCustomers();

}
