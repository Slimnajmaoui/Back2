package com.example.demo.model;


import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Admin {
  @Id
	@GeneratedValue(strategy=GenerationType.AUTO)

  private Long id;

  private String username;
  private String motdepasse;
  private String email;
  private String role;
  private String permissions;

}