package com.skilldistillery.jpacrud.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NBATeam {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String city;

	private int championships;

	private String coach;

	private String conference;

	@Column(name = "year_inserted")
	private LocalDateTime yearFounded;

	@Column(name = "team_goat")
	private String teamGoat;

	public NBATeam(String name, String city, int championships, String coach, String conference,
			LocalDateTime yearFounded, String teamGoat) {
		super();
		this.name = name;
		this.city = city;
		this.championships = championships;
		this.coach = coach;
		this.conference = conference;
		this.yearFounded = yearFounded;
		this.teamGoat = teamGoat;
	}

	public NBATeam() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getChampionships() {
		return championships;
	}

	public void setChampionships(int championships) {
		this.championships = championships;
	}

	public String getCoach() {
		return coach;
	}

	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getConference() {
		return conference;
	}

	public void setConference(String conference) {
		this.conference = conference;
	}

	public LocalDateTime getYearFounded() {
		return yearFounded;
	}

	public void setYearFounded(LocalDateTime yearFounded) {
		this.yearFounded = yearFounded;
	}

	public String getTeamGoat() {
		return teamGoat;
	}

	public void setTeamGoat(String teamGoat) {
		this.teamGoat = teamGoat;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("NBATeam [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", city=");
		builder.append(city);
		builder.append(", championships=");
		builder.append(championships);
		builder.append(", coach=");
		builder.append(coach);
		builder.append(", conference=");
		builder.append(conference);
		builder.append(", yearFounded=");
		builder.append(yearFounded);
		builder.append(", teamGoat=");
		builder.append(teamGoat);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	

	
	
}
