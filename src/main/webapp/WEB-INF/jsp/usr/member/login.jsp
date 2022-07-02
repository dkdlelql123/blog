<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="로그인" />
<%@ include file="../common/head.jspf"%>

<div class="w-1/2 min-w-[500px] m-auto mt-[100px]">
  <h1 class="text-[24px] text-center">✋HELLO✋</h1>
  <form 
    class="table-box-type-1 mt-[20px]" 
    action="/usr/member/doLogin"
    method="POST" 
    >
    <table>
      <colgroup>
        <col width="200">
      </colgroup>
      <tr>
        <td>아이디</td>
        <td>
          <input type="text" name="loginId" class="input w-full"
            placeholder="아이디" />
        </td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td>
          <input type="password" name="loginPw" class="input w-full"
            placeholder="비밀번호" />
        </td>
      </tr>
    </table>
    <div class="my-4 py-2 text-red-500 text-center bg-red-100 rounded">회원정보가
      올바르지 않습니다.
    </div>
    <div class="btn-wrap mt-4 ">
      <input type="submit"
        class="w-full btn btn-type-1 py-2 block text-center text-base"
        value="로그인" />
    </div>
  </form> 
</div>

<%@ include file="../common/tail.jspf"%>