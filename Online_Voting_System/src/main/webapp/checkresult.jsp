<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "java.sql.DriverManager"%>
    
    <%@page import = "java.sql.ResultSet"%>
    
    <%@page import = "java.sql.Statement"%>
    
    <%@page import = "java.sql.PreparedStatement"%>
    
    <%@page import = "java.sql.Connection"%>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<%

String a[] = new String[100];


Class.forName("com.mysql.cj.jdbc.Driver");

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingSystemDb","root","abhinandh");

PreparedStatement state = con.prepareStatement("select party,count(party) as c from votecount group by party");

ResultSet result = ((Statement)state).executeQuery("select party,count(party) as c from votecount group by party");

int i = 0;
while(result.next()){
	a[i] = result.getString("c");
	i++;
}

%>


</head>
<body>
<%@ include file = "adminNavbar.jsp" %>

<div class = "checktable">
<table>

<tr>
<th>Parties</th>
<th>Name</th>
<th>Votes</th>
</tr>

<tr>
<td><img alt="aam admi party" src="https://akm-img-a-in.tosshub.com/indiatoday/images/video/201504/logo-video_650_040815104122.jpg?VersionId=Da79SAeLbKop2D07g6X0dhMgKRXKEvej"></td>
<td> AAM ADMI PARTY</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td><img alt="cpim" src="https://themayanagari.com/wp-content/uploads/2021/05/2.jpg"></td>
<td> CPIM</td>
<td><%=a[1]%></td>
</tr>


<tr>
<td><img alt="BJP" src="https://www.shutterstock.com/image-vector/orange-lotus-bjp-logo-vector-260nw-1750364873.jpg"></td>
<td> BJP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td><img alt="Congress" src="https://m.media-amazon.com/images/I/61FXpKlb+HL._SL1500_.jpg"></td>
<td> CONGRESS</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td><img alt="BSP" src="https://content.jdmagicbox.com/comp/lucknow/q7/0522px522.x522.180319200748.i2q7/catalogue/bsp-party-office-hazratganj-lucknow-political-party-office-femkeqed92.jpg"></td>
<td> BSP</td>
<td><%=a[4]%></td>
</tr>

</table>
</div>




</body>
</html>