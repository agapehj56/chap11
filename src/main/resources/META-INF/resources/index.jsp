<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</head>
<body>
<ol>
	<li><a href="/member">memberform</a></li>
	
</ol>
<h1>EL(Expression Language) 내장객체 11가지</h1>
<%
	request.setAttribute("el_1", "pageContext 기본객체");
	request.setAttribute("el_2", "pageScope 기본객체");
	
	session.setAttribute("el_3", "requestScope 기본객체");
	session.setAttribute("el_4", "sessionScope 기본객체");
	
	application.setAttribute("el_5", "applicationScope 기본객체");
%>

<ol>
	<li>${requestScope.el_1}</li>
	<li>${requestScope.el_2}</li>
	<li>${sessionScope.el_3}</li>
	<li>${sessionScope.el_4}</li>
	<li>${applicationScope.el_5}</li>
	<li>param</li>
	<li>paramValues</li>
	<li>header</li>
	<li>headerValues</li>
	<li>cookie</li>
	<li>initParam</li>
</ol>
</body>
</html>