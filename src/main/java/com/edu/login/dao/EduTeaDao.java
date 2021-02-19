package com.edu.login.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.login.dto.EduBean;
import com.edu.login.dto.EduTeaBean;

public class EduTeaDao extends SqlSessionDaoSupport {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertTMember(EduTeaBean bean) {
		this.getSqlSession().insert("insertTMember",bean);
	}
	
	public boolean TeaidCheck(String id) {
		String check=this.getSqlSession().selectOne("TeaidCheck",id);
		return check!=null&&check.equals(id)?true:false;
	}
	
	public boolean TeaidCheck2(String id,String pw) {
		String dbPass=this.getSqlSession().selectOne("TeaidCheck2",id);
		return dbPass!=null&&dbPass.equals(pw)?true:false;
	}
	
	public void infoTeaModify(EduTeaBean bean) {
		this.getSqlSession().update("infoTeaModify",bean);
	}
	
	public void updateTeaPw(EduTeaBean bean) {
		this.getSqlSession().update("updateTeaPw",bean);
	}
	
	public void teaDelete(String id) {
		this.getSqlSession().delete("teaDelete",id);
	}
	
	public String teaidfind(String name,String pwq,String pwa) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("pwq", pwq);
		map.put("pwa", pwa);
		return this.getSqlSession().selectOne("teaidfind",map);
		
	}
	
	public String teapwfind(String id,String name,String pwq,String pwa) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		map.put("pwq", pwq);
		map.put("pwa", pwa);
		return this.getSqlSession().selectOne("teapwfind",map);
	}
	
	public void teaPwUpdate(EduTeaBean bean) {
		this.getSqlSession().update("teaPwUpdate",bean);
	}
	
}
