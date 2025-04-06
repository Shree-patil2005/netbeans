<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Booking</title>
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
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            animation: scaleUp 1.5s ease-in-out;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            animation: fadeInUp 1.2s ease;
        }

        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1em;
            animation: fadeInUp 1.4s ease;
        }

        button {
            background: #fd0294;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: green;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
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
    <h1>Update Your Booking</h1>
    <form action="UpdateBookingServlet" method="post">
        <h3>Personal Info</h3>
        <label for="personalInfoId">Personal Info Booking ID:</label>
        <input type="number" id="personalInfoId" name="personalInfoId" required>

        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName">

        <label for="age">Age:</label>
        <input type="number" id="age" name="age">

        <label for="phone">Contact No:</label>
        <input type="text" id="phone" name="phone">

        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email">

        <h3>Destination Info</h3>
        <label for="destinationId">Destination Booking ID:</label>
        <input type="number" id="destinationId" name="destinationId" required>

        <label for="destination">Select Destination:</label>
        <select id="destination" name="destination">
            <option value="Europe">Europe</option>
            <option value="Australia">Australia</option>
            <option value="Asia">Asia</option>
            <option value="America">America</option>
            <option value="South Africa">South Africa</option>
            <option value="Antarctica">Antarctica</option>
        </select>

        <label for="numberOfPeople">Total No. of People:</label>
        <input type="number" id="numberOfPeople" name="numberOfPeople">

        <label for="flightClass">Flight Ticket:</label>
        <select id="flightClass" name="flightClass">
            <option value="Economy">Economy</option>
            <option value="Business">Business</option>
        </select>

        <label for="personalGuide">Personal Guide:</label>
        <select id="personalGuide" name="personalGuide">
            <option value="Yes">Yes</option>
            <option value="No">No</option>
        </select>

        <h3>Journey Info</h3>
        <label for="journeyInfoId">Journey Info Booking ID:</label>
        <input type="number" id="journeyInfoId" name="journeyInfoId" required>

        <label for="amountExchange">Amount to Exchange:</label>
        <select id="amountExchange" name="amountExchange">
            <option value="50000">50K</option>
            <option value="70000">70K</option>
            <option value="100000">100K</option>
            <option value="1200000">1.2M</option>
        </select>

        <label for="luggageWeight">Weight of Luggage (kg):</label>
        <input type="number" id="luggageWeight" name="luggageWeight">

        <label for="paymentMode">Payment Mode:</label>
        <select id="paymentMode" name="paymentMode">
            <option value="Online">Online</option>
            <option value="Cash">Cash</option>
            <option value="Cheque">Cheque</option>
        </select>

        <label for="specialMessage">Special Message (Max 50 Characters):</label>
        <input type="text" id="specialMessage" name="specialMessage" maxlength="50">

        <button type="submit">Update Booking</button>
    </form>
</body>
</html>
