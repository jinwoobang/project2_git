package com.edu.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.board.dto.Review;

public class ReviewDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void insertReview(Review review) {
		this.getSqlSession().insert("insertReview", review);
	}

	public List<Review> selectReview() {
		return this.getSqlSession().selectList("selectReview");
	}

	public Review selectInfoReview(int no) {
		return this.getSqlSession().selectOne("selectInfoReview", no);
	}

	public void modifyReview(Review review) {
		this.getSqlSession().update("modifyReview", review);
	}

	public void deleteReview(int no) {
		this.getSqlSession().delete("deleteReview", no);
	}

	public void updateHitReview(int no) {
		this.getSqlSession().update("updateHitReview", no);
	}

}
