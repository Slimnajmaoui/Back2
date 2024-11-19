package com.example.demo.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Groupe;

public interface GroupeRepository extends JpaRepository<Groupe, String> {
  List<Groupe> findBynomContaining(String nom);
  List<Groupe> findBynom(String nom);
}