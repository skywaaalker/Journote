<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.regex.Pattern"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>



<link href="css/bootstrap.min.css"  rel="stylesheet">



<link href="css/my-navbar-default.css" rel="stylesheet ">
<link href="css/btn-mysample1.css" rel="stylesheet ">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
.divcss5{color:#563d7c;font-size:50px;}
.divcss6{background-color:#F5F5F5;border-color:#FFFFFF;padding-right:15px;}
.flex-auto {
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
}
p{
  word-wrap: break-word;
  word-break: break-all;
  overflow: hidden;
}
div.test
{
white-space:nowrap; 
width:15em; 
overflow:hidden; 
border:0px solid #000000;
}
</style>

</head>
<body>
<% String usernamevalue=request.getParameter("username");%>
<nav class="navbar navbar-default navbar-static-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="HomeAfterLogin.jsp?username=<%=usernamevalue %>">Journote</a>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="HomeAfterLogin.jsp?username=<%=usernamevalue %>">Home <span class="sr-only">(current)</span></a></li>
        <!-- <li><a href="#">Calendar</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Labels <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li> -->
        <li><a href="WriteJournal.jsp?username=<%=usernamevalue %>">Journal</a></li>
        <li><a href="WriteNote.jsp?username=<%=usernamevalue %>">Note</a></li>
        <li><a href="ShowAllJournote.jsp?username=<%=usernamevalue %>">View1</a></li>
        <li class="active"><a href="ShowAllNote.jsp?username=<%=usernamevalue %>">View2</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <a href=# style="color:#cbbde2">hello,<%=usernamevalue %>&nbsp;&nbsp;</a>
        <a id="btn-logout" href="home.jsp" type="button" class="btn btn-default navbar-btn">Sign out</a>
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
 <%
    Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3306/Journote";
	String usename = "root";
	String psw= "brunomars1998032"; 
	Connection con;
	Statement  sql;
	ResultSet rs;
	con=DriverManager.getConnection(url,usename,psw);
	sql=con.createStatement();
	//String condition1;
	//condition1 ="select * from journal where &authorname="+usernamevalue;
	rs=sql.executeQuery("select * from journote where username= '"+usernamevalue+"' and label='5' and isjournal='0' order by tag desc");
	//rs=sql.executeQuery(condition1);
	/*  out.println(usernamevalue);*/
    %>
<div class="container">
	<div class="row">
		<div style="float:left">
   		 		<h2 style="color:#563d7c">Note</h2> 
   		</div>
   		<%-- <div style="float:left">
   			<br>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteEditTime.jsp?username=<%=usernamevalue%>" class="btn btn-mysample1">sort by lastedittime desc</a>
   		</div> --%>
   		<form action="#" method="post">
   		<div style="float:left;">
   			<br>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteLabel1.jsp?username=<%=usernamevalue%>" type="submit" class="btn btn-mysample1" >label1</a>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteLabel2.jsp?username=<%=usernamevalue%>" type="submit" class="btn btn-mysample1" >label2</a>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteLabel3.jsp?username=<%=usernamevalue%>" type="submit" class="btn btn-mysample1" >label3</a>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteLabel4.jsp?username=<%=usernamevalue%>" type="submit" class="btn btn-mysample1" >label4</a>
   			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<a href="SelectNoteLabel5.jsp?username=<%=usernamevalue%>" type="submit" class="btn btn-mysample1 active" >label5</a>
   		</div>
   		<form>
	</div>
	<div class="row mb-4">
        <% 
        while(rs.next()){
        %>
           	
		<div class="col-md-3" style="height:150px;">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<div class="test" style="width:220px;font-size:20px;text-overflow:ellipsis;padding-bottom:5px;"><%=rs.getString(3)%></div>
					<h7 style="padding-bottom:5px;">label:<%=rs.getInt(8)%></h7>
					<div class="mb-1 text-muted" style="padding-bottom:5px;">create:<%=rs.getString("date")%></div>
					<%-- <div class="mb-1 text-muted">lastedit:<%=rs.getDate("lastedittime")%></div> --%>
					<div class="test" style="text-overflow:ellipsis;">
					<%
					String htmlStr=rs.getString(4);
					String textStr ="";
				     java.util.regex.Pattern p_script;
				     java.util.regex.Matcher m_script;
				     java.util.regex.Pattern p_style;
				     java.util.regex.Matcher m_style;
				     java.util.regex.Pattern p_html;
				     java.util.regex.Matcher m_html;
				     String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; //定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script> }
			          String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; //定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style> }
			          String regEx_html = "<[^>]+>"; //定义HTML标签的正则表达式
		 
			          p_script = Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE);	
			          m_script = p_script.matcher(htmlStr);
			          htmlStr = m_script.replaceAll(""); //过滤script标签
		 
			          p_style = Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE);
			          m_style = p_style.matcher(htmlStr);
			          htmlStr = m_style.replaceAll(""); //过滤style标签
		 
			          p_html = Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE);
			          m_html = p_html.matcher(htmlStr);
			          htmlStr = m_html.replaceAll(""); //过滤html标签
			  		  htmlStr = htmlStr.replace("  ", "");
			  	      htmlStr = htmlStr.replace("\n", "");
			  		  htmlStr = htmlStr.replace("\t", "");
			  		  textStr = htmlStr.trim();
			          textStr = htmlStr;
					%>
					<%=textStr %>
					</div><p></p>
					<%-- <a href="ShowNoteDetail.jsp?noteid=<%=rs.getInt(1)%>" class="streched-link">continue reading &edit</a> --%>
					<a href="ShowNoteDetail.jsp?noteid=<%=rs.getInt(1)%>&username=<%=usernamevalue%>&notetitle=<%=rs.getString(3)%>&notecontent=<%=rs.getString(4)%>&notelabel=<%=rs.getInt(8) %>" class="streched-link">continue reading &edit</a>
					&nbsp;&nbsp;&nbsp;<a href="DeleteNote.jsp?noteid=<%=rs.getInt(1)%>&username=<%=usernamevalue%>" onclick="return window.confirm('sure to delete this note?');">delete</a>
				</div>
			</div>
		</div>
		<% 
        }
		%>
	</div>
	<div class="row">
		<div>
   		 		<a href="#" style="color:#563d7c">view more...</a> 
   		</div>
	</div>
	
	
</div>

</body>

</html>