<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You - Shree Travels</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://wallpapercave.com/wp/wp2763119.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 50px;
        }

        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 15px;
            width: 50%;
            margin: auto;
            box-shadow: 0 0 15px rgba(255, 215, 0, 0.5);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            color: #FFD700;
            font-size: 36px;
            text-shadow: 2px 2px 10px rgba(255, 215, 0, 0.8);
            margin-bottom: 20px;
        }

        p {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            font-size: 18px;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: 0.3s;
            font-weight: bold;
            background: #4CAF50;
        }

        .btn:hover {
            background-color: #45a049;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🙏 Thank You for Your Feedback! 🙏</h1>
        <p>We appreciate your time and effort in sharing your thoughts with us. Your feedback helps us improve and provide better services.</p>
        <p>We hope to serve you again at <b>Shree Travels</b>. Have a great day! 🌍✈️</p>
        <a href="signup.jsp" class="btn">🏠 Back to Home</a>
    </div>
</body>
</html>
