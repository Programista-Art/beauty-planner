package com.BeautyPlanner.BeautyPlanner.repo;
import com.BeautyPlanner.BeautyPlanner.models.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface ServiceRepository extends JpaRepository<Service, Long>{
}
