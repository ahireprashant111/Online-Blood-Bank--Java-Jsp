<%@page import="ok.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String mobile=request.getParameter("mobile");
try
{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("update bloodreq set status='completed' where mobile=?");
    ps.setString(1,mobile);
    ps.executeUpdate();
    
    response.sendRedirect("requestForBlood.jsp");
    
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
	}
%>