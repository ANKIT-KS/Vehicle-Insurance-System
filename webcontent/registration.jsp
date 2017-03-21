
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="cities.js"></script>
<title>User Register</title>
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
	<h2>User Registration</h2>
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
<td style="text-align: left;">Country</td>
<td style="text-align: left;">
<select name="country" id="country" onchange="setStates();">
  <option value="India ">India</option>
</select>
</td>
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
<td style="text-align: left;">City</td>
<td style="text-align: left;">
<select name="city"  id="city">
  <option value="">Please select a city</option>
</select>
</td>
</tr>
				
				
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
					<td><input type="text" required name="dob" placeholder="yyyy-mm-dd" /></td>
				</tr>
			</table>
			
			<input type="submit" class="button button2" value="register" />
			<input type="reset" class="button button2"/>
		</form>
	</div>
</body>
</html>
