package com.edu.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.board.dto.Notice;

public class NoticeDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertNotice(Notice notice) {
		this.getSqlSession().insert("insertNotice", notice);
	}
	
	public List<Notice> selectNotice(){
		return this.getSqlSession().selectList("selectNotice");
	}
	
	public Notice selectInfoNotice(int no) {
		return this.getSqlSession().selectOne("selectInfoNotice", no);
	}
	
	public void modifyNotice(Notice notice) {
		this.getSqlSession().update("modifyNotice", notice);
	}
	
	public void deleteNotice(int no) {
		this.getSqlSession().delete("deleteNotice", no);
	}
	
	public void updateHitNotice(int no) {
		this.getSqlSession().update("updateHitNotice", no);
	}
	

	
}
