<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
        
  PreparedStatement psDeleteRecord=null;
  String sqlDeleteRecord=null;
        
  int ProID=Integer.parseInt(request.getParameter("DPID"));
      
  try
  {
      
    sqlDeleteRecord="Delete from products where PruductID=?";
    psDeleteRecord=conn.prepareStatement(sqlDeleteRecord);
    psDeleteRecord.setInt (1,ProID);
   
            
   psDeleteRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psDeleteRecord!=null)
      {
       psDeleteRecord.close();
      }
      
      if(conn!=null)
      {
       conn.close();
      }
    }
    catch(Exception e)
    {
      e.printStackTrace(); 
    }
%>
<html>
   <head>
      <meta http-equiv="REFRESH" content="3;url=/E-shopping/login.jsp">
    </head> 
<body>
Data is deleted successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>
