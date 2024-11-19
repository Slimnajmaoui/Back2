package com.example.demo.model;




import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class User {


  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)

  private Long id;

  private String nom;
  private String prenom;
  private String email ;
  private String mdp;
  private String datecreation;
  @ManyToOne
  private role role ;
private String statut;
}