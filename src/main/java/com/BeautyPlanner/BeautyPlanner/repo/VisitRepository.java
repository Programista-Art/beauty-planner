package com.BeautyPlanner.BeautyPlanner.repo;

import com.BeautyPlanner.BeautyPlanner.models.Visit;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface VisitRepository extends JpaRepository<Visit, Integer> {
    Optional<Visit> findById(Long id);

    void deleteById(Long id);
}
