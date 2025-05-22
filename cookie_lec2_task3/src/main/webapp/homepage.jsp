<%@ page import="javax.servlet.http.Cookie" %>

<%
    String favPlace = request.getParameter("favPlace");

    if (favPlace != null && !favPlace.isEmpty()) {
        Cookie favPlaceCookie = new Cookie("application.place", favPlace);
        favPlaceCookie.setMaxAge(30 * 24 * 60 * 60); // 30 days
        response.addCookie(favPlaceCookie);
    } else {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("application.place".equals(cookie.getName())) {
                    favPlace = cookie.getValue();
                    break;
                }
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Welcome!</h1>
    <%
        if (favPlace != null && !favPlace.isEmpty()) {
    %>
        <p>Your favorite place is: <strong><%= favPlace %></strong></p>
    <%
        } else {
    %>
        <p>No favorite place submitted.</p>
    <%
        }
    %>

    <!-- Back Button -->
    <form action="start.html" method="get">
        <button type="submit">Back</button>
    </form>
</body>
</html>
