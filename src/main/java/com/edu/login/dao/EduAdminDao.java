package com.edu.login.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class EduAdminDao extends SqlSessionDaoSupport {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public boolean AdminidCheck(String id,String pw) {
		String dbPass=this.getSqlSession().selectOne("AdminidCheck",id);
		return dbPass!=null&&dbPass.equals(pw)?true:false;
		
	}
}
