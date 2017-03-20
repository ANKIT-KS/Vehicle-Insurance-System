<!DOCTYPE html >

<html>
	<head>
    
		<title>Login Page</title>
		<style>
a:link, a:visited {
    
    color: white;
    padding: 14px 25px;
    
    font-family:Arial, Helvetica, sans-serif;
    text-decoration: none;
    display: inline-block;
}



.button {
   
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 8%;
}

.button2 {
    background-color: white;
    color: black;
    
}


.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    background-color: #e7e7e7;
}


a:hover, a:active {
    background-color: grey;
}
		h2
		{
		color: white;
		font-family:Arial, Helvetica, sans-serif;
		text-align: center;
		
		}
		body{
		background-image: url("car1.jpg");
		background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
		}
		</style>
	</head>

	<body>
	
	<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
		<form action="LoginServlet" method="post">

			<h2>Please enter your username</h2>		
			<h2><input type="text" name="username"/></h2><br>		
		
			    <h2>Please enter your password</h2>
			<h2><input type="password" name="password"/></h2><br>
			
			<h2><input type="submit" class="button button2" value="Login">	</h2>		
		</form>
	</body>
</html>
