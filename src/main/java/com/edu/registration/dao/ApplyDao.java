package com.edu.registration.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.registration.dto.Apply;

public class ApplyDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertApply(Apply apply) {
		this.getSqlSession().insert("insertApply", apply);
	}
	
	public List<Apply> selectApply(){
		return this.getSqlSession().selectList("selectApply");
	}
}
