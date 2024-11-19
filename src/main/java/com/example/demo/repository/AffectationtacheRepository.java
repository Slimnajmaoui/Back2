package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Affectationtache;
import com.example.demo.model.User;

public interface AffectationtacheRepository extends JpaRepository<Affectationtache, String> {
  List<Affectationtache> findBynomContaining(String title);
  List<Affectationtache> findBynom(String nom);
List<Affectationtache> findByUser(User u);
}