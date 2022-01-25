<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="javax.swing.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="ok.ConnectionProvider"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Donar</title>
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

.text-field:focus:required:valid {
  outline: green solid 2px;
}
.text-field:focus:required:invalid {
  outline: orange solid 2px;
}
.date-field:focus:in-range {
  outline: green solid 2px;
}
.date-field:focus:out-of-range {
  outline: orange solid 2px;
}
 
.website-field:focus:valid {
  outline: green solid 2px;
}
.website-field:focus:invalid {
  outline: orange solid 2px;
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
.first-name-field:focus:invalid + .message::after {
  color: orange;
  content: "Required your first name";
}
 
 
.tel-field:focus:invalid + .message::after {
  color: orange;
  content: "Required telephone number";
}
 
.email-field:focus:invalid + .message::after {
  color: orange;
  content: "Required email address";
}
.hs-field:focus:invalid + .message::after {
  color: orange;
  content: "Required high school name";
}

.address-field:focus:invalid + .message::after {
    color: orange;
    content: "Required permanent address";
}

.website-field:focus:invalid + .message::after {
    color: orange;
  content: "Required valid URL";


}

</style>
</head>
<body>
    <form class="reg-form">
        <p class="helper-text">* denotes a required field</p>

        <div class="field-row">
           <label class="form-label"> Blood Group</label>
            <select class="field form-dropdown" name="BloodGroup">
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
                <label class="form-label">District</label>
                <select class="form-dropdown field">
                <option value="select option">select option</option>
                <option value="1st Year">Nashik </option>
                <option value="2nd Year"> Pune </option>
                <option value="3rd Year"> Mumbai </option>
                <option value="4th Year"> banglore </option>
                <option value="5th Year"> Nagpur </option>
            </select>
        </div>
        <div class="field-row">
            <label class="form-label">City</label>
            <select class="form-dropdown field">
                <option value="select option">select option</option>
                <option value="1st Year">Nashik </option>
                <option value="2nd Year"> Pune </option>
                <option value="3rd Year"> Mumbai </option>
                <option value="4th Year"> banglore </option>
                <option value="5th Year"> Nagpur </option>
            </select>
        </div>
    
        <div class="field-row">
           <label class="form-label"></label>
           <button class="form-button">Search</button>
       
        </div>
     </form>


     <%

String BloodGroup=request.getParameter("BloodGroup");


if( BloodGroup!=null)
{
	try{
		
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from userreg where BloodGroup='"+BloodGroup+"'");
       while(rs.next())
           {
           %>	   
    	   <Center><td><%=rs.getString(1)%></td> &nbsp &nbsp
    	   <td><%=rs.getString(2)%></td> &nbsp &nbsp
    	   <td><%=rs.getString(7)%></td> &nbsp &nbsp
    	    <td><%=rs.getString(8)%></td> &nbsp &nbsp
    	   <td><%=rs.getString(9)%></td>   &nbsp &nbsp
    	  <br></Center>
           <%
           }
	
}
	catch(Exception x)
{
	out.print(x);
}
}


%>
     
</body>
</html>

