<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Form - Shree Travels</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://wallpaperaccess.com/full/9331578.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 50px;
        }

        .container {
            width: 40%;
            margin: auto;
            background: url('https://img.freepik.com/premium-photo/feedback-stars-concept_777576-7575.jpg?w=2000') no-repeat center center;
            background-size: cover;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(255, 215, 0, 0.5);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            color: #FFD700;
            font-size: 32px;
            text-shadow: 2px 2px 10px rgba(255, 215, 0, 0.8);
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: white;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            width: 100%;
            transition: 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <b><h1>Thanks for giving Feedback to Aboard Shree Travels</h1></b>
    <div class="container">
        <h1>📝 We Value Your Feedback!</h1>
        <form action="FeedbackServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact" required>

            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="3" required></textarea>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
