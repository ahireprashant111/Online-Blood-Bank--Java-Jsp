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
    <title>User Reg</title>
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
 
:required + .message::before {
  content: "* ";
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
  <form class="reg-form" id="reg" method="post" >
    <p class="helper-text">* denotes a required field</p>
    <div class="field-row">
       <label class="form-label"> Blood Group</label>
        <select class="field form-dropdown" name="BloodGroup">
            <option value="">Select</option>
        <option value="A+">A+</option>
        <option value="A-">A-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="O+">O+</option>
        <option value="O-">O-</option>
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        </select>
    </div>
    <div class="field-row">
      <label class="form-label" for="email">Email</label>
      <input type="email"  name="Email" class="field text-field email-field" required>
      <span class="message"></span>
    </div>
    <div class="field-row">
      <label class="form-label" for="firstName">Name</label>
      <input type="text" id="firstName" name="Name" class="field text-field first-name-field" required>
      <span class="message"></span>
    </div>
    
        
        <div class="field-row">
          <label class="form-label" for="tel">Mobile</label>
           <input type="text" name="Mobile" class="field text-field tel-field" required>
           <span class="message"></span>
          </div>
        <div class="field-row">
          <label class="form-label" for="hs">Password</label>
           <input type="password" name="Password"  class="field text-field hs-field" required>
           <span class="message"></span>
          </div>
        <div class="field-row">
           <label class="form-label" for="tel">Permanent Address</label>
           <input type="text"  name="Address"class="field text-field address-field" required>
           <span class="message"></span>
          </div>
          <div class="field-row">
            <label class="form-label">State</label>
            <select class="form-dropdown field" name="State">
                <option value="">Select</option>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chhattisgarh">Chhattisgarh</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
             </select>
                               

         </div>
         <div class="field-row">
            <label class="form-label">District</label>
            <select class="form-dropdown field" name="District">
                <option >Select</option>
               <option >Nashik </option>
               <option > Pune </option>
               <option > Mumbai </option>
               <option > banglore </option>
               <option > Nagpur </option>
            </select>
         </div>
        <div class="field-row">
           <label class="form-label">City</label>
           <select class="form-dropdown field" name="City">
            <option value="">Select</option>
              <option >Nashik </option>
              <option > Pune </option>
              <option > Mumbai </option>
              <option > banglore </option>
              <option > Nagpur </option>
           </select>
        </div>
        <div class="field-row">
            <label class="form-label" for="age">Age</label>
            <input type="text" name="Age" class="field text-field tel-field" required>
            <span class="message"></span>
         </div>
         <div class="field-row">
            <label class="form-label" for="tel">Gender</label>
            <input type="radio" name="Gender" value="male">male
            <input type="radio" name="Gender" value="female">female 
        
         </div>
        
        <div class="field-row">
           <label class="form-label"></label>
           <button type="submit"  class="form-button">Register</button>
        </div>
   </form>
<%
String BloodGroup=request.getParameter("BloodGroup");
String Email=request.getParameter("Email");
String Name=request.getParameter("Name");
String Mobile=request.getParameter("Mobile");
String Password=request.getParameter("Password");
String Address=request.getParameter("Address");
String State=request.getParameter("State");
String District=request.getParameter("District");
String City=request.getParameter("City");
String Age=request.getParameter("Age");
String Gender=request.getParameter("Gender");


if( BloodGroup!=null && Email!=null && Name!=null && Mobile!=null && Password!=null &&  Address!=null && State!=null && District!=null && City!=null && Age!=null && Gender!=null )
{
	try{
		
        Class.forName("com.mysql.cj.jdbc.Driver");  
        
        Connection con=ConnectionProvider.getCon();
        
		Statement st=con.createStatement();
		
		int k=st.executeUpdate("insert into userreg values('"+BloodGroup+"','"+Email+"','"+Name+"','"+Mobile+"','"+Password+"','"+Address+"','"+State+"','"+District+"','"+City+"','"+Age+"','"+Gender+"')");
		
		if(k>=1)
		{
			JOptionPane.showMessageDialog(null,"register Successful");
		}
		else
		{
			JOptionPane.showMessageDialog(null,"register not Successfull");
		}
		st.close();
		con.close();
	
        }
	catch(Exception e)
{
		
	JOptionPane.showMessageDialog(null,"Error"+ e);
	
}
}
%>
</body>
</html>