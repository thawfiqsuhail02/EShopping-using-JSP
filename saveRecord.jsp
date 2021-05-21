<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  int ProID=Integer.parseInt(request.getParameter("IPID"));
  String ProName=request.getParameter("IPname");
  int ProQuant=Integer.parseInt(request.getParameter("IPQuant"));
  String ProCat=request.getParameter("IPcat");
  String ProPrice=request.getParameter("IPprice");
  
        
  try
  {
   sqlInsertRecord="insert into products (PruductID, PruductName, ProductQuant, ProductCAT,  ProductPrice) values(?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
   psInsertRecord.setInt(1,ProID);
   psInsertRecord.setString(2,ProName);
   psInsertRecord.setInt(3,ProQuant);
   psInsertRecord.setString(4,ProCat);
   psInsertRecord.setString(5,ProPrice);
   
            
   psInsertRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psInsertRecord!=null)
      {
       psInsertRecord.close();
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
Data is saved successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>