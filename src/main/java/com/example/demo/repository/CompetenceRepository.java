package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Competence;

public interface CompetenceRepository extends JpaRepository<Competence, String> {
  List<Competence> findBynomContaining(String title);
  List<Competence> findBynom(String nom);
}