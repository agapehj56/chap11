<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param.jsp</title>
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
id = ${param.id} <br>
pw = ${param.pw} <br>
job = ${param.job} <br>
<hr>

id = <%= request.getParameter("id") %> <br>
pw = <%= request.getParameter("pw") %> <br>
job = <%= request.getParameter("job") %> <br>

<%
	Map<String, Object> param = new HashMap<>();

	Enumeration<String> pname = request.getParameterNames();
	
	while(pname.hasMoreElements()) {
		String name = pname.nextElement();
		Object value = request.getParameter(name);
		param.put(name, value);
	}
%>

id = <%= param.get("id") %><br>
pw = <%= param.get("pw") %><br>
job = <%=param.get("job") %><br>
</body>
</html>