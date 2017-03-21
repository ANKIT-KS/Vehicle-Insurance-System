<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="type.js"></script>

<title>Vehicle Register</title>
</head>
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
<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	<h1>Vehicle Registration</h1>
	<div class="ex">
		<form action="VehicleRegistrationServlet" method="post">
		

		
			<table style="with: 50%">
				<tr>
					<td>Owner ID</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
<td style="text-align: left;">State</td>
<td style="text-align: left;">
<select name="state" id="state" onchange="setCities();">
  <option value="">Please select a state</option>
</select>
</td>
</tr>
				
				
				
				
				<tr>
<td style="text-align: left;">Type</td>
<td style="text-align: left;">
<select name="type" id="type" onchange="setManu();">
  <option value="Two Wheeler">Two Wheeler</option>
  <option value="Four Wheeler">Four Wheeler</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Manufacturer</td>
<td style="text-align: left;">
<select name="manufacturer" id="manufacturer" onchange="setModel();">
  <option value="">Please select a manufacturer</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Model</td>
<td style="text-align: left;">
<select name="model"  id="model">
  <option value="">Please select a model</option>
</select>
</td>
</tr>
				<tr>
					<td>Class</td>
					<td><input type="radio" name="class" value="private" checked>Private</td>
					<td><input type="radio" name="class" value="public" checked>Public</td>
				
				</tr>
				
				
				
				<tr>
					<td>Engine Number</td>
					<td><input type="number" name="engine" /></td>
				</tr>
				<tr>
					<td>Year of Make</td>
					<td><input type="year" name="yom" maxlength="4"/></td>
				</tr>
					<tr>
<td style="text-align: left;">Registering Location</td>
<td style="text-align: left;">
<select name="city"  id="city">
  <option value="">Please select a city</option>
</select>
</td>
</tr>
					<td>Price</td>
					<td><input type="number" name="price" /></td>
				</tr>
				<tr>
					<td>Date of Purchase</td>
					<td><input type="text" name="dop" placeholder="dd-mm-yyyy" /></td>
				</tr>
			</table>
			
			<input type="submit" value="register" />
		</form>
	</div>
</body>
</html>
