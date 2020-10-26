package com.skilldistillery.jpacrud;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpacrud.entities.Nbateam;

class NbaTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Nbateam team;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("NBAPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		team = em.find(Nbateam.class, 33);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		team = null;
	}

	@Test
	void test_nba_team() {
		assertNotNull(team);
		assertEquals("Supersonics", team.getName());
		assertEquals("Seattle", team.getCity());
		assertEquals(0, team.getChampionships());
		assertEquals("Western", team.getConference());
		assertEquals(2020, team.getYearFounded());
		assertEquals("Luke Eala", team.getTeamGoat());
	}

}