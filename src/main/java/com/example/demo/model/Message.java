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

public class Message {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;

  private String idenvoie;
  private String idreception;
  private String sujet;
  private String texte;
  private String etat;
  private String datecreationmessage;

}