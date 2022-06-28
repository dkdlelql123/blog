package com.nyj.exam.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
import com.nyj.exam.demo.service.MemberService; 
import com.nyj.exam.demo.vo.Member;

@Controller
public class UsrMemberController {
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public Object doJoin(String loginId, String loginPw, String email, String name, String nickname, String phoneNumber) {
		
		int join = memberService.join(loginId, loginPw, email, name, nickname, phoneNumber);
		if(join == -1) return "이미 존재하는 계정 아이디입니다.";
			
		int id = memberService.getLastInsertId();
		
		Member member = memberService.getMemberId(id);
		
		
		return member ;
	}

}
