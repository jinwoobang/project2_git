package com.edu.login.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.edu.login.dao.EduAdminDao;
import com.edu.login.dao.EduDao;
import com.edu.login.dao.EduTeaDao;
import com.edu.login.dto.EduBean;

@RestController
public class JsonController {

	@Resource(name="springEduDao")
	private EduDao dao;
	
	@Resource(name="springEduTeaDao")
	private EduTeaDao dao2;
	
	@Resource(name="springEduAdminDao")
	private EduAdminDao dao3;
	
	@RequestMapping(value="login.do")
	public String loginAction(@RequestParam(value="id",required=false,defaultValue="opsqwe123")String id,String pw,HttpSession session,String cmd) {
		System.out.println(id+" "+pw);
		cmd="student";
		if(dao.idCheck(id, pw)) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("cmd", cmd);
			
			//session.setMaxInactiveInterval(60);
			return "success";
		}else {
			return "fail";
		}		
	}
	
	@RequestMapping(value="logintea.do")
	public String loginAction2(@RequestParam(value="id",required=false,defaultValue="opsqwe123")String id,String pw,HttpSession session,String cmd) {
		System.out.println(id+" "+pw);
		cmd="teacher";
		if(dao2.TeaidCheck2(id, pw)) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("cmd", cmd);
			//session.setMaxInactiveInterval(60);
			return "success";
		}else {
			return "fail";
		}		
	}
	
	@RequestMapping(value="loginadmin.do")
	public String loginAction3(@RequestParam(value="id",required=false,defaultValue="opsqwe123")String id,String pw,HttpSession session,String cmd) {
		System.out.println(id+" "+pw);
		cmd="admin";
		if(dao3.AdminidCheck(id,pw)) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("cmd", cmd);
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping(value="idcheck.do")
	public String idCheck(@RequestParam(value="id",required=false,defaultValue="opsqwe123")String id,HttpSession session) {
		System.out.println(id);
		if(dao.idCheck2(id)) {	
			session.setAttribute("id", id);	
			return "fail";
		}else {
			return "success";
		}
		
	}
	
	@RequestMapping(value="Teaidcheck.do")
	public String teaIdCheck(@RequestParam(value="id",required=false,defaultValue="opsqwe123")String id,HttpSession session) {
		System.out.println(id);
		if(dao2.TeaidCheck(id)) {
			session.setAttribute("id", id);
			return "fail";
		}else {
			return "success";
		}
		
	}
	
	/*@RequestMapping(value="idfind.do")
	public List<EduBean>idfind(String name,String pwq,String pwa) {
		
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("pwq", pwq);
		map.put("pwa", pwa);
		System.out.println(name+' '+pwq+' '+pwa);
		return dao.idfind(map);
		
		
	}*/
	
	@RequestMapping(value="idfind.do")
	public String idfind(String name,String pwq,String pwa,HttpSession session) {
		String id=dao.idfind(name, pwq, pwa);
		System.out.println(id);
		if(id!=null && id.equals(id)) {
			session.setAttribute("id", id);
			return "success";
		} else {
			return "fail";
		}	
	}
	
	@RequestMapping(value="idfindtea.do")
	public String teaidfind(String name,String pwq,String pwa,HttpSession session) {
		String id=dao2.teaidfind(name,pwq,pwa);
		System.out.println(id);
		if(id!=null && id.equals(id)) {
			session.setAttribute("id", id);
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping(value="pwfind.do")
	public String pwfind(String id,String name,String pwq,String pwa,HttpSession session) {
		System.out.println(name);
		String pw=dao.pwfind(id, name, pwq, pwa);
		System.out.println(pw);
		if(pw!=null && pw.equals(pw)) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("name", name);
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping(value="teapwfind.do")
	public String teapwfind(String id,String name,String pwq,String pwa,HttpSession session) {
		System.out.println(name);
		String pw=dao2.teapwfind(id,name,pwq,pwa);
		System.out.println(pw);
		if(pw!=null && pw.equals(pw)) {
		session.setAttribute("id", id);
		session.setAttribute("pw",pw);
		session.setAttribute("name", name);
		return "success";
		}else {
			return "fail";
		}
	}
	
}
