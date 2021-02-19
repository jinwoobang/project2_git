package com.edu.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.login.dao.EduTeaDao;
import com.edu.login.dto.EduTeaBean;

@Controller
public class EduTeaController {
	@Resource(name="springEduTeaDao")
	private EduTeaDao dao;
	
	@RequestMapping(value="eduSpring2.do")
	public String insertMemberSpring(EduTeaBean bean) {
		System.out.println(bean);
		dao.insertTMember(bean);
		return "redirect:eduSpringList2.do";
	}
	@RequestMapping(value="eduSpringList2.do")
	public String listMemberSpring(Model model) {
		//model.addAttribute("list",dao.selectMember());
		return "Project/login/jointeaend";
	}
	
	@RequestMapping(value="infoModify2.do")
	public String updateTeaAction(EduTeaBean bean) {
		//dao.infoModify(bean);
		System.out.println(bean);
		dao.infoTeaModify(bean);
		return "Project/login/modend";
	}
	
	@RequestMapping(value="pwmod3.do")
	public String updateTeaPw(EduTeaBean bean) {
		dao.updateTeaPw(bean);
		return "Project/login/modend";
	}
	
	@RequestMapping(value="drop2.do")
	public String deleteAction(String id,HttpSession session) {
		System.out.println(id);
		dao.teaDelete(id);
		session.invalidate();
		return "Project/login/joinOutEnd";
	}
	
	@RequestMapping(value="teapwmod.do")
	public String teapwmod(EduTeaBean bean) {
		dao.teaPwUpdate(bean);
		return "Project/login/modend";
	}
}
