package com.example.demo.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Affectationprojet;
import com.example.demo.model.Avancementtache;
import com.example.demo.repository.AffectationprojetRepository;
import com.example.demo.repository.AvancementtacheRepository;

import org.springframework.http.HttpStatus;
import java.util.ArrayList;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import java.util.Optional;
import org.springframework.web.bind.annotation.DeleteMapping;

@CrossOrigin("*")
@RestController
@RequestMapping("/api")
public class AvancementtacheController {

  @Autowired
  AvancementtacheRepository AvancementtacheRepository;

  @GetMapping("/Avancementtaches")
  public ResponseEntity<List<Avancementtache>> getAllAvancementtaches(@RequestParam(required = false) String qualite) {
    try {
        List<Avancementtache> Avancementtaches = new ArrayList<Avancementtache>();

        if (qualite == null)
          AvancementtacheRepository.findAll().forEach(Avancementtaches::add);
        else
          AvancementtacheRepository.findBynomContaining(qualite).forEach(Avancementtaches::add);

        if (Avancementtaches.isEmpty()) {
          return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<>(Avancementtaches, HttpStatus.OK);
      } catch (Exception e) {
        return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
      }
  }

  @GetMapping("/Avancementtaches/{id}")
  public ResponseEntity<Avancementtache> getAvancementtacheById(@PathVariable("id") String id) {
    Optional<Avancementtache> AvancementtacheData = AvancementtacheRepository.findById(id);

    if (AvancementtacheData.isPresent()) {
      return new ResponseEntity<>(AvancementtacheData.get(), HttpStatus.OK);
    } else {
      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
  }
  @Autowired
  AffectationprojetRepository affectationprojetrepos ; 
  @PostMapping("/Avancementtaches")
  public ResponseEntity<Avancementtache> createAvancementtache(@RequestBody Avancementtache Avancementtache,String idprojet) {
	  Affectationprojet affec = this.affectationprojetrepos.findById(idprojet).get();
	  Avancementtache.setIdprojet(affec);
	  
	  try {
        Avancementtache _Avancementtache = AvancementtacheRepository.save(Avancementtache);
        return new ResponseEntity<>(_Avancementtache, HttpStatus.CREATED);
      } catch (Exception e) {
        return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
      }
  }

  @PutMapping("/Avancementtaches/{id}")
  public ResponseEntity<Avancementtache> updateAvancementtache(@PathVariable("id") String id, @RequestBody Avancementtache Avancementtache) {
    Optional<Avancementtache> AvancementtacheData = AvancementtacheRepository.findById(id);

    if (AvancementtacheData.isPresent()) {
      Avancementtache _Avancementtache = AvancementtacheData.get();
      _Avancementtache.setNom(Avancementtache.getNom());
      _Avancementtache.setDescription(Avancementtache.getDescription());
      _Avancementtache.setDatedebut(Avancementtache.getDatedebut());
      _Avancementtache.setDatefin(Avancementtache.getDatefin());
      _Avancementtache.setIdprojet(Avancementtache.getIdprojet());
      _Avancementtache.setEtat(Avancementtache.getEtat());
      _Avancementtache.setAvancement(Avancementtache.getAvancement());
      _Avancementtache.setDatecreation(Avancementtache.getDatecreation());
      return new ResponseEntity<>(AvancementtacheRepository.save(_Avancementtache), HttpStatus.OK);
    } else {
      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
  }

  @DeleteMapping("/Avancementtaches/{id}")
  public ResponseEntity<HttpStatus> deleteAvancementtache(@PathVariable("id") String id) {
    try {
        AvancementtacheRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
      } catch (Exception e) {
        return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
      }
  }

  @DeleteMapping("/Avancementtaches")
  public ResponseEntity<HttpStatus> deleteAllAvancementtaches() {
    try {
        AvancementtacheRepository.deleteAll();
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
      } catch (Exception e) {
        return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
      }
  }



}