package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Avancementprojet;

public interface AvancementprojetRepository extends JpaRepository<Avancementprojet, String> {
  List<Avancementprojet> findBynomContaining(String title);
  List<Avancementprojet> findBynom(String nom);
}