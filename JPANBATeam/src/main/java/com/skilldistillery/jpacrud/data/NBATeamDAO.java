package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.Nbateam;

public interface NBATeamDAO {

	public Nbateam create(Nbateam team);
	public Nbateam update(int id, Nbateam team);
	public boolean destroy(int id);
	
}
