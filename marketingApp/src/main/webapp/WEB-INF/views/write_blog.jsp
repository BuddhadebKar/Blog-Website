<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Write Your Blog</title>
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
        main {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
       main h2 {
        color: white;
        background-color: darkgreen;
        border-radius: 6px;
            text-align: center;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"],
        textarea {
            width: calc(100% - 10px);
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button[type="submit"]:hover {
            background-color: #555;
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
            margin-top: -50px;
        }
    </style>
</head>
<body>
    <header>
        <h2>BLOG</h2>
    </header>
    <main>
        <h2>Write Blog</h2>
        <form action="/saveBlog" method="post">
            <label for="title">Title:</label>
            <input type="text" name="title" id="title"><br>
            <label for="content">Content:</label>
            <textarea name="content" id="content" rows="5"></textarea><br>
            <label for="author">Author:</label>
            <input type="text" name="author" id="author"><br>
            <button type="submit">Save Blog</button>
        </form>
        <div><a href="showLoginForm">Sign Out</a></div>
    </main>
</body>
</html>
