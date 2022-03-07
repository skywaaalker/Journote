<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Keep Journote</title>
<link href="css/bootstrap.min.css"  rel="stylesheet">

<!-- <link href="css/carousel.css" rel="stylesheet "> -->
<link href="css/my-navbar-default.css" rel="stylesheet ">
<link href="css/btn-mysample1.css" rel="stylesheet ">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
.divcss5{color:#563d7c;font-size:50px;}
.divcss6{background-color:#F5F5F5;border-color:#FFFFFF;padding-right:2px;height:190px;}
</style>


<script type="text/javascript">function AlertNotLogged(){alert("log in first." );return false;}</script>
</head>

<body>
<script type="text/javascript">
$(document).ready(function(){ 
$("#login").click(function(){
	location.href="login.jsp";
	});
}); 
</script>

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
      <a class="navbar-brand" href="home.jsp">Journote</a>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp">Home <span class="sr-only">(current)</span></a></li>
        <!-- <li><a href="#">Calendar</a></li> -->
        <!-- <li class="dropdown">
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
        <li ><a href=# onclick="return NotLogged()">Journal</a></li>
        <li ><a href=# onclick="return NotLogged()">Note</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <a id="btn-login" href="login.jsp" type="button" class="btn btn-default navbar-btn">Sign in</a>
        <a id="btn-login" href="register.jsp" type="button" class="btn btn-default navbar-btn">Sign up</a>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<script type="text/javascript">
function NotLogged(){
	alert("Please log in first.");
	return false;
}
</script>
<div class="container">
	   <div class="row align-items-center">
	     
		 
	   	 <div class="col-md-6 order-md-1  text-md-left pr-md-5">
	   	    <br><br>
			<h1 class="divcss5">Journote</h1>
			<p class="lead">
          "
          Write your journal and note here, treasure your memories and go further."
            </p>
			<p class="lead mb-4">
			
            Journote is a blog-like website. But differences are that only youself can see what you have write, in 
            another word, that's why it's called journote, journal and note, a personal space for you and me. You can
            write whatever you want to write and don't care to much.
        
			</p>
			<div class="row ">
			 <div class="col-md-6">
			   <button type="button" id="HomeButton1" href=# class="btn btn-mysample1 btn-lg btn-block  w-100 mb-3" 
			   onclick="return NotLogged()">Write Journal</button>
			 </div>
			 <div class="col-md-6">
			   
			   <button type="button" id="HomeButton2" href=# class="btn btn-mysample1 btn-lg btn-block  w-100 mb-3" 
			   onclick="return NotLogged()">Keep Note</button>
			 </div>
			</div>
		</div>
		<div class="col-6 mx-auto col-md-6 order-md-2">
		  <img src="img/testimg.png" width="500" height="500" style="margin-left:120px"/>
		</div>
		
	   </div>
	</div>

<div class="container">
	<div class="row">
		<div class="col-md-4 divcss6"> 
		<h3>Using calender</h3>
		<p>when you write a journal, we will keep the time you finished, with which you can search your journal correctly. Also, the calendar will show which day you have wrote the journal by fill the date on calendar with some colors.</p>
		</div>
		<div class="col-md-4 divcss6"> 
		<h3>Using label</h3>
		<p>after finishing a note, you can add an label to it. In this case, the labels are numbers, which includes 1 to 4. The labels are the identifiers for you to find the notes you write quickly. In the view2 page, you can search the note by the label.
		</p>
		</div>
		<div class="col-md-4 divcss6"> 
		<h3>search sort edit delete</h3>
		<p>In the view1, view2 page, you can see the journotes you have wrote. you can search the journal by the calendar below, but journals can not be edited again, because past is in the past. But luckily your note can be edited again, and you can sort them by some elements like lastedittime etc.</p>
		</div>
	</div>
</div>	
<footer>
	<div class="container-fluid p-3 p-md-5">
	<p class="text-center">&copy; Copyright 2019</p>
</footer>
		
	
</body>
</html>