package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Affectationgroupe;
import com.example.demo.model.Affectationprojet;
import com.example.demo.model.User;

public interface AffectationprojetRepository extends JpaRepository<Affectationprojet, String>{
	  List<Affectationprojet> findBynomContaining(String title);
	  List<Affectationprojet> findBynom(String nom);
	List<Affectationprojet> findByUser(User u);
}
