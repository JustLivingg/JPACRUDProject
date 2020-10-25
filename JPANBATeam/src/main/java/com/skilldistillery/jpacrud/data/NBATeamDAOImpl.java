package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpacrud.entities.NBATeam;

public class NBATeamDAOImpl implements NBATeamDAO {
	
	private static EntityManagerFactory emf = 
			Persistence.createEntityManagerFactory("NBAPU");

	@Override
	public NBATeam create(NBATeam team) {
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();
		// write the customer to the database
		
		System.out.println("Team Before:  " + team);
		em.persist(team);
		System.out.println("Team After: " + team);
		
		
		// update the "local" Customer object
		em.flush();
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();

		em.close();
		return team;
	}

	@Override
	public NBATeam update(int id, NBATeam team) {
	EntityManager em = emf.createEntityManager();
		
		//Find the actor to be updated
		NBATeam dbTeam = em.find(NBATeam.class, id);
		
		//Start your transaction
		em.getTransaction().begin();
		
		//Assign all the data from the sent in Actor object to the one in the database
		dbTeam.setName(team.getName());
		dbTeam.setCity(team.getCity());
		
		em.flush();
		
		//Always commit transactions or it will automatically rollback;
		em.getTransaction().commit();
		
		em.close();
		return dbTeam;
	}

	@Override
	public boolean destroy(int id) {
	EntityManager em = emf.createEntityManager();
		
		NBATeam teamDelete = em.find(NBATeam.class, id);
		em.getTransaction().begin();
		
		em.remove(teamDelete);
		
		boolean teamWasDeleted = !em.contains(teamDelete);
		
		em.flush();
		
		em.getTransaction().commit();
		
		em.close();
		return teamWasDeleted;
	}
	

}
