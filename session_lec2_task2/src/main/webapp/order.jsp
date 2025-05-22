<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<String> orders = (ArrayList<String>) session.getAttribute("orders");
    if (orders == null) {
        orders = new ArrayList<>();
        session.setAttribute("orders", orders);
    }

    String newOrder = request.getParameter("food");
    if (newOrder != null && !newOrder.trim().isEmpty()) {
        orders.add(newOrder.trim());
    }
%>
<html>
<head>
    <title>Order Food</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Order Your Food</h2>
    <form action="order.jsp" method="post">
        <label>Food Name:</label>
        <input type="text" name="food" required />
        <input type="submit" value="Order" />
    </form>
    <br>
    <a href="allorders.jsp">View All Orders</a>
</body>
</html>
