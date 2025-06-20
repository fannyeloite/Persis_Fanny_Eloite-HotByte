<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <jsp:include page="bootstrap_links.jsp"/>
    <title>Order Confirmation</title>

    <style>
        body {
            background-image: url('images/successbg.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .confirmation-box {
            background-color: rgba(245, 255, 245, 0.7);
            border-radius: 16px;
            padding: 40px;
            margin-top: 80px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #218838;
            font-weight: 700;
        }

        p {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .btn-primary {
            padding: 10px 25px;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 8px;
        }

        strong {
            color: #2c3e50;
        }
    </style>
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 confirmation-box">
            <h2>Order Placed Successfully!</h2>
<hr>
<p><strong>Order ID:</strong> ${orderId}</p>
<p>You ordered <strong>${food.foodName}</strong> from <strong>${food.hotel}</strong>.</p>
<p><strong>Total Bill:</strong> ₹${amount}</p>
<p><strong>Delivery Address:</strong> ${customer.address}</p>
<p><strong>Status:</strong> On the way </p>
<p><strong>Estimated Delivery Time:</strong> ${eta}</p>
<div class="d-flex justify-content-center gap-3 mt-4">
 <a href="customerhome" class="btn btn-primary px-4 py-2 rounded-pill">
    Back to Menu
</a>
<a href="paymentPage?orderId=${orderId}" class="btn btn-success px-4 py-2 rounded-pill">
    Pay Now
</a>
 
</a>
  
  
</div>


            
        </div>
    </div>
</div>

</body>
</html>
