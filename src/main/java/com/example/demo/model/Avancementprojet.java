package com.example.demo.model;



import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Avancementprojet {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;

  private String nom;
  private String description;
  private String datedebut;
  private String datefin;
  private String etat;
  private String avancement;
  private String datecreation;
  @ManyToOne
  private Affectationprojet affectationprojet ;
  private String datemodification;
}