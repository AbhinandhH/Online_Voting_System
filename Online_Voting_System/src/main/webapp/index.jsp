<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="form-container">
<form action ="voterLogin" method = "post">
<h2>ENTER YOUR VOTER ID NUMBER</h2>

<input name="voterNumber" type="text" id="voterNumber">
<br>
<button type="submit">Login</button>
<br>
<br>
<a href="adminLogin.jsp ">Admin</a>
</form>
</div>
</body>
</html>