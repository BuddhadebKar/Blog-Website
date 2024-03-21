<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Registrations</title>
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
        header h2 {
            color: #fff;
            text-decoration: none;
            margin-left: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: red;
            text-align: center;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a.button {
            display: inline-block;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin: 10px;
        }
        a.button:hover {
            background-color: #555;
        }

        .signOut{
            display: inline-block;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h2>List Of Registration</h2>
    </header>

    <table>
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="registration" items="${registrations}">
                <tr>
                    <td>${registration.firstName}</td>
                    <td>${registration.lastName}</td>
                    <td>${registration.email}</td>
                    <td>${registration.mobile}</td>
                    <td><a href="delete?id=${registration.id}" class="button">Delete</a></td>
                    <td><a href="update?id=${registration.id}" class="button">Update</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Add buttons for viewing and creating blog posts -->
    <div style="text-align: center;">
        <a href="getAllBlogs" class="button">View Blog Posts</a>
        <a href="writeBlog" class="button">Create Blog Post</a>
        <a href="showLoginForm" class="signOut">Sign Out</a>
    </div>
    
</body>
</html>
