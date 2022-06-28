<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<body>
  <ul>
    <c:forEach var="article" items="${articles}">
      <li>
        <a href="#">${article.title}</a>
        <span>${article.regDate}</span>
      </li>
    </c:forEach>
  </ul>
</body>
</html>