package com.edu.registration.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.registration.dao.ApplyDao;
import com.edu.registration.dto.Apply;

@Controller
public class ApplyController {
	@Resource(name = "applyDao")
	private ApplyDao dao;

	@RequestMapping(value = "insertApply.do")
	public String insertApply(Apply apply) {
		dao.insertApply(apply);
		return "Project/registration/payment";
	}

	/*@RequestMapping(value = "insertApply.do")
	public String insertApply(Apply apply, Model model) {
		int classNo = apply.getClassNo();
		int teaNo = apply.getTeaNo();
		String className = apply.getClassName();
		return "Project/registration/payment";
	}*/
	

	@RequestMapping(value = "listApply.do")
	public String listApply(Model model) {
		model.addAttribute("alist", dao.selectApply());
		return "Project/noticeboard/noticelist";
	}

}
