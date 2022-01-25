<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="decoration.css">
    <link rel="stylesheet" media="screen and (max-width: 1170px)" href="phone.css">
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Bree+Serif&display=swap" rel="stylesheet">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;
            background-color: cadetblue;
        
        /* background-image:url("bg1.jpg");
        background-size:cover; */
    }
        
        /* Full-width input fields */
        input[type=text], input[type=password] {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          
          box-sizing: border-box;
        }
        
        /* Set a style for all buttons */
        button {
          background-color: #04AA6D;
          color: white;
          padding: 20px 30px;
          margin: 8px 0;
          border: none;
          border-radius: 15px;
          cursor: pointer;
          width: 100%;
        }
        
        button:hover {
          opacity: 0.8;
        }
        
        /* Extra styles for the cancel button */
        .cancelbtn {
          width: auto;
          padding: 10px 18px;
          background-color: #f44336;
        }
        
        /* Center the image and position the close button */
        .imgcontainer {
          text-align: center;
          margin: 24px 0 12px 0;
          position: relative;
        }
        
        img.avatar {
          width: 20%;
          height:40%;
          border-radius: 50%;
        }
        
        .container {
          padding: 16px;
        }
        
        span.psw {
          float: right;
          padding-top: 16px;
        }
        
        /* The Modal (background) */
        .modal {
          display: none; /* Hidden by default */
          position: fixed; /* Stay in place */
          z-index: 1; /* Sit on top */
          left: 0;
          top: 0;
          width: 100%; /* Full width */
          height: 100%; /* Full height */
          overflow: auto; /* Enable scroll if needed */
          background-color: rgb(0,0,0); /* Fallback color */
          background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
          padding-top: 60px;
        }
        
        /* Modal Content/Box */
        .modal-content {
          background-color: #fefefe;
          margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
          border: 1px solid #888;
          width: 80%; /* Could be more or less, depending on screen size */
        }
        
        /* The Close Button (x) */
        .close {
          position: absolute;
          right: 25px;
          top: 0;
          color: #000;
          font-size: 35px;
          font-weight: bold;
        }
        
        .close:hover,
        .close:focus {
          color: red;
          cursor: pointer;
        }
        
        /* Add Zoom Animation */
        .animate {
          -webkit-animation: animatezoom 0.6s;
          animation: animatezoom 0.6s
        }
        
        @-webkit-keyframes animatezoom {
          from {-webkit-transform: scale(0)} 
          to {-webkit-transform: scale(1)}
        }
          
        @keyframes animatezoom {
          from {transform: scale(0)} 
          to {transform: scale(1)}
        }
        
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
          span.psw {
             display: block;
             float: none;
          }
          .cancelbtn {
             width: 100%;
          }
        }
        h2 {
            font-size: px;
        }
        </style>
</head>
<body>
    <nav id="navbar">
        <div id="logo">
            <img src="logo.png" >
        </div>
        <ul>
          <li class="item"><a href="first.jsp"> Home</a></li>
            <li class="item"><a href="admin.jsp">Admin login</a></li>
            <li class="item"><a href="bloodreq.jsp"> Blood Request</a></li>
            <li class="item"><a href="userreg.jsp"> User Register</a></li>
            <li class="item"><a href="search.jsp"> Search Donar</a></li>
            <li class="item"><a href="facts.jsp"> Blood Donation Facts</a></li>
            <li class="item"><a href="#contact">Contact Us</a></li>
            <li class="item"><a href="feedback.jsp">feedback</a></li>
        </ul>
    </nav>
    <center>
    <h2 style="margin-top: 10%;"  >Admin Login</h2>
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<div id="id01" class="modal" >
  
  <form class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="avtar.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
      <button type="submit">Login</button>
    
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
</center>

</body>
<%
String uname=request.getParameter("uname");
String password=request.getParameter("password");
if(uname!=null&&password!=null)
{
  if(uname.equals("admin")&&password.equals("admin"))
  {
	  response.sendRedirect("home.jsp");
  }
  else
  {
	  response.sendRedirect("admin.jsp?msg=invalid");
	  
  }
  
}
%>
<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg))
	{
		%>
		<center><font color="red" size="5">Invalid Username/Password..</font></center>
		<%
	}
		
	%>

</body>
</html>