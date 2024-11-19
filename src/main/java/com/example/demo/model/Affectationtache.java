package com.example.demo.model;



	import javax.persistence.*;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
	@NoArgsConstructor
	@AllArgsConstructor
	@Data
	@Entity
	public class Affectationtache {
	  @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  private Long  id;

	  private String nom;
	  private String description;
	  private String etat;
	  @ManyToOne
	  private User user;
	  @ManyToOne
	  private Tache tache ; 
	  
	 	private String datecreation;
	  private String datemodification;
	  private String datedebut;
	  private String datefin;
}