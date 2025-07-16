<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f1f8fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .login-container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 400px;
  }

  .login-container h2 {
    margin-top: 0;
    font-size: 28px;
    text-align: center;
    color: #0d1b2a;
  }

  .form-group {
    margin-bottom: 20px;
  }

  .form-group label {
    display: block;
    font-weight: 600;
    margin-bottom: 8px;
    color: #333;
  }

  .form-group input,
  .form-group select {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 16px;
    box-sizing: border-box;
    appearance: none;
    background-color: #fff;
  }

  .form-group input:focus,
  .form-group select:focus {
    outline: none;
    border-color: #00796b;
  }

  .login-btn {
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
    margin-top: 10px;
  }

  .login-btn:hover {
    background-color: #00695c;
  }

  .signup-link {
    margin-top: 20px;
    text-align: center;
    font-size: 14px;
  }

  .signup-link a {
    color: #00796b;
    text-decoration: none;
    font-weight: 600;
  }

  .signup-link a:hover {
    text-decoration: underline;
  }

  .error {
    color: red;
    font-size: 14px;
    margin-top: 15px;
    text-align: center;
  }

  @media (max-width: 480px) {
    .login-container {
      padding: 30px 20px;
    }

    .login-container h2 {
      font-size: 24px;
    }
  }
</style>
</head>
<body>
<div class="login-container">
  <h2>Login</h2>

  <form method="post" action="/login">
    <div class="form-group">
      <label for="email">Email address</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required>
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>
    </div>
     <c:if test="${not empty error}">
    <div class="error">${error}</div>
  </c:if>

    <div class="form-group">
      <label for="role">Role</label>
      <select name="role" id="role" required>
        <option value="">Select Role</option>
        <option value="admin">Admin</option>
        <option value="vendor">Vendor</option>
      </select>
    </div>

    <button type="submit" class="login-btn">Login</button>
  </form>

  <div class="signup-link">
    Don’t have an account? <a href="signup">Sign up</a>
  </div>
</div>
</body>
</html>
