<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>My Products</title>
    <style>
        body {
            background-color: #f1f8fa;
            font-family: Arial, sans-serif;
            padding: 30px;
        }
        table {
            width: 100%;
            background-color: #fff;
            border-collapse: collapse;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #033f3c;
            color: white;
        }
    </style>
</head>
<body>
<body>
    <h2>My Products</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Approved</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td>${product.approved ? 'Yes' : 'No'}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>