 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Voter</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body>
<%@include file="navbar.jsp"%>

<div class = "form-container">
<form action = "vote" method = "post">

 <label for ="idNum">Voter ID Number :</label>
 <input type ="text" id ="idNum" name ="idNum"><br>
 
 <label for ="party">Choose Your Party :</label><br>
 <select name = "party" id = "party">
 <option value = "AAM">AAM AADMI PARTY</option>
 <option value = "cpim">CPIM</option>
 <option value = "bjp">BJP</option>
 <option value = "bsp">BSP</option>
 <option value = "congress">CONGRESS</option>
 </select>
 <br>
 <button type = "submit">Submit</button>

</form>
</div>
</body>
</html>