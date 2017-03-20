<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
		<title>Cancel Page</title>
	</head>

	<body>
	<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
		<form action="CancelServlet" method="post">

			Please enter your policy number	
			<input type="text" name="username"/><br>		
		
			
			
			<input type="submit" value="cancel">			
		
		</form>
	</body>
</html>