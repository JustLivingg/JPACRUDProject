package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Nbateam;

@Transactional
@Service
public class NBADAOImpl implements NBADAO {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("NBAPU");

	@PersistenceContext
	private EntityManager em;

	@Override
	public Nbateam findByID(int id) {
		return em.find(Nbateam.class, id);
	}

	@Override
	public List<Nbateam> findAll() {
		String jpql = "Select n FROM Nbateam n ";
		return em.createQuery(jpql, Nbateam.class).getResultList();
	}

	@Override
	public Nbateam create(Nbateam team) {
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
	public Nbateam update(int id, Nbateam team) {

		// Find the actor to be updated
		Nbateam dbTeam = em.find(Nbateam.class, id);

		// Start your transaction
//		em.getTransaction().begin();

		// Assign all the data from the sent in Actor object to the one in the database
		dbTeam.setName(team.getName());
		dbTeam.setCity(team.getCity());
		dbTeam.setChampionships(team.getChampionships());
		dbTeam.setCoach(team.getCoach());
		dbTeam.setConference(team.getConference());
		dbTeam.setYearFounded(team.getYearFounded());
		dbTeam.setTeamGoat(team.getTeamGoat());

//		em.flush();

		// Always commit transactions or it will automatically rollback;
//		em.getTransaction().commit();

//		em.close();
		return dbTeam;
	}

	@Override
	public boolean deleteTeam(int id) {

		Nbateam teamDelete = em.find(Nbateam.class, id);
//		em.getTransaction().begin();

		em.remove(teamDelete);

		boolean teamWasDeleted = !em.contains(teamDelete);

//		em.flush();
//
//		em.getTransaction().commit();

//		em.close();
		return teamWasDeleted;
	}

}
