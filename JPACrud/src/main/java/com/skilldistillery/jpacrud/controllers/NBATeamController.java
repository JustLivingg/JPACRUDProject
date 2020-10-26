package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.data.NBADAO;
import com.skilldistillery.jpacrud.entities.Nbateam;

@Controller
public class NBATeamController {

	@Autowired
	private NBADAO nbaDAO;

	@RequestMapping(path = "/")
	public String index(Model model) {
		return "index";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "getTeam.do")
	public String getTeam(Model model, Integer tid) {
		Nbateam team = nbaDAO.findByID(tid);
		model.addAttribute("team", team);
		return "nba/show";

	}
	
	

	@RequestMapping(path = "createTeamForm.do", method = RequestMethod.GET)
	public String createTeamForm(Nbateam team) {

		return "nba/newTeam";
	}

	@RequestMapping(path = "createTeam.do", method = RequestMethod.POST)
	public String createTeam(Nbateam team, Model model) {
		model.addAttribute("newTeam", nbaDAO.create(team));
		return "nba/showNewTeam";
	}

	@RequestMapping(path = "deleteTeam.do")
	public String deleteTeam(int id, Model model) {
		if (nbaDAO.deleteTeam(id)) {
			model.addAttribute("result", "Team Deleted!");
		}

		else {
			model.addAttribute("result", "Team Not Found!");
		}
		return "nba/show";
	}

	@RequestMapping(path = "updateTeamForm.do", method = RequestMethod.GET)
	public String updateTeamForm(Nbateam team, Integer id, Model model) {
		model.addAttribute("team", nbaDAO.findByID(id));
		return "nba/updateTeam";
	}

	@RequestMapping(path = "updateTeam.do", method = RequestMethod.POST)
	private String updatePlayer(Integer id, Model model, Nbateam team) {
		nbaDAO.update(id, team);
		model.addAttribute("team", team);

		return "nba/show";
	}

}
