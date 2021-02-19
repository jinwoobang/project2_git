package com.edu.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.board.dto.Storage;

public class StorageDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertStorage(Storage storage) {
		this.getSqlSession().insert("insertStorage", storage);
	}
	
	public List<Storage> selectStorage(){
		return this.getSqlSession().selectList("selectStorage");
	}
	
	public Storage selectInfoStorage(int no) {
		return this.getSqlSession().selectOne("selectInfoStorage", no);
	}
	
	public void modifyStorage(Storage storage) {
		this.getSqlSession().update("modifyStorage", storage);
	}
	
	public void deleteStorage(int no) {
		this.getSqlSession().delete("deleteStorage", no);
	}
	
	public void updateHitStorage(int no) {
		this.getSqlSession().update("updateHitStorage", no);
	}
	
}
