package com.example.demo.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Projet;

public interface ProjetRepository extends JpaRepository<Projet, String> {
  List<Projet> findBynomContaining(String nom);
  List<Projet> findBynom(String nom);
}