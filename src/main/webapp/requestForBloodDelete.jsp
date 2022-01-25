<%@page import="ok.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String mobile=request.getParameter("mobile");
try
{
    Connection con=ConnectionProvider.getCon();
   Statement st=con.createStatement();
   st.executeUpdate("delete from bloodreq where mobile='"+mobile+"'");
   
    response.sendRedirect("requestForBlood.jsp");
    
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
	}
%>