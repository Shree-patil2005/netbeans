<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Your Tour - Shree Travels</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://wallpapercave.com/wp/wp2763119.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 40px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }

        .container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .box {
            position: relative;
            width: 300px;
            padding: 20px;
            border-radius: 10px;
            text-align: left;
            color: white;
            background-size: cover;
            background-position: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .box::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }

        .box h2, .box label, .box input, .box select {
            position: relative;
            z-index: 1;
        }

        label {
            font-size: 16px;
            display: block;
            margin-bottom: 8px;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
        }

        button {
            background-color: #FFD700;
            color: #333;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        button:hover {
            background-color: #ffc107;
        }

        .personal-info {
            background-image: url('http://2.bp.blogspot.com/-dSIc85pMmCo/UcqPkjk6R_I/AAAAAAAADXw/rUYFckP0ylI/s1600/1.+Paris+by+Cal+Redback.jpg');
        }

        .destination {
            background-image: url('https://thumbs.dreamstime.com/b/flying-airplane-dusk-illuminating-night-sky-generated-ai-flying-airplane-dusk-illuminating-night-sky-generated-300671717.jpg');
        }

        .journey-info {
            background-image: url('https://c8.alamy.com/comp/HMRD5K/luggage-at-the-airport-terminal-night-scene-with-a-plane-flying-overhead-HMRD5K.jpg');
        }
    </style>
</head>
<body>
    <h1>Book Your Tour</h1>
    <form action="BookTourServlet" method="post">
        <div class="container">
            <div class="box personal-info">
                <h2>Personal Info</h2>
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>

                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>

                <label for="phone">Contact No:</label>
                <input type="text" id="phone" name="phone" required>

                <label for="email">Email ID:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="box destination">
                <h2>Destination</h2>
                <label for="destination">Select Destination:</label>
                <select id="destination" name="destination" required>
                    <option value="Europe">Europe</option>
                    <option value="Australia">Australia</option>
                    <option value="Asia">Asia</option>
                    <option value="America">America</option>
                    <option value="South Africa">South Africa</option>
                    <option value="Antarctica">Antarctica</option>
                </select>

                <label for="numberOfPeople">Total No. of People:</label>
                <select id="numberOfPeople" name="numberOfPeople" required>
                    <% for (int i = 1; i <= 12; i++) { %>
                        <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>

                <label for="flightClass">Flight Ticket:</label>
                <select id="flightClass" name="flightClass" required>
                    <option value="Economy">Economy</option>
                    <option value="Business">Business</option>
                </select>

                <label for="personalGuide">Personal Guide:</label>
                <select id="personalGuide" name="personalGuide" required>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>

            <div class="box journey-info">
                <h2>Journey Info</h2>
                <label for="amountExchange">Amount to Exchange:</label>
                <select id="amountExchange" name="amountExchange" required>
                    <option value="50000">50K</option>
                    <option value="70000">70K</option>
                    <option value="100000">100K</option>
                    <option value="1200000">1.2M</option>
                </select>

                <label for="luggageWeight">Weight of Luggage:</label>
                <select id="luggageWeight" name="luggageWeight" required>
                    <option value="10KG">10KG</option>
                    <option value="15KG">15KG</option>
                    <option value="20KG">20KG</option>
                    <option value="25KG">25KG</option>
                    <option value="30KG">30KG</option>
                </select>

                <label for="paymentMode">Payment Mode:</label>
                <select id="paymentMode" name="paymentMode" required>
                    <option value="Online">Online</option>
                    <option value="Cash">Cash</option>
                    <option value="Cheque">Cheque</option>
                </select>

                <label for="specialMessage">Special Message (Max 50 Characters):</label>
                <input type="text" id="specialMessage" name="specialMessage" maxlength="50">
            </div>
        </div>

        <button type="submit">Submit Booking</button>
    </form>
</body>
</html>
