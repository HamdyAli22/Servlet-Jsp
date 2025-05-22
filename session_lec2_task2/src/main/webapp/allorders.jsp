<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<String> orders = (ArrayList<String>) session.getAttribute("orders");
%>
<html>
<head>
    <title>All Orders</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>All Your Food Orders</h2>
    <%
        if (orders != null && !orders.isEmpty()) {
    %>
        <ul>
        <%
            for (String order : orders) {
        %>
            <li><%= order %></li>
        <%
            }
        %>
        </ul>
    <%
        } else {
    %>
        <p>No orders yet.</p>
    <%
        }
    %>
    <br>
    <a href="order.jsp">Back to Order Page</a>
</body>
</html>
