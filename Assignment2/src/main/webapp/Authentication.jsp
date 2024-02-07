<%--
  Created by IntelliJ IDEA.
  User: Adele
  Date: 2/7/2024
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1099c;
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
            background-color: #ef1212;
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
            color: #e7b4bd;
        }

        .container {
            background-color: #a84545;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button {
            background-color: #ec0713;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #630a36ac;
        }

        .switch-form {
            margin-top: 10px;
        }

        .switch-form a {
            color: #e7b4bd;
            text-decoration: none;
        }

        .switch-form a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #ffbf00bb;
            font-size: 18px;
            margin-top: 5px;
        }
    </style>
</head>

<body>
<div class="container" id="loginForm">
    <h2>Login</h2>
    <form action="/loggin" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <input type="text" id="username" name="username" placeholder="Username or Email">
            <div class="error-message" id="usernameError"></div>
        </div>

        <div class="form-group">
            <input type="password" id="password" name="password" placeholder="Password">
            <div class="error-message" id="passwordError"></div>
        </div>

        <button type="submit">Login</button>
        <div class="error-message" id="errorMessage">
            <%
                String error = (String) request.getAttribute("error");
                if (error != null && !error.isEmpty()) {
                    out.println(error);
                }
            %>
        </div>
    </form>


</div>

<script>
    function validateForm() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        var valid = true;

        if (username.trim() === '') {
            document.getElementById('usernameError').innerHTML = 'Please enter your username or email';
            valid = false;
        } else {
            document.getElementById('usernameError').innerHTML = '';
        }

        if (password.trim() === '') {
            document.getElementById('passwordError').innerHTML = 'Please enter your password';
            valid = false;
        } else {
            document.getElementById('passwordError').innerHTML = '';
        }

        return valid;
    }
</script>
</body>

</html>
