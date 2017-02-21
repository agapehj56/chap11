<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map.jsp</title>
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
	int[] nums = {1, 4, 5};
	request.setAttribute("nums", nums);
%>
nums[0] = <%= ((int[])request.getAttribute("nums"))[0] %> <br>
nums[1] = ${requestScope.nums[1]} <br>
nums[2] = ${requestScope.nums[2]} <br>
nums[3] = ${requestScope.nums[3]} <br>
<hr>
<%
	List<Integer> list = new ArrayList<>();
	list.add(1);
	list.add(4);
	list.add(5);
	request.setAttribute("list", list);
%>
list.get(0) = <%= ((List<Integer>)request.getAttribute("list")).get(0) %><br>
list.get(1) = ${requestScope.list[1]} <br>
list.get(2) = ${requestScope.list[2]} <br>
list.get(3) = ${requestScope.list[3]} <br>

<%
	Map<String, Integer> map = new HashMap<>();
	map.put("one", 1);
	map.put("two", 4);
	map.put("three", 5);
	
	request.setAttribute("map", map);
%>
one = <%= ((Map<String, Integer>)request.getAttribute("map")).get("one") %><br>
two = ${requestScope.map.two} <br>
three = ${requestScope.map.three}<br>
</body>
</html>