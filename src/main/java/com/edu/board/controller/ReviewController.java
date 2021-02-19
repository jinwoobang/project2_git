package com.edu.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.board.dao.ReviewDao;
import com.edu.board.dto.Review;

@Controller
public class ReviewController {

	@Resource(name = "reviewDao")
	private ReviewDao dao;

	@RequestMapping(value = "insertReview.do")
	public String insertReview(Review review, HttpSession session) {
		dao.insertReview(review);
		return "redirect:listReview.do";
	}

	@RequestMapping(value = "listReview.do")
	public String listReview(Model model) {
		model.addAttribute("rlist", dao.selectReview());
		return "Project/noticeboard/reviews";
	}

	@RequestMapping(value = "modifyReview.do")
	public String modifyReview(Review review) {
		dao.modifyReview(review);
		return "redirect:listReview.do";
	}

	@RequestMapping(value = "deleteReview.do")
	public String deleteReview(int no) {
		dao.deleteReview(no);
		return "redirect:listReview.do";
	}

	@RequestMapping(value = "selectInfoReview.do")
	public String selectInfoReview(int no, String job, Model model) {
		if (job != null && job.equals("rinfo")) {
			dao.updateHitReview(no);
			model.addAttribute("selectInfoReview", dao.selectInfoReview(no));
			return "Project/noticeboard/reviewsinfo";
		}
		return "Project/noticeboard/reviews";
	}

}
