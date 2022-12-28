<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body>
<%@include file="navbar.jsp"%>

 <div class="form-container">
 <form action = "adminLogin" method = "post">
 <h3>Admin Login</h3><br>
 <label for ="aName">Name :</label>
 <input type ="text" id ="aName" name ="aName"><br>
 
 <label for ="password">Password :</label>
 <input type ="password" id="password" name ="password"><br>
 
 <button type = "submit">Login</button>
 </form>
 </div>


</body>
</html>