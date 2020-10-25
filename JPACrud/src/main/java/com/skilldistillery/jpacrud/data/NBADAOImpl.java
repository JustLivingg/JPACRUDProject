package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.NBATeam;

@Transactional
@Service
public class NBADAOImpl implements NBADAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public NBATeam findByID(int id) {
		return em.find(NBATeam.class, id);
	}

	@Override
	public List<NBATeam> findAll() {
		String jpql = "Select n FROM Nbateam n ";
		return em.createQuery(jpql, NBATeam.class).getResultList();
	}

}
