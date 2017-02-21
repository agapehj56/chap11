<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestScope.jsp</title>
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
	id=${requestScope.id} <br>
	pw=${requestScope.pw} <br>
	xxx1 = ${requestScope.job.xxx1} <br>
	xxx1 = <%= ((HashMap<String,String>) request.getAttribute("job")).get("xxx1") %>
	xxx2 = ${requestScope.job.xxx2} <br>
	
	arr[0] = <%=((int[])request.getAttribute("arr"))[0] %>
	arr[0] = ${requestScope.arr[0] } <br>
	
	arr[1] = <%=((int[])request.getAttribute("arr"))[1] %>
	arr[1] = ${requestScope.arr[1] } <br>
</body>
</html>