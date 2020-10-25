package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.NBATeam;

public interface NBATeamDAO {

	public NBATeam create(NBATeam team);
	public NBATeam update(int id, NBATeam team);
	public boolean destroy(int id);
	
}
