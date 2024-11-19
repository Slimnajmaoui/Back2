package com.example.demo.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Message;

public interface MessageRepository extends JpaRepository<Message, String> {
  List<Message> findByidenvoieContaining(String idenvoie);
  List<Message> findByidenvoie(String idenvoie);
}