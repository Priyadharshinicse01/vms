<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Support</title>
<style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #ffffff;
      color: #0d1b2a;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 60px 20px;
    }

    .heading {
      font-size: 36px;
      font-weight: 700;
      margin-bottom: 40px;
    }

    .card {
      margin-bottom: 80px;
    }

    .academy {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      background-color: #f7f7f7;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
    }

    .academy h3 {
      margin-top: 0;
      font-size: 20px;
    }

    .academy p {
      font-size: 16px;
      margin: 10px 0 20px;
      color: #333;
      max-width: 600px;
    }

    .academy a.button {
      background-color: #033f3c;
      color: white;
      padding: 10px 18px;
      text-decoration: none;
      border-radius: 5px;
      font-weight: 600;
      transition: background-color 0.3s;
    }

    .academy a.button:hover {
      background-color: #00695c;
    }

    .row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-top: 60px;
      gap: 40px;
    }

    .row.reverse {
      flex-direction: row-reverse;
    }

    .text-block {
      flex: 1 1 50%;
    }

    .text-block h2 {
      font-size: 28px;
      margin-bottom: 15px;
      font-weight: 700;
    }

    .text-block p {
      font-size: 16px;
      line-height: 1.6;
      color: #333;
    }

    .text-block a {
      color: #00796b;
      text-decoration: underline;
    }

    .image-block {
      flex: 1 1 40%;
      text-align: center;
    }

    .image-block img {
      max-width: 100%;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    @media (max-width: 768px) {
      .row, .row.reverse {
        flex-direction: column;
      }

      .text-block, .image-block {
        flex: 1 1 100%;
        text-align: center;
      }

      .text-block h2 {
        font-size: 24px;
      }

      .heading {
        font-size: 28px;
        text-align: center;
      }
    }
  </style>
</head>
<body>
<div class="container">
    <h1 class="heading">Support resources</h1>

    <div class="card row">
      <div class="image-block">
        <img src="/pages/images/E.jpg">
      </div>
      <div class="text-block">
        <h2>We're committed to your success</h2>
        <p>
          At Procurify, our success is tied to your success — which is why we build long-term partnerships
          with our customers and deliver hands-on support from Day One. A dedicated account team will work
          with you to ensure smooth onboarding and implementation, answer pressing questions, and deliver ongoing
          guidance on how to get the most value from our partnership.
        </p>
      </div>
    </div>

    <div class="card row reverse">
      <div class="image-block">
        <img src="/pages/images/G.jpg">
      </div>
      <div class="text-block">
        <h2>A dedicated and hands-on team</h2>
        <p>
          Receive proactive communications from a dedicated team with complete visibility into your customer journey.
          With the Procurify Success Team at your disposal, you’ll spend less time waiting for a response and more
          time feeling supported.
        </p>
      </div>
    </div>
  </div>
</body>
</html>