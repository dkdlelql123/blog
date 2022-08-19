<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.nyj.exam.demo.util.Ut" %>

<c:set var="pageTitle" value="회원가입수정" />
<%@ include file="../common/head.jspf"%>

<script type="text/javascript" defer="defer">
	function isNull(el) {
		let str = el.trim();
		if (str.length <= 0) {
			return false
		}
		return true;
	}

	let submitJoinFormDone = false;

	function checkForm(form) {
		if (submitJoinFormDone) {
			alert("처리중입니다. \n새로고침 후 이용해주세요.");
			return;
		}
		
		if (form.loginPw.value.trim().length > 0) {  
			if(form.loginPw2.value.trim().length <= 0){
				$(".messege").html("<div class='py-2'>비밀번호을(를) 입력해주세요.</div>")
				form.loginPw2.focus();
				return; 
			}
			
			if(form.loginPw.value != form.loginPw2.value){
				$(".messege").html("<div class='py-2'>비밀번호가 일치하지 않습니다.</div>")
				form.loginPw2.focus();
				return;
			}
		}; 
		
		if(!isNull(form.email.value)){
			$(".messege").html("<div class='py-2'>이메일을(를) 입력해주세요.</div>");
			form.email.focus();
			return;
		}
		
		if(!isNull(form.nickname.value)){
			$(".messege").html("<div class='py-2'>별명을(를) 입력해주세요.</div>");
			form.nickname.focus();
			return;
		}
		
		if(!isNull(form.phoneNumber.value)){
			$(".messege").html("<div class='py-2'>전화번호을(를) 입력해주세요.</div>");
			form.phoneNumber.focus();
			return;
		}
		
		$(".messege").html("");

		submitJoinFormDone = true;
		form.submit();
	} 
</script>

<div class="table-box-type-1 m-auto w-full lg:w-1/2">
  <h1 class="text-3xl font-bold text-center">내정보 수정</h1> 
  
  <form onsubmit="checkForm(this); return false;" action="/usr/member/doModify" method="post">
    <input type="hidden" name="memberModifyAuthKey" value="${param.memberModifyAuthKey}" />
    
    <div class="mt-8 mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">아이디</label>
      <input 
        type="text"  
        name="loginId" 
        aria-label="disabled input" 
        class="block p-2 w-full cursor-not-allowed text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        value="${member.loginId}"
        readonly disabled
      />
    </div>
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">새 비밀번호</label>
      <input 
        type="password"  
        name="loginPw" 
        class="block p-2 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        placeholder="새 비밀번호" autoComplete="off"  
      />
    </div>
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">비밀번호 재확인</label>
      <input 
        type="password"  
        name="loginPw2" 
        class="block p-2 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        placeholder="새 비밀번호 재확인" autoComplete="off"  
      />
    </div> 
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">이름</label>
      <input 
        type="text"  
        name="name"
        aria-label="disabled input" 
        class="block p-2 cursor-not-allowed w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        value="${member.name}"
        readonly disabled required
      />
    </div>
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">이메일</label>
      <input 
        type="text"  
        name="email"
        aria-label="disabled input" 
        class="block cursor-not-allowed p-2 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        value="${member.email}"
        readonly disabled required
      />
    </div>
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">별명</label>
      <input 
        type="text"  
        name="nickname"
        class="block p-2 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        value="${member.nickname}"
      />
    </div>
    <div class="mb-4">
      <label for="small-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">전화번호</label>
      <input 
        type="text"  
        name="phoneNumber" 
        class="block p-2 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
        value="${member.phoneNumber}"
      />
    </div>  
    
    <div class="messege mt-4 text-red-500 text-center bg-red-100 rounded"></div>
  
    <button class="w-full btn btn-primary mt-4 py-2 block text-center">정보수정</button> 
  </form>
</div>

<%@ include file="../common/tail.jspf"%>
