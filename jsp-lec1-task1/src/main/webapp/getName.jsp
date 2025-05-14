<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Concatenate Name With Id</title>
</head>
<body>
<%!
//Define two variables
int id = 1;
String name = "Bob";

// Define a function to concatenate id and name
String concatenate(int userId, String userName) {
    return "ID: " + userId + ", Name: " + userName;
}
%>
<%
// Call the function and print result
out.print("<h1> Welcome " + name +"</h1>");
out.print("<h1>" + concatenate(id,name) +"</h1>");
%>
</body>
</html>