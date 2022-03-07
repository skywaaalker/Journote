<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
hello
<% 
   /* String journalcontent=request.getParameter("text1");
   String titlevalue=request.getParameter("JournalTitle"); */
   String journalcontent = new String(request.getParameter("JournalText").getBytes("ISO8859_1"),"utf-8");
   String journaltitle = new String(request.getParameter("JournalTitle").getBytes("ISO8859_1"),"utf-8");
   String usernamevalue=request.getParameter("username");
   
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://127.0.0.1:3306/Journote";
   String usename = "root";
   String psw= "brunomars1998032";  
   Statement sql;
   Connection conn = DriverManager.getConnection(url,usename,psw);
   
   java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   java.util.Date currentTime = new java.util.Date();//得到当前系统时间
   String str_date1 = formatter.format(currentTime); //将日期时间格式化 
   String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式
   
   StringBuilder stringBuilder = new StringBuilder();
   Calendar now = Calendar.getInstance();
   stringBuilder.append(now.get(Calendar.YEAR) + "年");
   stringBuilder.append((int)(now.get(Calendar.MONTH) + 1) +"月");
   stringBuilder.append(now.get(Calendar.DAY_OF_MONTH) + "日");
   String date = stringBuilder.toString();
   String tag = String.valueOf(System.currentTimeMillis());
   
   String condition ="Insert into journote(title, content, date, isjournal, hasnoti, tag, label, username) values('"+journaltitle+"','"+journalcontent+"','"+date+"','1','0','"+tag+"','0','"+usernamevalue+"')"; 
   sql= conn.createStatement();
   sql.executeUpdate(condition);
   conn.close();
   /* out.println("<script language='javascript'>alert('add journal succeed!');window.location='ShowAllJournote.jsp?username='+usernamevalue;</script>"); */
   /* response.sendRedirect("ShowAllJournote.jsp?username="+usernamevalue); */
%>

<jsp:forward page="ShowAllJournote.jsp">
	<jsp:param value="<%=usernamevalue%>" name="username"/>
</jsp:forward>
<h1><%=journaltitle %></h1>
<h1><%=journalcontent %></h1>
<p>提交到数据库成功</p>
<a href ="Home.jsp?username=<%=usernamevalue%>">点击此处返回主页</a>
</body>


</html>