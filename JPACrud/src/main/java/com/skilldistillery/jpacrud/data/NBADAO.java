package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.NBATeam;

public interface NBADAO {

	NBATeam findByID(int id);
	
	List<NBATeam> findAll();
	
}
