<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="ok.ConnectionProvider"%>
        <%@ page import="javax.swing.*" %>

    
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blood Donation Online | Home </title>
    <link rel="stylesheet" href="decoration.css">
    <link rel="stylesheet" media="screen and (max-width: 1170px)" href="phone.css">
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Bree+Serif&display=swap" rel="stylesheet">
</head>

<body>
 <nav id="navbar">
        <div id="logo">
            <img src="logo.png" alt="MyOnlineMeal.com">
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

    <section id="home">
        <h1 class="h-primary" style="color: black;" >Blood Donation Online</h1>
        <p style="color: black;">"Bring a life Back to power. Make Blood Donation your responsibility." </p>
        
        <button class="btn1"> <a href="userreg.jsp">Donate Us</a></button>
    </section>

    <section id="services-container">
        <h1 class="h-primary center">Our Services</h1>
        <div id="services">
            <div class="box">
                <img src="1.png" alt="">
                <h2 class="h-secondary center" > <a href="search.jsp" style="
                    text-decoration: none;
                    color: inherit;
                    "> Find Donar </a></h2>
                <p class="center"></p>
            </div>
            <div class="box">
                <img src="2.png" alt="">
                <h2 class="h-secondary center" > <a href="bloodreq.jsp" style="
                    text-decoration: none;
                    color: inherit;
                    "> Blood request </a> </h2>
                <p class="center"></p>
            </div>
            <div class="box">
                <img src="3.png" alt="">
                <h2 class="h-secondary center" > <a href="userreg.jsp" style="
                    text-decoration: none;
                    color: inherit;"> Are you a Donar </a></h2>
                <p class="center"></p>
            </div>
        </div>
    </section>
    <section id="client-section">
        <h1 class="h-primary center">Follow Us On</h1>
        <div id="clients">
            <div class="client-item">
                <img src="logo1.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="logo2.png" alt="Our Client">
            </div>
          
            <div class="client-item">
                <img src="logo4.png" alt="Our Client">
            </div>
            <div class="client-item">
                <img src="logo3.png" alt="Our Client">
            </div>
        </div>

    </section>

    <section id="contact">
        <h1 class="h-primary center">Contact Us</h1>
        <div id="contact-box">
            <form class="reg-form" method="post">
                <div class="form-group">
                    <label for="name">Name: </label>
                    <input type="text" name="Name" id="name" placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label for="email">Email: </label>
                    <input type="email" name="Email" id="email" placeholder="Enter your email">
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number: </label>
                    <input type="phone" name="Pno" id="phone" placeholder="Enter your phone">
                </div>
                <div class="formm-group">
                    <label for="message">Message: </label>
                    <textarea name="message" id="Message" cols="20" rows="10"></textarea>
                
               </div>
                 <div class="form-group">
                  <center>
           <button type="submit"   class="form-button">Submit</button></center>
        </div>
            </form>

        </div>
    </section>

    <footer>
        <div class="center">
            Copyright &copy; Project By Hitakshi Sunil Patil
        </div>
    </footer>
    
    <% 
String Name=request.getParameter("Name");
String Email=request.getParameter("Email");
String Pno=request.getParameter("Pno");
String Message=request.getParameter("Message");
if(Name!=null && Email!=null && Pno!=null && Message!=null)
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");  
		 Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
		int k=st.executeUpdate("insert into cont values(' "+Name+" ',' "+Email+" ',' "+Pno+" ',' "+Message+" ')");
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


