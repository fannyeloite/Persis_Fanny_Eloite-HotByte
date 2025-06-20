<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="bootstrap_links.jsp"/>
    <title>Order History</title>
    <style>
        body {
            background-color: #f9f9f9;
        }

        .history-container {
            margin-top: 60px;
        }

        .table {
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
        }

        h3 {
            margin-bottom: 20px;
            color: #2c3e50;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container history-container">
    <h3>Your Order History</h3>
    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Order ID</th>
                <th>Food ID</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th>Status</th>
                <th>Order Time</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="${orderList}">
                <tr>
                    <td>${order.orderId}</td>
                    <td>${order.foodId}</td>
                    <td>${order.quantity}</td>
                    <td>₹${order.totalPrice}</td>
                    <td>${order.status}</td>
                    <td>${order.orderTime}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
