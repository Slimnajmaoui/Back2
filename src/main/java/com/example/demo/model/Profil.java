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
public class Profil {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)

  private Long id;

  private String nom;
  private String prenom;
  private String diplome;
  private String experience;
  private String niveau;
  private String etat;
  private String datecreation;
  private String datemodification;
  
  
}