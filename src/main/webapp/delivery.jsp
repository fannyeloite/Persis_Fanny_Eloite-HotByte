<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="bootstrap_links.jsp"/>
    <title>Delivery Status</title>
    <style>
        body {
            background-image: url('images/deliverybg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
        }

        .status-card {
    background-color: rgba(255, 255, 255, 0.7); /* smooth white with transparency */
    backdrop-filter: blur(6px); /* adds posh glassmorphism effect */
    padding: 30px;
    border-radius: 16px;
    margin-top: 120px; /* reduced from 1200px unless intentional */
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
    border: 1px solid rgba(255, 255, 255, 0.4); /* subtle border for depth */
}
        

        .status-text {
            font-size: 1.2rem;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 status-card text-center">
            <h3 class="mb-4 text-success">Your Order is On the Way!</h3>
            <p class="status-text"><strong>Order ID:</strong> ${orderId}</p>
            <p class="status-text"><strong>Delivery Address:</strong> ${deliveryAddress}</p>
            <p class="status-text"><strong>Status:</strong> ${deliveryStatus}</p>
            <p class="status-text"><strong>Estimated Delivery Time:</strong> ${expectedTime}</p>
            <a href="customerhome" class="btn btn-primary mt-3">Back to Menu</a>
        </div>
    </div>
</div>

</body>
</html>
