package com.example.demo.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Profil;

public interface ProfilRepository extends JpaRepository<Profil, String> {
  List<Profil> findBynomContaining(String description);
  List<Profil> findBynom(String nom);
}