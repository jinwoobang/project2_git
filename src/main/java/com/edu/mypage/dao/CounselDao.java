package com.edu.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.mypage.dto.Counsel;

public class CounselDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertCounsel(Counsel counsel) {
		this.getSqlSession().insert("insertCounsel", counsel);
	}
	
	public List<Counsel> selectCounsel(){
		return this.getSqlSession().selectList("selectCounsel");
	}
	
	public Counsel selectInfoCounsel(int no) {
		return this.getSqlSession().selectOne("selectInfoCounsel", no);
	}
	
	public void modifyCounsel(Counsel counsel) {
		this.getSqlSession().update("modifyCounsel", counsel);
	}
	
	public void deleteCounsel(int no) {
		this.getSqlSession().delete("deleteCounsel", no);
	}
	
	public void updateHitCounsel(int no) {
		this.getSqlSession().update("updateHitCounsel", no);
	}
	
}
