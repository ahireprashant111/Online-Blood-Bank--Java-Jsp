<%
String username=request.getParameter("username");
String password=request.getParameter("password");
  if("pranita".equals(username) && "pranita".equals(password))
  {
	  response.sendRedirect("home.jsp");
  }
  else
  {
	  response.sendRedirect("adminlogin.jsp?msg=invalid");
	  
  }
%>
