package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.Team;

public interface NBATeamDAO {

	public Team create(Team team);
	public Team update(int id, Team team);
	public boolean destroy(int id);
	
}
