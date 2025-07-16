<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        body {
            background-color: #f1f8fa;
            font-family: Arial, sans-serif;
            padding: 40px;
        }

        form {
            background: #fff;
            max-width: 500px;
            margin: auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
        }

        label {
            display: block;
            margin: 10px auto 5px;
            font-weight: bold;
            text-align: left;
            width: 80%;
        }

        input, textarea {
            width: 80%;
            padding: 8px;
            border-radius: 8px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        button {
            padding: 10px 20px;
            background-color: #033f3c;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background-color: #00695c;
        }
    </style>
</head>
<body>
<form action="/add-product" method="post">
    <h2>Add Product</h2>
    
    <label>Product Name</label>
    <input type="text" name="name" required>

    <label>Description</label>
    <textarea name="description" rows="3" required></textarea>

    <label>Price</label>
    <input type="number" name="price" step="0.01" required>

    <div class="button-container">
        <button type="submit">Submit</button>
    </div>
</form>

</body>
</html>