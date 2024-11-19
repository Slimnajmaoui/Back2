package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {
  List<Admin> findByusernameContaining(String title);
  List<Admin> findByemail(String email);
}