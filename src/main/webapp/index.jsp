
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">

<style>
.myslides {display:none;}

input[type="text"], input[type="mail"]
{
border:none;
background:silver;
height:50px;
font-size:16px;
margin-left:2%;
padding:15px;

}
</style>

</head>
<body>
<div class="header">
   <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
<div class="header-right">
  <a class="active" href="index.jsp">HOME</a>
  <a href="adminlogin.jsp">ADMIN LOGIN</a>
  </div>
</div>

<div style="max-width:100%">
   <img class="myslides" src="slide2.jpeg">
   <img class="myslides" src="slide1.png">
 </div>
 
 <script>
 var myIndex = 0;
 carousel();
 
 function carousel() 
 {
	 var i;
	 var x=document.getElementsByClassName("myslides")
	 for(i = 0; i < x.length; i++)
		 {
		 x[i].style.display= "none";
		 }
      myIndex++;
      if(myIndex > x.length) {myIndex = 1}
      x[myIndex-1].style.display = "block";
      setTimeout(carousel, 2000);
      

 }
 
 
 </script>
 </body>
 <br>
 <%
 String msg=request.getParameter("msg");
 if("valid".equals(msg))
 {
	 %>
	 <center><font color="red" size="5">Form Submitted Succesfully. You will get notified within 24 hours.</font>
	 </center>
	 <% 
 }
 %>
 <% 
 if("invalid".equals(msg))
 {
	 %>
	 <center><font color="red" size="5">Invalid Data. Try again..</font></center>
	 <% 
 }
 %>
 <center><h1>Enter Your Details To Request for Blood</h1></center>
 <form action="indexFormAction.jsp" method="post">

 <center>
 <input type="text" name="name" placeholder="Enter Name" required>
 <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
 <input type="text" name="email" placeholder="Enter Email Address" required>
 <input type="text" name="bloodgroup" placeholder="Enter Blood Group" requied>
 <button class="button1"><span>Submit</span></button>
 </center>
 
 </form>
 