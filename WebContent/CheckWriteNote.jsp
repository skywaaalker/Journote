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
<% 
   /* String journalcontent=request.getParameter("text1");
   String titlevalue=request.getParameter("JournalTitle"); */
   String notecontent = new String(request.getParameter("NoteText").getBytes("ISO8859_1"),"utf-8");
   String notetitle = new String(request.getParameter("NoteTitle").getBytes("ISO8859_1"),"utf-8");
   String usernamevalue=request.getParameter("username");
   String labelvalue=request.getParameter("NoteLabel");
   
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
   
   
   String condition ="Insert into journote(title, content, date, isjournal, hasnoti, tag, label, username) values('"+notetitle+"','"+notecontent+"','"+date+"','0','0','"+tag+"','"+labelvalue+"','"+usernamevalue+"')"; 
   sql= conn.createStatement();
   sql.executeUpdate(condition);
   conn.close();
%>
<!-- <script language="javascript">
	alert("add journal succeed!");
</script> -->
<%-- <jsp:forward page="ShowAllJournal.jsp?username=<%=usernamevalue %>">
</jsp:forward> --%>

<jsp:forward page="ShowAllNote.jsp">
	<jsp:param value="<%=usernamevalue%>" name="username"/>
</jsp:forward>

<a href=ShowAllJournal.jsp?username=<%=usernamevalue %>>turn to the page</a><%-- 
<h1><%=titlevalue %></h1>
<h1><%=journalcontent %></h1> --%>

</body>


</html>