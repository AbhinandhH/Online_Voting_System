<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body>
<%@include file="navbar.jsp"%>

 <div class="form-container">
 <form action = "Contact" method = "post">
 <h4>SEND US YOUR QUERY</h4><br>
 <label for ="uName" class = "label1">Name   :</label>
 <input type ="text" id ="uName" name ="uName"><br>
 
 <label for ="pNumber">Phone :</label>
 <input type ="number" id="pNumber" name ="pNumber"><br>
 
 
 <label for ="mail">Email :</label>
 <input type ="email" id ="mail" name = "mail">
 
 <label for = "comments">Comments :</label><br>
 <textarea id = "comments" name = "comments"></textarea><br> 
 
 <button type = "submit">Submit</button>
 </form>
 </div>
</body>
</html>