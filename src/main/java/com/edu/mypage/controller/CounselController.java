package com.edu.mypage.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.mypage.dao.CounselDao;
import com.edu.mypage.dto.Counsel;

@Controller
public class CounselController {
	
	@Resource(name="counselDao")
	private CounselDao dao;
	
	@RequestMapping(value="insertCounsel.do")
	public String insertCounsel(Counsel counsel, HttpSession session) {
		dao.insertCounsel(counsel);
		return "redirect:listCounsel.do";
	}
	
	@RequestMapping(value="listCounsel.do")
	public String listCounsel(Model model) {
		model.addAttribute("clist", dao.selectCounsel());
		return "Project/mypage/counsel";
	}
	
	@RequestMapping(value = "deleteCounsel.do")
	public String deleteCounsel(int no) {
		dao.deleteCounsel(no);
		return "redirect:listCounsel.do";
	}
	
	@RequestMapping(value = "selectInfoCounsel.do")
	public String selectInfoCounsel(int no, String job, Model model) {
		if (job != null && job.equals("cinfo")) {
			dao.updateHitCounsel(no);
			model.addAttribute("selectInfoCounsel", dao.selectInfoCounsel(no));
			return "Project/mypage/counsellistinfo";
		}
		return "Project/mypage/counsel";
	}
	
	@RequestMapping(value="modifyCounsel.do")
	public String modifyCounsel(int no, Model model) {
		model.addAttribute("selectInfoCounsel", dao.selectInfoCounsel(no));
		return "Project/mypage/CounselModify";
	}
	
	@RequestMapping(value="modifyCounselAction.do")
	public String modifyCounselAction(Counsel counsel) {
		dao.modifyCounsel(counsel);
		return "redirect:listCounsel.do";
	}
	
}
