package com.example.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.role;


public interface RoleRopository extends JpaRepository<role, String> {

	role findByProfil(String profil);

}
