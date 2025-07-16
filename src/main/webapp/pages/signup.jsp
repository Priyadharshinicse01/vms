<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Vendor Signup</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f1f8fa;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .signup-container {
      background-color: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 500px;
    }

    .signup-container h2 {
      margin-top: 0;
      font-size: 28px;
      text-align: center;
      color: #0d1b2a;
    }

    .form-group {
      margin-bottom: 18px;
    }

    .form-group label {
      display: block;
      font-weight: 600;
      margin-bottom: 8px;
      color: #333;
    }

    .form-group input {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 16px;
      box-sizing: border-box;
    }

    .form-group input:focus {
      outline: none;
      border-color: #00796b;
    }

    .signup-btn {
      width: 100%;
      background-color: #033f3c;
      color: #fff;
      padding: 12px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .signup-btn:hover {
      background-color: #00695c;
    }

    @media (max-width: 480px) {
      .signup-container {
        padding: 30px 20px;
      }

      .signup-container h2 {
        font-size: 24px;
      }
    }
  </style>
</head>
<body>
  <div class="signup-container">
    <h2>Vendor Signup</h2>
    <form action="/register" method="POST">
      <div class="form-group">
        <label for="companyName">Company Name</label>
        <input type="text" id="companyName" name="companyName" required>
      </div>

      <div class="form-group">
        <label for="address">Address</label>
        <input type="text" id="address" name="address" required>
      </div>

      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" required>
      </div>
      
      <div class="form-group">
        <label for="password">Password </label>
        <input type="password" id="email" name="password" required>
      </div>
      

      <div class="form-group">
        <label for="phoneNumber">Phone Number</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>
      </div>

      <div class="form-group">
        <label for="businessId">Business ID</label>
        <input type="text" id="businessId" name="businessId" required>
      </div>

      <button type="submit" class="signup-btn">Register</button>
    </form>
  </div>

</body>
</html>