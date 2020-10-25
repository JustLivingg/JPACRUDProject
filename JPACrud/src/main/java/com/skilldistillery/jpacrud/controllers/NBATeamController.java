package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.data.NBADAO;
import com.skilldistillery.jpacrud.entities.Nbateam;

@Controller
public class NBATeamController {
	
	@Autowired
	private NBADAO nbaDAO;
	
	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Nbateam> teamList = nbaDAO.findAll();
		model.addAttribute("teams", teamList);
		return "index";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getTeam.do")
	public String getTeam(Model model, Integer tid) {
		Nbateam team = nbaDAO.findByID(tid);
		model.addAttribute("team", team);
		return "nba/show";

	}
	
	@RequestMapping(path = "createTeam.do", method = RequestMethod.GET)
	public String createPlayerForm(Nbateam team) {

		return "nba/newTeam";
	}
	
	@RequestMapping(path = "createPlayer.do", method = RequestMethod.POST)
	public String createPLayer(Nbateam team, Model model) {
		model.addAttribute("newTeam", nbaDAO.create(team));
		return "nba/showNewTeam";
	}
	
	@RequestMapping(path = "deleteTeam.do", method = RequestMethod.GET)
	public String deletePlayer(@RequestParam("tid") int tid, Model model) {
		if (nbaDAO.destroy(tid)) {
			model.addAttribute("result", "Team Deleted!");
		}

		else {
			model.addAttribute("result", "Team Not Found!");
		}
		return "nba/show";
	}

}
