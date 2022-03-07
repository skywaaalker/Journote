<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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
</style>
<style> 
div.test
{
white-space:nowrap; 
width:15em; 
overflow:hidden; 
border:0px solid #000000;
}

/* div.test:hover
{
text-overflow:inherit;
overflow:visible;
} */
.div-height{
height:200px;
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
        <li class="active"><a href="ShowAllJournote.jsp?username=<%=usernamevalue %>">View</a></li>
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
	String url = "jdbc:mysql://127.0.0.1:3306/usr";
	String usename = "root";
	String psw= "brunomars1998032"; 
	Connection con;
	Statement  sql;
	ResultSet rs;
	con=DriverManager.getConnection(url,usename,psw);
	sql=con.createStatement();
	//String condition1;
	//condition1 ="select * from journal where &authorname="+usernamevalue;
	rs=sql.executeQuery("select * from journal where authorname= '"+usernamevalue+"'");
	//rs=sql.executeQuery(condition1);
	/*  out.println(usernamevalue);*/
    %>

<div class="container">
	<div class="row">
		<div>
   		 		<h2 style="color:#563d7c">Journal</h2> 
   		</div>
	</div>
	<div class="row mb-4">
       
           	
		<div class="col-md-3" style="height:100px;">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<h3 class="mb-0">title</h3>
					<div class="mb-1 text-muted">time</div>
					<div class="test" style="text-overflow:ellipsis;">
					哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
					</div><p></p>
					<a href="#" class="streched-link">continue reading</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<h3 class="mb-0">title</h3>
					<div class="mb-1 text-muted">time</div>
					<p class="card-text mb-auto">testxcont</p>
					<a href="#" class="streched-link">continue reading</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<h3 class="mb-0">title</h3>
					<div class="mb-1 text-muted">time</div>
					<p class="card-text mb-auto">testxcont</p>
					<a href="#" class="streched-link">continue reading</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<h3 class="mb-0">title</h3>
					<div class="mb-1 text-muted">time</div>
					<p class="card-text mb-auto">testxcont</p>
					<a href="#" class="streched-link">continue reading</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="row no-gutters border-primary rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class =col p-4 d-flex flex-column position-static>
					<h3 class="mb-0">title</h3>
					<div class="mb-1 text-muted">time</div>
					<p class="card-text mb-auto">testxcont</p>
					<a href="#" class="streched-link">continue reading</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div>
   		 		<a href="#" style="color:#563d7c">view more...</a> 
   		</div>
	</div>
	
	
</div>

</body>
</html>