<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write your journal</title>

<link href="css/bootstrap.min.css"  rel="stylesheet">

<link href="css/my-navbar-default.css" rel="stylesheet ">
<link href="css/btn-mysample1.css" rel="stylesheet ">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
	.toolbar{
		border: 1px solid #ccc;
	}
	.title{
		bordre: 1px solid $ccc;
		height: 5px;
	}
	.text{
		border: 1px solid #ccc;
		height: 400px;
	}
</style>
</head>
<body>

<style>
.divcss5{color:#563d7c;font-size:50px;}
.divcss6{background-color:#F5F5F5;border-color:#FFFFFF;padding-right:15px;}
</style>
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
        <li class="active"><a href="WriteJournal.jsp?username=<%=usernamevalue %>">Journal</a></li>
        <li><a href="WriteNote.jsp?username=<%=usernamevalue %>">Note</a></li>
        <li><a href="ShowAllJournote.jsp?username=<%=usernamevalue %>">View1</a></li>
        <li><a href="ShowAllNote.jsp?username=<%=usernamevalue %>">View2</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <a href=# style="color:#cbbde2">hello,<%=usernamevalue %>&nbsp;&nbsp;</a>
        <a id="btn-logout" href="home.jsp" type="button" class="btn btn-default navbar-btn">Log out</a>
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- <a href=test.jsp>test</a> -->

<div class="container">
	<form action="CheckWriteJournal.jsp?username=<%=usernamevalue %>" method="post" name="frmWriteJournal">
	<div class ="row">
		<div class="col-md-8 col-md-offset-2">
		<!-- <button type="button" class="btn btn-lg btn-primary btn-clock">jjfdsfsdfsf</button> -->
			<!-- <div id="div1" class="toolbar"></div> -->
			<div style="padding:5px 0; color:#ccc"></div>
			<div>
				<input type="text" class="form-contorl" name="JournalTitle" id="JournalTitle"
			style="width: 100%" placeholder="Add journal title here">
			</div>
			<br>
			<div id="div2" class="text" placeholder="hello" style="display:none"> 
			</div>
			<div style="">
				<textarea id="text11" name="JournalText"style="resize:none; width:100%; height:200px;" placeholder="Add journal content here"></textarea>
			</div>
			<br>
			<div class="text-center">
			<input type="submit" value="submit"class="btn btn-mysample1" onclick="return validateWrite()">
			</input>
			</div>
		</div>
	</div>
	</form>
	
</div>
    <!-- <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script> -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div1','#div2')
        var $text1 = $('#text1')
        // 或者 var editor = new E( document.getElementById('editor') )
        editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        }
        editor.create()
        $text1.val(editor.txt.html())
        
    </script>
    
</body>

<script lang="javascript">
    
	function validateWrite() {
		var title = document.frmWriteJournal.JournalTitle.value;
		var content = document.frmWriteJournal.text11.value;
		if ((title == '') || (title == "Add journal title here")) {
			alert("Input title");
			return false;
		}
		if ((content == "") || (content == "<p><br></p>")) {
			alert("Input journal content");
			return false;
		}
	}
</script>
</html>