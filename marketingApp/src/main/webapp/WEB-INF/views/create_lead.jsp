<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Lead</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .head{
            padding: 1px;
            height: 100px;
            background-color: blueviolet;

        }

        h2 {
            padding: 12px;
        }

        nav {
            padding: 20px;
            float: right;
            margin-top: -70px;
        }

        nav a {
            text-decoration: none;
            color: white;
            margin: 0 10px;
        }

        form {
            background-color: #fff;
            width: 500px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }

        form input[type="text"],
        form input[type="password"] {
            width: calc(72% - 10px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        form input[type="submit"] {
            width: 92%;
            
            background-color: blue;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: darkblue;
        }

        pre {
            margin-left: -60px;
        }

        .error-msg {
            color: red;
        }
    </style>
</head>
<body>
    <div class="head">
        <h2>Create Lead</h2>
        <div>
            <nav>
                <a href="view">Register</a>
                <a href="showLoginForm">Login</a>
            </nav>
        </div>
    </div>
    <form action="saveReg" method="post">
        <pre>
        First Name <input type="text" name="firstName" />
        Last Name  <input type="text" name="lastName" />
        Email      <input type="text" name="email" />
        Mobile     <input type="text" name="mobile" />
        Password   <input type="password" name="password" />
        <input type="submit" value="Register Now" />
        </pre>
    </form>
    <div class="error-msg">${msg}</div>
</body>
</html>
