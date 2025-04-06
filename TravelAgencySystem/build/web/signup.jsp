<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign-Up - Shree Travels</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/whimsical-globe-with-iconic-landmarks-like-eiffel-tower-statue-liberty-sunn_1176614-247.jpg?w=2000') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            padding: 20px;
        }

        h1 {
            color: #ffffff;
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0);
            margin-bottom: 30px;
        }

        .container {
            width: 350px;
            margin: auto;
            background: url('https://images.alphacoders.com/674/thumb-1920-674925.png') no-repeat center center;
            background-size: cover;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px);
        }

        label {
            text-align: left;
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: black;
        }

        input {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .text-link {
            margin-top: 15px;
            color: white;
            font-weight: bold;
        }

        .text-link a {
            text-decoration: none;
            color: #FFD700;
        }

        .text-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Welcome To aboard Shree Travels – Where Every Journey Becomes An Unforgettable Adventure! 🚍✨</h1>

    <div class="container">
        <form action="SignupServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Sign Up</button>
        </form>
        <p class="text-link">Already signed up? <a href="login.jsp">Login</a></p>
    </div>
</body>
</html>
