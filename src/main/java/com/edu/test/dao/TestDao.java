package com.edu.test.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.login.dto.EduBean;
import com.edu.test.dto.TestBean;

public class TestDao extends SqlSessionDaoSupport {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void levelTestInsert(TestBean bean) {
		this.getSqlSession().insert("levelTestInsert",bean);
	}
	
}


