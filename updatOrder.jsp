<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  int CustID=Integer.parseInt(request.getParameter("CUSTID"));
  String CNAME=request.getParameter("CUSTNAME");
  String PHONE=request.getParameter("CUSTPHONE");
  String MAIL=request.getParameter("CUSTMAIL");
  String ADDR=request.getParameter("CUSTADDR");
  int OrPID=Integer.parseInt(request.getParameter("OPID"));
  
        
  try
  {
   sqlInsertRecord="insert into ordercustomer (CustID, custName, CustEmail, CustAdress, ProductID, custPhone) values(?,?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
   psInsertRecord.setInt (1,CustID);
   psInsertRecord.setString(2,CNAME);
   psInsertRecord.setString(3,MAIL);
   psInsertRecord.setString(4,ADDR);
   psInsertRecord.setInt(5,OrPID);
   psInsertRecord.setString(6,PHONE);
   
            
   psInsertRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("buy.jsp");//// On error it will send back to addRecord.jsp page
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
      <meta http-equiv="REFRESH" content="3;url=/E-shopping/index.jsp">
    </head>
<body>
Ordered successfully. Thank YOU for Ordering and visiting Our Web site<br>
You will be redirected to the Main Page in 3 seconds.....
</body>
</html>