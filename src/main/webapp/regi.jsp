<%@page import="javax.swing.JOptionPane"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@ page import="ok.ConnectionProvider"%>

<html>
<link rel="stylesheet" type="text/css" href="regi.css">

	<title>Registration form..</title>
<body>
<div class="reg">
<img src="regi.png" class="blank">

<form id="reg" method="post" action="regi.jsp">
<h1>Register Here</h1>

<label>First Name</label><br>
<input type="text" name="fname" placeholder="enter first name" id="name"><br><br>

<label>Middle Name</label><br>
<input type="text" name="mname" placeholder="enter middle name" id="name"><br><br>

<label>Last Name</label><br>
<input type="text" name="lname" placeholder=" enter last name" id="name"><br><br>

<label>ADHAR Number</label><br>
<input type="number" name="adhar" placeholder="enter adhar number" id="name"><br><br>

<label>Password</label><br>
<input type="password" name="pass" placeholder="enter your password" id="name"><br><br>

<label>Re-Enter the Password</label><br>
<input type="password" name="pass2" placeholder="Re-enter password" id="name"><br><br>

<input type="checkbox" id="ch"><span id="ch">  I agree all terms and conditions</span>
<br><br>
<button type="submit" id="sub">Registration Here</button>
</form>
<% 
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String adhar=request.getParameter("adhar");
String pass=request.getParameter("pass");
if(fname!=null&&mname!=null&&lname!=null&&adhar!=null&&pass!=null)
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");  
		 Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
		int k=st.executeUpdate("insert into regi values(' "+fname+" ',' "+mname+" ',' "+lname+" ',' "+adhar+" ',' "+pass+" ')");
		if(k>=1)
		{		
			JOptionPane.showMessageDialog(null, "register succes");
			//response.sendRedirect("index.jsp");
		}
		else
		{
			JOptionPane.showMessageDialog(null, "Opss..! Invalid Registration");

			//out.print("login fail");	
		}
	}catch(Exception e)
{
		JOptionPane.showMessageDialog(null, "ERROR=="+e);
		
}
		

%>
</body>
</html>