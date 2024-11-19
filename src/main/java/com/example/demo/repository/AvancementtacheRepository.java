package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Avancementtache;

public interface AvancementtacheRepository extends JpaRepository<Avancementtache, String> {
  List<Avancementtache> findBynomContaining(String title);
  List<Avancementtache> findBynom(String nom);
}