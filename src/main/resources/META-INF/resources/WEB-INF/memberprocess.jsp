<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberprocess.jsp</title>
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
<a href="/member">memberform.jsp</a>
<hr>
id = [<%= request.getParameter("id") %>] <br>
pw = [<%= request.getParameter("pw") %>] <br>
job = [<%= request.getParameter("job") %>] <br>

<%
	String[] values = request.getParameterValues("job");
	
	if(values != null)
		for(String v : values) {
			out.println(v + "<br>");
		}
%>
<hr>
id = [${param.id}]<br>
pw = [${param.pw}]<br>
job = [${param.job}] <br>
job0 = ${paramValues.job[0]} <br>
job1 = ${paramValues.job[1]} <br>
job2 = ${paramValues.job[2]} <br>

</body>
</html>