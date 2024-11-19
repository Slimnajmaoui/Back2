
	
	package com.example.demo.model;


	import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

	@NoArgsConstructor
	@AllArgsConstructor
	@Data
	@Entity
	public class Tache {
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)

	  private Long id;

	  private String nom;
	  private String description;
	  private String datedebut;
	  private String datefin;
	  @ManyToOne
	  private Projet idprojet;
	  private String etat;
	  private String datecreation;
	  private String datemodification;

}