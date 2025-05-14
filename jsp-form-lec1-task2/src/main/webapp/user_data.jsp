<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
      <script>
        function validateForm() {
            var radioButtons = document.getElementsByName("address");
            var selectedRadio = null;
            var selectAddress = document.getElementById("address-select").value;
            var errorMessage = "";

            // Check which radio button is selected
            for (var i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    selectedRadio = radioButtons[i].value;
                    break;
                }
            }

            // Compare radio button value with select dropdown value
            if (selectedRadio !== selectAddress) {
                errorMessage = "The address selected from the radio buttons must match the address selected from the dropdown.";
            }

            // If there's an error, display it and prevent form submission
            if (errorMessage) {
                document.getElementById("error-message").innerText = errorMessage;
                return false; // Prevent form submission
            }
            document.getElementById("error-message").innerText = errorMessage;
            return true; // Form is valid
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h2>User Information</h2>
        <form action="show_user_data.jsp" method="post" onsubmit="return validateForm()">
            
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>

            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            
            <label for="address">Address:</label><br>
            <div class="radio-container">
            <input type="radio" id="cairo" name="address" value="Cairo" required>
            <label for="cairo">Cairo</label>

            <input type="radio" id="alex" name="address" value="Alexandria">
            <label for="alex">Alexandria</label>

            <input type="radio" id="menofia" name="address" value="Menofia">
            <label for="menofia">Menofia</label>
            </div><br>

            
            <label for="address-select">Select Address:</label>
            <select id="address-select" name="address-select" required>
                <option value="Cairo">Cairo</option>
                <option value="Alexandria">Alexandria</option>
                <option value="Menofia">Menofia</option>
            </select><br><br>

              <!-- Error Message -->
            <div id="error-message" style="color: red;"></div>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>