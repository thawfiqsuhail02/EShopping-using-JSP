<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
        Connection conn = null;
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
        
        PreparedStatement psSelectRecord=null;
        ResultSet rsSelectRecord=null;
        String sqlSelectRecord=null;
   
        sqlSelectRecord ="SELECT * FROM products";
        psSelectRecord=conn.prepareStatement(sqlSelectRecord);
        rsSelectRecord=psSelectRecord.executeQuery();
%>
<html>
<head>
<title>Online Shopping - HOME</title>
<style>
body{
  line-height: 1.5;
  background-color: #f8f7de;
}
td
{
text-align:center
}
</style>
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 url(menu_assets/images/bg-bubplastic.gif) top left repeat-x;
}
.cssmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
.cssmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top left no-repeat;
}
.cssmenu ul li a {
	display: block;
	height: 27px;
	padding-left: 35px;
	float: left;
	text-transform: uppercase;
	font-family: 'Helvetica Neue',helvetica,'microsoft sans serif',arial,sans-serif;
	font-size: 70%;
	color: #FFFFFF;
	text-decoration: none;
}
.cssmenu ul li a span {
	display: block;
	float: left;
	height: 22px;
	padding-top: 5px;
	padding-right: 35px;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top right no-repeat;
	cursor: pointer;
}
.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top left no-repeat;
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top right no-repeat;
}
</style>
</head>
<body>
 <div align="center">
 <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='login.jsp'><span>Login</span></a></li>
   <li><a href='aboutus .html'><span>About</span></a></li>
   <li><a href='index.html'><span>Contact</span></a></li>
</ul>
</div> 
 </div>
 <div align="center">
     <h1>View Products from Database</h1>
 <table border='0' cellpadding='6' width='700'>
 <tr>
   <td  bgcolor="#33CCCC">PNO</td>
   <td  bgcolor="#33CCCC">Product ID</td>
   <td  bgcolor="#33CCCC">Product Name</td>
   <td  bgcolor="#33CCCC">Product Quantity</td>
   <td  bgcolor="#33CCCC">Product Category</td>
   <td  bgcolor="#33CCCC">Price</td> 
   <td  bgcolor="#33CCCC">ADD to CART</td> 
   </tr>
  <%
  int cnt=1;
  while(rsSelectRecord.next())
  {
  %>
   <tr>
   <td bgcolor="#FF9900"><%=cnt%></td>
   <td><%=rsSelectRecord.getInt("PruductID")%></td>
   <td><%=rsSelectRecord.getString("PruductName")%></td>
   <td><%=rsSelectRecord.getInt("ProductQuant")%></td>
   <td><%=rsSelectRecord.getString("ProductCAT")%></td>
   <td><%=rsSelectRecord.getString("ProductPrice")%></td> 
   <td><b><span lang="en-us"><a href="buy.jsp">BUY</a></span></b></td>
   <tr>
  <br>
  <%
   cnt++;   /// increment of counter
  } /// End of while loop
  %>
  </table>
 </div>
</body>
</html>
<%
try{
          if(psSelectRecord!=null)
          {
            psSelectRecord.close();
          }
          if(rsSelectRecord!=null)
          {
            rsSelectRecord.close();
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
