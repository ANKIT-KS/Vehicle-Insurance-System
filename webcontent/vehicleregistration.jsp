<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="type.js"></script>
<title>User Data</title>
</head>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
<body>
<a href="home.jsp" id="admin">Home</a>&nbsp;&nbsp;
	<h1>Registration Form</h1>
	<div class="ex">
		<form action="VehicleRegistrationServlet" method="post">
		

		
			<table style="with: 50%">
				<tr>
					<td>Owner ID</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" name="state" /></td>
				</tr>
				
				
				
				
				<tr>
<td style="text-align: left;">Type</td>
<td style="text-align: left;">
<select name="type" id="type" onchange="setStates();">
  <option value="Two Wheeler">Two Wheeler</option>
  <option value="Four Wheeler">Four Wheeler</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Manufacturer</td>
<td style="text-align: left;">
<select name="manufacturer" id="manufacturer" onchange="setCities();">
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
					<td>Registering Location</td>
					<td><input type="text" name="location" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="number" name="price" /></td>
				</tr>
				<tr>
					<td>Date of Purchase</td>
					<td><input type="date" name="dop" /></td>
				</tr>
			</table>
			
			<input type="submit" value="register" />
		</form>
	</div>
</body>
</html>