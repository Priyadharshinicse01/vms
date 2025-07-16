<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Vendor Dashboard</title>
  <style>
    body {
      background-color: #f1f8fa;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height:70vh;
    }

    .dashboard-container {
      background-color: #ffffff;
      padding: 50px 40px;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 100%;
      max-width: 400px;
    }

    h1 {
      color: #033f3c;
      margin-bottom: 40px;
      font-size: 28px;
    }

    .button {
      display: block;
      width: 100%;
      padding: 14px 0;
      margin-bottom: 20px;
      background-color: #033f3c;
      color: #ffffff;
      text-decoration: none;
      border-radius: 10px;
      font-size: 16px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #00695c;
    }
  </style>
</head>
<body>
<div class="dashboard-container">
    <h1>Vendor Dashboard</h1>
    <a href="/add-product" class="button">Add Product</a>
    <a href="/my-products" class="button">View My Products</a>
  </div>
</body>
</html>