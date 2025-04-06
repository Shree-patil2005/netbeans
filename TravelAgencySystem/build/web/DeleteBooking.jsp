<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpaperaccess.com/full/9331578.jpg'); 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: white;
            padding: 20px;
            animation: fadeIn 2s ease-in;
        }

        h1 {
            text-align: center;
            color: #FFD700;
            animation: slideDown 1.5s ease-in-out;
        }

        form {
            width: 60%;
            margin: auto;
            background: rgba(255, 255, 255, 0.9); 
            background-image: url('https://img.freepik.com/premium-photo/feedback-stars-concept_777576-7575.jpg?w=2000'); 
            background-size: cover;
            background-position: center;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            animation: scaleUp 1.5s ease-in-out;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            animation: fadeInUp 1.2s ease;
        }

        input, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1em;
            animation: fadeInUp 1.4s ease;
        }

        button {
            background: red;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: #c82333;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideDown {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes scaleUp {
            from {
                transform: scale(0.9);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <h1>Delete Your Booking</h1>
    <form action="DeleteBookingServlet" method="post">
        <h3>Delete Personal Info</h3>
        <label for="personalInfoId">Personal Info Booking ID:</label>
        <input type="number" id="personalInfoId" name="personalInfoId" required>

        <h3>Delete Destination Info</h3>
        <label for="destinationId">Destination Booking ID:</label>
        <input type="number" id="destinationId" name="destinationId" required>

        <h3>Delete Journey Info</h3>
        <label for="journeyInfoId">Journey Info Booking ID:</label>
        <input type="number" id="journeyInfoId" name="journeyInfoId" required>

        <button type="submit">Delete Booking</button>
    </form>
</body>
</html>
