package com.BeautyPlanner.BeautyPlanner.repo;

import com.BeautyPlanner.BeautyPlanner.models.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository  extends JpaRepository<Customer, Long> {
    Customer findByEmail(String email);

}
