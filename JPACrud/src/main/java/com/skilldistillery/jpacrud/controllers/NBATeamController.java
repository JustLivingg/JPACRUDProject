package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.NBADAO;
import com.skilldistillery.jpacrud.entities.Team;

@Controller
public class NBATeamController {
	
	@Autowired
	private NBADAO nbaDAO;
	
	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Team> teamList = nbaDAO.findAll();
		model.addAttribute("teams", teamList);
		return "index";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getTeam.do")
	public String getFilm(Model model, Integer tid) {
		Team team = nbaDAO.findByID(tid);
		model.addAttribute("team", team);
		return "nba/show";

	}

}
