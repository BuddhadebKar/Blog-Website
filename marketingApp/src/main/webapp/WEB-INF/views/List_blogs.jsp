<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Blog Posts</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .action-link, .blog-options a, .blog-options form button {
            display: inline-block;
            margin-right: 10px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .action-link:hover, .blog-options a:hover, .blog-options form button:hover {
            background-color: #0056b3;
        }

        .footer-links {
            text-align: center;
            margin-top: auto; /* Push to bottom */
            padding: 20px 0;
        }

        h2 {
            text-align: center;
            color: white;
            background-color: #007bff;
        }

        .blog-post {
            border: 1px solid #ddd;
            padding: 20px;
            margin: 20px auto;
            width: 80%;
            background-color: #e9f5db; /* Light green background for posts */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        .blog-header {
            font-weight: 600;
            margin-bottom: 15px;
            color: #333;
        }

        .blog-content {
            margin-bottom: 15px;
            line-height: 1.6;
        }

        .blog-author {
            font-style: italic;
        }

        .blog-options {
            margin-top: 10px;
            border-top: 1px solid #eee;
            padding-top: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        thead th {
            background-color: red; /* Blue background for table headers */
            color: #fff; /* White text color for table headers */
            font-weight: bold;
            text-align: center; /* Bold font for table headers */
        }

        tbody tr:nth-child(odd) {
            background-color: #f2f2f2; /* Alternate row background color */
        }
    </style>
</head>
<body>
    <h2>All Blog Posts</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="blogPost" items="${blogPosts}">
                <tr>
                    <td>${blogPost.id}</td>
                    <td>${blogPost.title}</td>
                    <td>${blogPost.content}</td>
                    <td>${blogPost.author}</td>
                    <td>
                        <a href="/updateBlog?id=${blogPost.id}" class="action-link">Edit</a>
                        <form action="/deleteBlog" method="post" style="display: inline;">
                            <input type="hidden" name="id" value="${blogPost.id}">
                            <button type="submit" class="action-link">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="footer-links">
        <a href="showLoginForm" class="action-link">Sign Out</a>
        <a href="getAllReg" class="action-link">See Users</a>
        <a href="writeBlog" class="action-link">Create A New Blog</a>
    </div>
</body>
</html>
