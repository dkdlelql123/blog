package com.nyj.exam.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.nyj.exam.demo.vo.Member;

@Mapper
public interface MemberRepository {

	public void join(@Param("loginId") String loginId, @Param("loginPw") String loginPw, @Param("email") String email, @Param("name") String name,@Param("nickname") String nickname, @Param("phoneNumber")String phoneNumber);

	public int getLastInsertId();

	public Member findById(int id);
}
