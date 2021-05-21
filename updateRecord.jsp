<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
        
  PreparedStatement psUpdateRecord=null;
  String sqlUpdateRecord=null;
        
  int ProID=Integer.parseInt(request.getParameter("UPID"));
  String ProName=request.getParameter("UPname");
  int ProQuant=Integer.parseInt(request.getParameter("UPQuant"));
  String ProCat=request.getParameter("UPcat");
  String ProPrice=request.getParameter("UPprice");
      
  try
  {   
   sqlUpdateRecord="update products set PruductName = ?, ProductQuant = ?, ProductCAT = ?, ProductPrice = ?  where PruductID = ?";
   psUpdateRecord=conn.prepareStatement(sqlUpdateRecord);
   psUpdateRecord.setInt (1,ProID);
   psUpdateRecord.setString(2,ProName);
   psUpdateRecord.setInt(3,ProQuant);
   psUpdateRecord.setString(4,ProCat);
   psUpdateRecord.setString(5,ProPrice);      
   psUpdateRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psUpdateRecord!=null)
      {
       psUpdateRecord.close();
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
Data is Updated successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....

</body>
</html>
