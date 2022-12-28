<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Registration</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css"> 
<body>
<%@include file="navbar.jsp"%>

<div class="form-container">
 <form action="Registration" method="post">
 <h3>ENTER YOUR DETAILS</h3><br>
 <label for ="uName">Name :</label>
 <input type ="text" id ="uName" name ="uName"><br>
 
 <label for ="pNumber">Phone :</label>
 <input type ="number" id="pNumber" name ="pNumber"><br>
 
 <label for ="mail">Email :</label>
 <input type ="email" id="mail" name ="mail"><br>
 
 <label for ="vCardNum">Voter ID Number :</label>
 <input type ="text" id="vCardNum" name ="vCardNum"><br>
 
 <label for ="address">Address :</label>
 <input type ="text" id="address" name ="address"><br>
 
 <label for ="dob">Date of Birth :</label>
 <input type ="date" id="dob" name ="dob"><br>
 
 <button type = "submit">Register</button>
 </form>
 </div>

</body>
</html>