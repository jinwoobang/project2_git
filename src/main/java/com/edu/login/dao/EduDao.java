package com.edu.login.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.login.dto.EduBean;

public class EduDao extends SqlSessionDaoSupport {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void insertMember(EduBean bean) {
		this.getSqlSession().insert("insertMember",bean);
	}
	
	public List<EduBean>selectMember(){
		return this.getSqlSession().selectList("selectMember");
	}
	
	public EduBean selectMemberInfo(int no) {
		return this.getSqlSession().selectOne("selectMemberInfo",no);
	}
	
	public boolean idCheck(String id,String pw) {
		String dbPass=this.getSqlSession().selectOne("idCheck",id);
		return dbPass!=null&&dbPass.equals(pw)?true:false;
		
	}
	
	public boolean idCheck2(String id) {
		String check=this.getSqlSession().selectOne("idCheck2",id);
		return check!=null&&check.equals(id)?true:false;
	}
	
	public void deleteSpring(String id) {
		this.getSqlSession().delete("deleteSpring",id);
		
	}
	
	/*public List<EduBean> idfind(HashMap<String, Object>map) {
		return this.getSqlSession().selectList("idfind",map);
	}*/
	
	public String idfind(String name,String pwq,String pwa) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("pwq", pwq);
		map.put("pwa", pwa);
		return this.getSqlSession().selectOne("idfind",map);	
	}
	
	public String pwfind(String id,String name,String pwq,String pwa) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		map.put("pwq", pwq);
		map.put("pwa", pwa);
		return this.getSqlSession().selectOne("pwfind",map);
	}
	
	public void pwmod(EduBean bean) {
		 this.getSqlSession().update("pwmod",bean);
		
	}
	
	public void pwmod2(EduBean bean) {
		 this.getSqlSession().update("pwmod2",bean);
		
	}
	
	public void infoModify(EduBean bean) {
		this.getSqlSession().update("infoModify",bean);
	}
	
	
	
}
