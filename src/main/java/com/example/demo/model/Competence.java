package com.example.demo.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Competence {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;

  private String nom;
  private String description;
  private String datecreation;
  private String datemodification;

  }