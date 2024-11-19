package com.example.demo.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Absence {
  @Id
	@GeneratedValue(strategy=GenerationType.AUTO)

  private Long id;

  private String titre;
  private String description;
  private String etat;
  private String datedebut;
  private String datefin;
  private String datecreation;

}