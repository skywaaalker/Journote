<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Register</title>
</head>

<body>
	<%
	/* String user = new String(request.getParameter("InputUsername").getBytes("ISO8859_1"),"utf-8");
    String pwd = new String(request.getParameter("InputPassword").getBytes("ISO8859_1"),"utf-8"); */
    String user=request.getParameter("InputUsername");
    String pwd=request.getParameter("InputPassword");
    Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3306/Journote";
	String usename = "root";
	String psw= "brunomars1998032";  
	Statement sql;
    Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接  
    PreparedStatement pStmt = conn.prepareStatement("select * from usrInfo where username = '" + user + "'");  
    ResultSet rs = pStmt.executeQuery();  			
	  if(rs.next()){  
          out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");  
      }else{  
              String condition = "insert into usrInfo(username, password) values('" + user + "','" + pwd + "')";
              sql= conn.createStatement();
              sql.executeUpdate(condition);
  			  conn.close();
  			  out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='login.jsp';</script>");
    	      //PreparedStatement tmt = conn.prepareStatement("Insert into normalUsr values('" + user + "','" + pwd + "')");  
              //int rst = tmt.executeUpdate();  
              //if (rst != 0){  
              //      out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='login.jsp';</script>");    
              //}else{  
              //   out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");    
              //}
      }	
	
	%>
</body>



</html>