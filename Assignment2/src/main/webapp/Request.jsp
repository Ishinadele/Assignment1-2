<%--
  Created by IntelliJ IDEA.
  User: Adele
  Date: 2/7/2024
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #4CAF50;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }

        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #2E7D32;
            padding: 10px 0;
            box-sizing: border-box;
            z-index: 2;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            font-size: 16px;
            transition: color 0.3s ease-in-out;
        }

        nav a:hover {
            color: #C8E6C9;
        }

        .container {
            background-color: #8BC34A;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 10px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .form-group input,
        .form-group select {
            flex-basis: 45%;
            width: 100%;
            padding: 6px;
            box-sizing: border-box;
            margin-bottom: 6px;
        }

        button {
            background-color: #43A047;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        button:hover {
            background-color: #1B5E20;
        }

        .switch-form {
            margin-top: 15px;
        }

        .switch-form p {
            margin: 0;
        }

        .switch-form a {
            color: #1B5E20;
            text-decoration: none;
            cursor: pointer;
        }

        .switch-form a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #FFEB3B;
            font-size: 18px;
            margin-top: 5px;
        }
    </style>
</head>

<body>

<div class="container" id="signupForm">
    <h2>Student Registration</h2>
    <form action="/Returner" method="post">
        <div class="form-group">
            <input type="text" id="firstName" name="firstName" placeholder="First Name" required>
            <select id="gender" name="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>

        <div class="form-group">
            <input type="text" id="lastName" name="lastName" placeholder="Last Name" required>
            <input type="date" id="dob" name="dob" placeholder="Date of Birth" required>
        </div>

        <div class="form-group">
            <input type="text" id="address" name="address" placeholder="Address" required>
            <input type="tel" id="contact" name="contact" placeholder="Contact" required>
        </div>

        <div class="form-group">
            <input type="email" id="email" name="email" placeholder="Email" required>
            <input type="text" id="course" name="course" placeholder="Course" required>
        </div>

        <div class="form-group">
            <input type="text" id="department" name="department" placeholder="Department" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
        </div>

        <button type="submit">Sign Up</button>
    </form>

    <div class="switch-form">
        <p>Already have an account? <a href="#" onclick="toggleForm('login')">Login</a></p>
    </div>

    <div class="error-message" id="firstNameError"></div>
    <div class="error-message" id="emailError"></div>
    <div class="error-message" id="passwordError"></div>
</div>
</body>

</html>

