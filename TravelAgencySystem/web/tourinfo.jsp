<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tour Information - Shree Travels</title>
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
        font-size: 50px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        margin-bottom: 20px;
    }

    p {
        font-size: 30px;
        margin-bottom: 30px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
    }

    .grid {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        margin-top: 20px;
    }

    .tour-box {
        position: relative;
        background-size: cover;
        background-position: center;
        width: 320px;
        height: 400px;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        text-align: left;
        color: #fff;
    }

    .tour-box::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.2);
        z-index:2;
    }

    .tour-box .text {
        position: absolute;
        top: 20px;
        left: 15px;
        right: 15px;
        z-index: 2;
    }

    .tour-box .text h3 {
        font-size: 20px;
        margin-bottom: 10px;
    }

    .tour-box .text ul {
        padding-left: 20px;
        margin: 0;
        font-size: 14px;
        line-height: 1.5;
    }

    .tour-box .text ul li {
        margin-bottom: 5px;
    }

    .book-btn {
        margin-top: 30px;
        background-color: #FFD700;
        color: #333;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        text-transform: uppercase;
    }

    .book-btn:hover {
        background-color: #ffc107;
    }
    </style>
</head>
<body>
    <h1><b>Welcome, <%= session.getAttribute("username") %>!</h1></b>
    <p><h2><b>Explore the best travel destinations with Shree Travels.</b></h2></p>

    <div class="grid">
        <div class="tour-box" style="background-image: url('https://img.freepik.com/premium-photo/eiffel-tower-night-view-paris-france_954932-1974.jpg');">
            <div class="text">
                <b><h3>Europe</h3></b>
                <ul>
                    <b><li>Experience the romance of Paris.</li></b>
                    <b><li>Explore the canals of Venice.</li></b>
                    <b><li>Delve into the history of Rome.</li></b>
                    <b><li>Discover the Alps and scenic landscapes.</li></b>
                    <b><li>Visit historic castles in Germany.</li></b>
                    <b><li>Relax in Amsterdam's tulip fields.</li></b>
                    <b><li>Explore the Greek islands.</li></b>
                    <b><li>Enjoy the beauty of Scandinavia.</li></b>
                    <b><li>Cost: ₹1,50,000</li></b>
                    <b><li>Currency exchange is avilable anytime.</li></b>
                    <b><li>Air India Flight by Business Class</li></b>
                    <b><li>Special gift for each member from Shree Travels</li></b>
                </ul>
            </div>
        </div>

        <div class="tour-box" style="background-image: url('http://farm8.staticflickr.com/7377/9228720728_d4da8067de_b.jpg');">
            <div class="text">
                <b><h3>Australia</h3></b>
                <ul>
                    <b><li>Visit the Sydney Opera House.</li></b>
                    <b><li>Snorkel in the Great Barrier Reef.</li></b>
                    <b><li>Explore the vast Australian outback.</li></b>
                    <b><li>Enjoy Melbourne's cultural vibe.</li></b>
                    <b><li>Relax on the Gold Coast beaches.</li></b>
                    <b><li>Meet unique wildlife like kangaroos.</li></b>
                    <b><li>Climb the Sydney Harbour Bridge.</li></b>
                    <b><li>Take a trip to Tasmania.</li></b>
                    <b><li>Cost: ₹1,00,000</li></b>
                    <b><li>Currency exchange is avilable anytime</li></b>
                    <b><li>Air India Flight by Business Class.</li></b>
                    <b><li>Special gift for each member from Shree Travels.</li></b>
                </ul>
            </div>
        </div>

        <div class="tour-box" style="background-image: url('https://thumbs.dreamstime.com/b/gateway-india-lit-up-colours-flag-40882200.jpg');">
            <div class="text">
                <b><h3>Asia</h3></b>
                <ul>
                    <b><li>Walk along the Great Wall of China.</li></b>
                    <b><li>Relax on the beaches of Thailand.</li></b>
                    <b><li>Visit iconic temples in India.</li></b>
                    <b><li>Enjoy Japan’s cherry blossoms.</li></b>
                    <b><li>Explore the bustling streets of Hong Kong.</li></b>
                    <b><li>Discover the history of Angkor Wat.</li></b>
                    <b><li>Experience the beauty of Bali.</li></b>
                    <b><li>Shop in Singapore's malls.</li></b>
                    <b><li>Cost: ₹90,000</li></b>
                    <b><li>Currency exchange is avilable anytime</li></b>
                    <b><li>Air India Flight by Business Class</li></b>
                    <b><li>Special gift for each member from Shree Travels</li></b>
                </ul>
            </div>
        </div>

        <div class="tour-box" style="background-image: url('http://4.bp.blogspot.com/-QoSO9hyVcU8/UEH25d5ru6I/AAAAAAAAHjw/1zMz7DBBb6o/s1600/Millennium+Park+at+Night+Chicago.jpg');">
            <div class="text">
                <b><h3>America</h3></b>
                <ul>
                    <b><li>See the Statue of Liberty in New York.</li></b>
                    <b><li>Hike through the Grand Canyon.</li></b>
                    <b><li>Stroll on the beaches of California.</li></b>
                    <b><li>Experience the culture of New Orleans.</li></b>
                    <b><li>Visit Hollywood in Los Angeles.</li></b>
                    <b><li>Explore Latin American wonders.</li></b>
                    <b><li>Discover ancient ruins in Mexico.</li></b>
                    <b><li>Enjoy the vibrant nightlife of Miami.</li></b>
                    <b><li>Cost: ₹1,75,000.</li></b>
                    <b><li>Currency exchange is avilable anytime.</li></b>
                    <b><li>Air India Flight by Business Class.</li></b>
                    <b><li>Special gift for each member from Shree Travels.</li></b>
                </ul>
            </div>
        </div>

        <div class="tour-box" style="background-image: url('https://i.pinimg.com/originals/a8/1b/11/a81b11acf3af58d7ad9bed9567a19ab3.jpg');">
            <div class="text">
                <b><h3>South Africa</h3></b>
                <ul>
                    <b><li>Go on a thrilling safari adventure.</li></b>
                    <b><li>Visit Table Mountain in Cape Town.</li></b>
                    <b><li>Explore the Cape Winelands.</li></b>
                    <b><li>Spot wildlife in Kruger National Park.</li></b>
                    <b><li>Relax on the beaches of Durban.</li></b>
                    <b><li>Visit the Drakensberg Mountains.</li></b>
                    <b><li>Discover Johannesburg's culture.</li></b>
                    <b><li>Explore the Garden Route.</li></b>
                    <b><li>Cost: ₹1,25,000</li></b>
                    <b><li>Currency exchange is avilable anytime.</li></b>
                    <b><li>Air India Flight by Business Class.</li></b>
                    <b><li>Special gift for each member from Shree Travels.</li></b>
                </ul>
            </div>
        </div>

        <div class="tour-box" style="background-image: url('https://1.bp.blogspot.com/-qFBzUS5MyBk/WU5qt0FpWeI/AAAAAAAABD4/JGZJc8J3OGcfawdeCTZe3Fm2b52ECTd8gCEwYBhgL/s640/polar%2Blights.jpg');">
            <div class="text">
                <b><h3>Antarctica</h3></b>
                <ul>
                    <b><li>Witness stunning glaciers.</li></b>
                    <b><li>Spot penguins in their natural habitat.</li></b>
                    <b><li>Experience the icy wilderness.</li></b>
                    <b><li>Take a polar expedition cruise.</li></b>
                    <b><li>See seals on icebergs.</li></b>
                    <b><li>Visit research stations.</li></b>
                    <b><li>Capture the aurora australis.</li></b>
                    <b><li>Explore ice caves.</li></b>
                    <b><li>Cost: ₹2,50,000.</li></b>
                    <b><li>Currency exchange is avilable anytime.</li></b>
                    <b><li>Air India Flight by Business Class.</li></b>
                    <b><li>Special gift for each member from Shree Travels.</li></b>
                </ul>
            </div>
        </div>
    </div>

    <button class="book-btn" onclick="window.location.href='booktour.jsp';">Book Tour</button>
</body>
</html>
