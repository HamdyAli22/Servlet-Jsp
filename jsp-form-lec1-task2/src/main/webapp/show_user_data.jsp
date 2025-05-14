<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="form-container">
        <h2>Submitted Information</h2>

        <p><strong>Full Name:</strong> <%= request.getParameter("fullName") %></p>
        <p><strong>Password:</strong> <%= request.getParameter("password") %></p>
        <p><strong>Age:</strong> <%= request.getParameter("age") %></p>

        <p><strong>Address (Radio Button):</strong> 
            <%= request.getParameter("address") != null ? request.getParameter("address") : "Not selected" %>
        </p>
        <p><strong>Address (Select Dropdown):</strong> 
            <%= request.getParameter("address-select") != null ? request.getParameter("address-select") : "Not selected" %>
        </p>

        <br><br>
        <button onclick="window.history.back();">Go Back</button>
    </div>
</body>
</html>
