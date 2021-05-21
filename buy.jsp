<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ORDER PRoDUCT</title>
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
        
       <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='login.jsp'><span>Login</span></a></li>
   <li><a href='index.jsp'><span>About</span></a></li>
   <li><a href='#'><span>Contact</span></a></li>
</ul>
</div> 
       <form name="frm" action="updatOrder.jsp">
       <div align="center">
           <h1>ORDER PRUDUCT</h1>
       <table>
       <tr><td bgcolor="#FF9900">Customer ID</td><td> <input type="text" name="CUSTID"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Name </td><td> <input type="text" name="CUSTNAME"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Phone </td><td> <input type="text" name="CUSTPHONE"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Email</td><td>  <input type="text" name="CUSTMAIL"></td></tr>
       <tr><td bgcolor="#FF9900">Customer Address</td><td>  <input type="text" name="CUSTADDR"></td></tr>
       <tr><td bgcolor="#FF9900">Product ID</td><td>  <input type="text" name="OPID"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
       </div>
       </form>
    </body>
</html>
