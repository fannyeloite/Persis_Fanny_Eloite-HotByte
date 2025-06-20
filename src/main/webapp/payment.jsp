<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="bootstrap_links.jsp"/>
    <title>Make Payment</title>
    <style>
        body {
            background-image: url('images/paymentbg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
        }

        .payment-card {
    background: rgba(220, 230, 241, 0.7); /* Subtle contrasting background */
    padding: 30px;
    border-radius: 12px;
    margin-top: 290px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}
        

        .btn-pay {
            width: 100%;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 payment-card">
            <h3 class="mb-4 text-center">Complete Your Payment</h3>
            <form action="processPayment" method="post">
    <input type="hidden" name="orderId" value="${orderId}" />
    <input type="hidden" name="amount" value="${amount}" />

    <label>Select Payment Method:</label><br>
    <select name="method" class="form-control">
        <option value="UPI">UPI</option>
        <option value="Card">Card</option>
        <option value="Cash on Delivery">Cash on Delivery</option>
    </select>

    <button type="submit" class="btn btn-primary mt-3">Pay</button>
</form>
            
        </div>
    </div>
</div>

</body>
</html>
