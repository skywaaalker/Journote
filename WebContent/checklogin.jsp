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
		String usernamevalue = new String(request.getParameter("InputUsername").getBytes("ISO8859_1"),"utf-8");
	    String password = new String(request.getParameter("InputPassword").getBytes("ISO8859_1"),"utf-8");//取得从Login.jsp提交过来的数据
			//连接数据库的基本操作
	    Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://127.0.0.1:3306/Journote";
		String usename = "root";
		String psw= "brunomars1998032";
		Connection conn = DriverManager.getConnection(url, usename, psw);
		if(conn != null){
			String sql = "select * from usrInfo where username='"+usernamevalue+"' and password='"+ password + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);			
				if(rs.next()){
	%>
	                  
					  <script language='javascript'>alert('登录成功！');</script>
					  <jsp:include page ="HomeAfterLogin.jsp">
					  	<jsp:param name ="username" value="<%=usernamevalue%>"/>
					  </jsp:include>
					  <!--  <script language='javascript'>window.location.href='Home.jsp';</script> -->
					
	<%
					  //response.sendRedirect("Home.jsp");
					  //request.getRequestDispatcher("Home.jsp").forward(request, response);
				}else{	
					 out.println("<script language='javascript'>alert('登录失败！');window.location.href='login.jsp';</script>");
	                 //response.sendRedirect("login.jsp");//密码不对返回到登陆  
					 //request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}									
	
	%>
</body>





</html>