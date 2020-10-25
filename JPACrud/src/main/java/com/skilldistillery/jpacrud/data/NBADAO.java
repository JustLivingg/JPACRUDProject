package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Team;

public interface NBADAO {

	Team findByID(int id);
	
	List<Team> findAll();
	
}
