<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }
    nav {
        
        background-color: blueviolet;
        font-size: large;
        padding: 10px;
        
    }
    nav a {
        color: #fff;
        text-decoration: none;
        margin: 0 10px;
    }
    h2 {
        text-align: center;
        margin-top: 20px;
    }
    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }
    form input[type="email"],
    form input[type="password"] {
        width: calc(100% - 10px);
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    form button[type="submit"] {
        width: 100%;
        background-color: darkblue;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    
    .error-msg {
        color: red;
        text-align: center;
    }
</style>
</head>
<body>
<nav>
    <a href="view">Register</a>
</nav>
<h2>Login</h2>
<form action="/login" method="post">
    <input type="email" name="email" placeholder="Enter your email" required>
    <input type="password" name="password" placeholder="Enter your password" required>
    <button type="submit">Login</button>
</form>
<div class="error-msg">${msg}</div>
</body>
</html>
