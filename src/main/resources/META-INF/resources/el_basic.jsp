<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
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
<%
	pageContext.setAttribute("num1", 10);
%>

num1 = <%=pageContext.getAttribute("num1") %><br>
num1 = ${pageScope.num1}<br>
<hr>

<c:set var="num2" value="20" scope="page"/>
num2=${pageScope.num2}<br>
num2=<%=pageContext.getAttribute("num2") %>
<hr>
<c:set var="num3" value="30" scope="request"/>
num3 = ${requestScope.num3} <br>
<hr>

<c:set var="num4" value="40" scope="session"/>
num4 = ${sessionScope.num4} <br>
<hr>

<%
	application.setAttribute("num5", 50);
%>
<c:set var="num5" value="${applicationScope.num5 * 10}" scope="application"/>

num5 = <%= application.getAttribute("num5") %><br>
num5 = ${applicationScope.num5 }
</body>
</html>