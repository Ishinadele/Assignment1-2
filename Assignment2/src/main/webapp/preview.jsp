<%--
  Created by IntelliJ IDEA.
  User: Adele
  Date: 2/7/2024
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Preview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2E7D32;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #7cce88;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333333;
        }

        p {
            color: #555555;
            margin-bottom: 10px;
        }

        strong {
            color: #000000;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Student Information Preview</h2>
    <p><strong>First Name:</strong> ${firstName}</p>
    <p><strong>Gender:</strong> ${gender}</p>
    <p><strong>Last Name:</strong> ${lastName}</p>
    <p><strong>Date of Birth:</strong> ${dob}</p>
    <p><strong>Address:</strong> ${address}</p>
    <p><strong>Contact:</strong> ${contact}</p>
    <p><strong>Email:</strong> ${email}</p>
    <p><strong>Course:</strong> ${course}</p>
    <p><strong>Department:</strong> ${department}</p>
    <p><strong>Password:</strong> ${password}</p>
</div>
</body>

</html>
