<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Successful - Shree Travels</title>
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
        }

        .home-btn {
            background: #4CAF50;
        }

        .feedback-btn {
            background: #007BFF;
        }

        .btn:hover {
            opacity: 0.8;
        }

        .update, .delete {
            display: inline-block;
            padding: 12px 20px;
            margin: 5px;
        }

        .update {
            background: pink;
        }

        .delete {
            background: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🎉 Booking Successful! 🎉</h1>
        <p>Thank you for booking your tour with <b>Shree Travels</b>.</p>
        <p>Your Booking IDs are:</p>
        <ul>
            <li><b>Personal Info Booking ID:</b> ${personalInfoId}</li>
            <li><b>Destination Booking ID:</b> ${destinationId}</li>
            <li><b>Journey Info Booking ID:</b> ${journeyInfoId}</li>
        </ul>
        <p>Keep these IDs for future updates or deletions.</p>
        <a href="signup.jsp" class="btn home-btn">🏠 Go Back to Home</a>
        <a href="feedback.jsp" class="btn feedback-btn">📝 Give Feedback</a>
        <a href="updateBooking.jsp" class="btn update">📝 Update Booking</a>
        <a href="DeleteBooking.jsp" class="btn delete">🗑️ Delete Booking</a>
    </div>
</body>
</html>
