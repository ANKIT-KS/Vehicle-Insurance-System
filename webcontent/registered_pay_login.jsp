<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Pay Login</title>
</head>
<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
 <center>
            <p>Vehicle Registered Successfully</p>
             </center>
         <table >
            <tr>PolicyID="<%= request.getAttribute("PolicyID") %>"</tr> 
            
            <tr>Amount="<%= request.getAttribute("Amount") %>"</tr> 
            
            <tr>Date="<%= request.getAttribute("Date") %>"</tr>
            </table>
        
         
</body>
</html>