package com.edu.board.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.edu.board.dao.NoticeDao;
import com.edu.board.dto.Notice;

@Controller
public class NoticeController {
	
	@Resource(name="noticeDao")
	private NoticeDao dao;
	
	@RequestMapping(value="insertNotice.do")
	public String insertNotice(Notice notice, HttpSession session) {
		dao.insertNotice(notice);
		return "redirect:listNotice.do";
	}
	
	@RequestMapping(value="listNotice.do")
	public String listNotice(Model model) {
		model.addAttribute("list", dao.selectNotice());
		return "Project/noticeboard/noticelist";
	}
	
	/*@RequestMapping(value="selectInfoNotice")
	public String selectInfoNotice(int no, Model model) {
		model.addAttribute("ninfo", dao);
		dao.updateHitNotice(no);
		return "Project/noticeboard/noticelistinfo";
	}*/
	
	/*@RequestMapping(value="modifyNotice.do")
	public String modifyNotice(Notice notice) {
		dao.modifyNotice(notice);
		return "redirect:listNotice.do";
	}
	
	@RequestMapping(value = "deleteNotice.do")
	public String deleteNotice(int no) {
		dao.deleteNotice(no);
		return "redirect:listNotice.do";
	}*/
	
	@RequestMapping(value = "selectInfoNotice.do")
	public String selectInfoNotice(int no, String job, Model model) {
		if (job != null && job.equals("ninfo")) {
			dao.updateHitNotice(no);
			model.addAttribute("selectInfoNotice", dao.selectInfoNotice(no));
			return "Project/noticeboard/noticelistinfo";
		}
		return "Project/noticeboard/noticelist";
	}
	
	/*@RequestMapping(value="searchNotice.do")
	public ModelAndView searchNotice(@RequestParam(defaultValue="title") String searchOption,@RequestParam(defaultValue="") String keyword) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}*/
	
}



