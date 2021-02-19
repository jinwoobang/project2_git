package com.edu.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.login.dao.EduDao;
import com.edu.login.dto.EduBean;

@Controller

public class EduController {
	@Resource(name="springEduDao")
	private EduDao dao;
	
	@RequestMapping(value="eduSpring.do")
	public String insertMemberSpring(EduBean member) {
		System.out.println(member);
		dao.insertMember(member);
		return "redirect:eduSpringList.do";
		
	}
	@RequestMapping(value="eduSpringList.do")
	public String listMemberSpring(Model model) {
		//model.addAttribute("list",dao.selectMember());
		return "Project/login/joinend";
	}
	@RequestMapping(value="eduList.do")
	public String listAction(Model model) {
		model.addAttribute("eList",dao.selectMember());
		return "Project/index";
	}
	
	@RequestMapping(value="logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Project/index";
	}
	
	@RequestMapping(value="drop.do")
	public String deleteAction(String id,HttpSession session) {
		System.out.println(id);
		dao.deleteSpring(id);
		session.invalidate();
		return "Project/login/joinOutEnd";
	}
	
	@RequestMapping(value="pwmod.do")
	public String updateAction(EduBean bean) {
		dao.pwmod(bean);
		return "Project/login/modend";
		
	}
	
	@RequestMapping(value="pwmod2.do")
	public String updateAction3(EduBean bean) {
		dao.pwmod2(bean);
		return "Project/login/modend";
	}
	
	@RequestMapping(value="infoModify.do")
	public String updateAction2(EduBean bean) {
		dao.infoModify(bean);
		return "Project/login/modend";
	}
	
	
	
	
	/*@RequestMapping(value="list.do")
	public String listSpring(Model model) {
		model.addAttribute("list",dao.selectMember());
		return "Project/login/joinout";
	}*/
		
}
