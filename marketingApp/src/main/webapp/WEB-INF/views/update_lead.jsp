<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Lead</title>
<div><a href="showLoginForm">Sign Out</a></div>
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        header {
            background-color: blueviolet;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        header a {
            color: #fff;
            text-decoration: none;
            margin-left: 10px;
        }
        main {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        main h2 {
            background-color: darkgreen;
            color: white;
            text-align: center;
            border-radius: 6px;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            width: calc(75% - 10px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
        pre {
            margin-left: -80px;
        }
        main div a{
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            float: right;
            margin-top: -65px;
        }
    </style>

</head>
<body>
	<h2>Update Lead</h2>
	<form action="updateReg" method="post">
		<pre>
		<input type="hidden" name="id" value="${registration.id }" />
		First Name <input type="text" name="firstName"value="${registration.firstName }" />
		First Name <input type="text" name="lastName"value="${registration.lastName }" />
		Email <input type="text" name="email" value="${registration.email }" />
		Mobile <input type="text" name="mobile" value="${registration.mobile }" />
		password<input type="password" name="password" value="${registration.password }" />
	<input type="submit" value="Update" />
	</pre>

	</form>
	${msg }
</body>
</html>
   