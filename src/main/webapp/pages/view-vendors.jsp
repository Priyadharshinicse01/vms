<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Vendors</title>
    <style>
        body {
            background-color: #f1f8fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 40px;
        }

        h2 {
            text-align: center;
            color: #0d1b2a;
            margin-bottom: 30px;
        }

        table {
            margin: auto;
            width: 90%;
            max-width: 900px;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border-radius: 12px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 16px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #033f3c;
            color: white;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .approve-btn {
            background-color: #033f3c;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .approve-btn:hover {
            background-color: #00695c;
        }

        form {
            margin: 0;
        }

        @media (max-width: 600px) {
            table, th, td {
                font-size: 14px;
            }

            .approve-btn {
                padding: 6px 12px;
            }
        }
    </style>
</head>
<body>
    <h2>All Vendors</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Approved</th>
            <th>Action</th>
        </tr>
        <c:forEach var="v" items="${vendors}">
            <tr>
                <td>${v.id}</td>
                <td>${v.companyName}</td>
                <td>${v.email}</td>
                <td>
                    <c:choose>
                        <c:when test="${v.approved}">
                           Approved
                        </c:when>
                        <c:otherwise>
                            Pending
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <form method="post" action="/approve-vendor">
                        <input type="hidden" name="id" value="${v.id}" />
                        <button type="submit" class="approve-btn">Approve</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
