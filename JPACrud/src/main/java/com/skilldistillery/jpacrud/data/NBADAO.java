package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Nbateam;

public interface NBADAO {

	Nbateam findByID(int id);
	
	public Nbateam create(Nbateam team);
	
	public Nbateam update(int id, Nbateam team);
	
	public boolean destroy(int id);
	
	List<Nbateam> findAll();
	
}
