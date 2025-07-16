<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Address and Toll-Free</title>
  <style>
    body {
      background-image: url('/pages/images/B.jpg');
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f1f8fa;
    }

    .contact-box {
      max-width: 900px;
      margin: 80px auto;
      background-color: #ffffff;
      border-radius: 12px;
      padding: 50px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      gap: 20px;
      flex-wrap: wrap;
    }

    .address,
    .phone {
      flex: 1 1 45%;
    }

    .address h3,
    .phone h3 {
      font-size: 20px;
      margin-bottom: 12px;
      color: #0d1b2a;
    }

    .address p,
    .phone p {
      font-size: 16px;
      color: #333;
      line-height: 1.5;
    }

    .phone span {
      display: block;
      margin-top: 6px;
      color: #4a4a4a;
      font-size: 15px;
    }

    .phone a {
      font-weight: bold;
      font-size: 18px;
      color: #00796b;
      text-decoration: none;
    }

    .divider {
      width: 1px;
      height: 80px;
      background-color: #ccc;
    }

    @media (max-width: 768px) {
      .contact-box {
        flex-direction: column;
        text-align: center;
        padding: 30px 20px;
      }

      .divider {
        display: none;
      }

      .address, .phone {
        flex: 1 1 100%;
      }
    }
  </style>
</head>
<body>
  <div class="contact-box">
    <div class="address">
      <h3>Address</h3>
      <p>
        PO Box 28190, RPO West <br>
        Mumbai BC V6C 3T7 India
      </p>
    </div>
    
    <div class="divider"></div>
    
    <div class="phone">
      <h3>Toll-Free:</h3>
      <a href="tel:+18884635254">+91 98765 43210</a>
      <span>Mon–Fri 8:00AM to 4:00PM</span>
    </div>
  </div>
</body>
</html>