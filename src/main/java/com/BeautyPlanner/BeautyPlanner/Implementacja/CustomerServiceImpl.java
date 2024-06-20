package com.BeautyPlanner.BeautyPlanner.Implementacja;

import com.BeautyPlanner.BeautyPlanner.Servicess.CustomerService;
import com.BeautyPlanner.BeautyPlanner.models.Customer;
import com.BeautyPlanner.BeautyPlanner.repo.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
        @Autowired
        private CustomerRepository customerRepository;

        @Override
        public Customer addCustomer(Customer customer) {
            return customerRepository.save(customer);
        }

        @Override
        public List<Customer> getAllCustomers() {
            return customerRepository.findAll();
        }

}
