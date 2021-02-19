package com.edu.test.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.test.dao.TestDao;
import com.edu.test.dto.TestBean;


@Controller
public class TestController {
	@Resource(name="testDao")
	private TestDao dao;
	
	@RequestMapping(value="levelTest.do")
	public String levelTestInsert(TestBean bean) {
		System.out.println(bean);
		dao.levelTestInsert(bean);
		return "Project/test/levelTestEnd";
	}

}
