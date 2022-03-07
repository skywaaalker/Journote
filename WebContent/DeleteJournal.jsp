<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.regex.Pattern"%>

</head>
<body>
<%
String usernamevalue=request.getParameter("username");
String journalid=request.getParameter("journalid");
%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1:3306/Journote";
String usename = "root";
String psw= "brunomars1998032";  
Statement sql;
Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接 

String condition ="Delete from journote where id= "+journalid;
sql= conn.createStatement();
sql.executeUpdate(condition);
conn.close();


%>
<jsp:forward page="ShowAllJournote.jsp">
	<jsp:param value="<%=usernamevalue%>" name="username"/>
</jsp:forward>
</body>
</html>