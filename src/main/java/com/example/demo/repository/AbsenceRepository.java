package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Absence;


public interface AbsenceRepository extends JpaRepository<Absence, String> {
  List<Absence> findBytitreContaining(String title);
  List<Absence> findBytitre(String titre);
}