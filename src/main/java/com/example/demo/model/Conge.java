package com.example.demo.model;



import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity

public class Conge {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;

  private String titre;
  private String description;
  private String etat;
  private String datedebut;
  private String datefin;
  private String datecreation;
  @ManyToOne
  private User user ;
  private String datemodification;

}