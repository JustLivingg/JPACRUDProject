package com.skilldistillery.jpacrud.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NBATeam {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String city;
	
	private int championships;
	
	private String coach;
	
	private String conference;
	
	private LocalDateTime yearFounded;
	
	@Column(name = "team_goat")
	private String teamGoat;
	
}
