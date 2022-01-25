<%@ page import="ok.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.swing.JOptionPane"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood request</title>
    <style>

 .reg-form {
  background: #fff;
  box-sizing: border-box;
  box-shadow: 1px 2px 6px rgba(0, 0, 0, 0.4);
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin: 15px auto;
  padding: 15px;
  width: 600px;
}
 
.form-heading {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 36px;
  font-weight: bold;
  margin: 5px;
}
 
.helper-text {
  font-size: 12px;
  margin-botom: 10px;
  text-align: right;
}

.field-row {
  position: relative;
  width: 100%;
}
 
.form-label {
  display: inline-block;
  font-size: 16px;
  margin: 0 5px 5px 0;
  text-align: right;
  width: 100px;
}
 
.field {
  border: 1px solid #ccc;
  box-sizing: border-box;
  display: inline-block;
  font-size: 16px;
  padding: 10px;
  margin-bottom: 15px;
  width: 240px;
}
.field.field-short {
  width: 70px;
}

.message {
  display: inline-block;
}


.form-button {
  background: linear-gradient(180deg, #808080, #2a2a2a);
  border: none;
  border-radius: 0;
  color: white;
  display: inline-block;
  padding: 10px;
  font-size: 16px;
}

</style>
</head>
<body>
    <form class="reg-form" method="post"  >
        
        <div class="field-row">
            <label class="form-label" >Patient Name</label>
            <input type="text" name="name" class="field text-field first-name-field" required>
          
        </div>
        
          <div class="field-row">
            <label class="form-label" for="mnum">Mobile Number</label>
            <input type="text" name="mobile" class="field text-field tel-field" required>
            
         </div>
            <div class="field-row">
            <label class="form-label" for="hs">Email</label>
            <input type="email" name="email" name=""class="field text-field hs-field" required>
            
        </div>
         
        <div class="field-row">
           <label class="form-label"> Blood Group</label>
            <input type="text" name="bloodgroup" name=""class="field text-field hs-field" required>      
        </div>
          <div class="field-row">
           <label class="form-label"></label>
           <button type="submit"  class="form-button">Register</button>
        </div>
     </form>
 
 <% 
String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String status="pending";
if(name!=null && mobile!=null && email!=null && bloodgroup!=null && status!=null)
{
	try{
		
		 Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();  
		int k=stmt.executeUpdate("insert into bloodreq values('"+name+"','"+mobile+"','"+email+"','"+bloodgroup+"' ,'"+status+"')");
		
		if(k>=1)
		{
			//out.println("Registered");
			//response.sendRedirect("index.jsp");
			JOptionPane.showMessageDialog(null,"Register Successful");
		}
		else
		{
			JOptionPane.showMessageDialog(null, "Opss..! Invalid Registration");
			//out.println("failed");
		}
		stmt.close();
		con.close();
	
        }
	catch(Exception x)
{
		JOptionPane.showMessageDialog(null, "ERROR=="+ x);
}
}
%>

</body> 
</html>



