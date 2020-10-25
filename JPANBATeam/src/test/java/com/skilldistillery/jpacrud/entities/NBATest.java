package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.LocalDateTime;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class NBATest {
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
		team = em.find(Nbateam.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		team = null;
	}

	@Test
	void test_nba_team() {
		assertNotNull(team);
		assertEquals("Laker", team.getName());
		assertEquals("Los Angeles", team.getCity());
		assertEquals(17, team.getChampionships());
		assertEquals("Western", team.getConference());
		LocalDateTime lt = team.getYearFounded();
		assertEquals(1946, lt.getYear());
		assertEquals("Kobe Bryant", team.getTeamGoat());
	}

}
