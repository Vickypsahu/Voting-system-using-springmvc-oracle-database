<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <title>Home page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>
.a{color:black;
text-align:center;}
.table{
width:400px;}
</style>
</head>
<body>
<h3 class="a">Admin home page</h3>
<center>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Candidate</th>
      <th scope="col">count</th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="candidate" items="${votedata}">
    <tr>
      <td><c:out value="${candidate[0]}"></c:out></td>
      <td><c:out value="${candidate[1]}"></c:out></h3></td>
    </tr>
    </c:forEach>
</tbody>
</table>
</center>
</body>
</html>