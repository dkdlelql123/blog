package com.nyj.exam.demo.repository;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReactionPointRepository {

	public int actorCanMakeReactionPoint(int memberId, String relCodeType, int articleId);
	
}
