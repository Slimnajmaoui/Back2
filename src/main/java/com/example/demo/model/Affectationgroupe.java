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
public class Affectationgroupe {
  @Id
	@GeneratedValue(strategy=GenerationType.AUTO)

  private Long id;

  private String nom;
  private String description;
  private String etat;
  @ManyToOne
  private User user;
  @ManyToOne
  private Groupe groupe ; 
private String datecreation;
  private String datemodification;

}