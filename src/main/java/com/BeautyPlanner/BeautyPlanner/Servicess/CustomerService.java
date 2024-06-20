package com.BeautyPlanner.BeautyPlanner.Servicess;

import com.BeautyPlanner.BeautyPlanner.models.Customer;

import java.util.List;

public interface CustomerService {
    Customer addCustomer(Customer customer);
    List<Customer> getAllCustomers();

}
