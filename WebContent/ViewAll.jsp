<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All</title>
</head>
<body>
<% String usernamevalue=request.getParameter("username");%>
<h1><%= usernamevalue%></h1>
</body>
</html>