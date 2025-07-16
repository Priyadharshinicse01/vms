<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All in One</title>
<style>
 body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #0d1b2a;
            background-color: #f9f9f6;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffffff;
            padding: 15px 40px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .nav-left, .nav-right {
            display: flex;
            gap: 25px;
        }

        .nav-left a, .nav-right a {
            text-decoration: none;
            color: #0d1b2a;
            font-weight: 600;
            font-size: 16px;
            transition: color 0.2s;
        }

        .nav-left a:hover, .nav-right a:hover {
            color: #00796b;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 80px 20px;
            background-color: #fefefb;
        }

        .hero .label {
            letter-spacing: 2px;
            font-size: 14px;
            color: #4a4a4a;
            margin-bottom: 16px;
        }

        .hero h1 {
            font-size: 42px;
            max-width: 900px;
            margin: 0 auto 24px;
            font-weight: 700;
        }

        .hero .description {
            font-size: 18px;
            max-width: 750px;
            margin: 0 auto;
            line-height: 1.6;
            color: #444;
        }

        /* Info Section */
        .info {
            display: flex;
            flex-wrap: wrap;
            padding: 60px 40px;
            background-color: #e3f2f1;
            align-items: center;
            justify-content: space-around;
        }

        .text-content {
            flex: 1 1 50%;
            max-width: 600px;
        }

        .text-content h2 {
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .text-content p {
            font-size: 16px;
            margin-bottom: 20px;
            color: #2f2f2f;
        }

        .text-content ul {
            list-style: none;
            padding: 0;
        }

        .text-content ul li {
            font-weight: 600;
            margin-bottom: 12px;
        }

        .image-content {
            flex: 1 1 40%;
            text-align: center;
        }

        .image-content img {
            width: 100%;
            max-width: 350px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 30px;
            }

            .info {
                flex-direction: column;
                text-align: center;
            }

            .text-content, .image-content {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
<nav class="navbar">
        <div class="nav-left">
            <a href="/support">Support</a>
    		<a href="/contact">Contact</a>
        </div>
        <div class="nav-right">
            <a href="/login">Login</a>
        </div>
    </nav>

    <section class="hero">
        <p class="label">VENDOR MANAGEMENT SYSTEM</p>
        <h1>The Vendor Management System for More Strategic Sourcing</h1>
        <p class="description">
            Streamline vendor onboarding, documentation, approvals, and communication with our 
            vendor management system.A vendor and supplier network will help your organization 
            negotiate better rates, reduce maverick spending, and make smarter sourcing decisions.
        </p>
    </section>

    <section class="info">
        <div class="text-content">
            <h2>Get the best rate from suppliers</h2>
            <p>When vendor data is not organized, the onboarding takes too long, and there is no control 
            over random spending, it wastes time, loses money, and causes problems with rules.
             Our system helps you save time and money in the buying process.            
             </p>
            <ul>
                <li><strong>Negotiate better rates</strong></li>
                <li><strong>Improve strategic sourcing</strong></li>
            </ul>
        </div>
        <div class="image-content">
            <img src="/pages/images/C.jpg">
        </div>
    </section>
</body>
</html>