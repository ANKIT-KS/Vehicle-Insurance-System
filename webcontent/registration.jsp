<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
		<form action="RegistrationServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Name</td>
					<td><input type="text" required name="name" pattern="[a-zA-Z ]*" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" required name="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{3,}$" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" required name="address" pattern="^[A-Za-z\d ]*" /></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" required name="city" /></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" required name="state" /></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><input type="text" required name="country" /></td>
				</tr>
				<tr>
					<td>Pin Code</td>
					<td><input type="text" required name="pincode" maxlength="6" pattern="[\d]{6}"/></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="email" required name="email" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" value="male" checked>Male</td>
					<td><input type="radio" name="gender" value="female" checked>Female</td>
					<td><input type="radio" name="gender" value="other" checked>Other</td>
				</tr>
				<tr>
					<td>Contact No.</td>
					<td><input type="text" required name="contact" maxlength="10" pattern="[\d]{10}"/></td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td><input type="date" required name="dob" /></td>
				</tr>
			</table>
			
			<input type="submit" value="register" />
			<input type="reset" />
		</form>
	</div>
</body>
</html>