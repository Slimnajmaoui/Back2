package com.example.demo.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Tache;

public interface TacheRepository extends JpaRepository<Tache, String> {
  List<Tache> findBynomContaining(String idprojet);
  List<Tache> findBynom(String nom);
}