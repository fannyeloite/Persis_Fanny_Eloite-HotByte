<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html> <head> <meta charset="UTF-8"> <jsp:include page="bootstrap_links.jsp"/> 
<title>Customer Home</title> 
</head>
 <body> <jsp:include page="navbar.jsp"/> <div class="container mt-4"> <h2>Welcome, ${loggedInUser.name}!</h2> 
 <p>Browse available food items and place your order.</p>
<div class="row">
    <c:forEach var="food" items="${foodItems}">
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${food.foodName}</h5>
                    <p class="card-text">
                        Hotel: ${food.hotel}<br>
                        Price: ₹${food.price}<br>
                        Category: ${food.category}
                    </p>
                    <form action="placeOrder" method="post">
                        <input type="hidden" name="foodId" value="${food.foodId}" />
                        <button type="submit" class="btn btn-success">Place Order</button>
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</div> 
</body> 
</html> --%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <jsp:include page="bootstrap_links.jsp"/>
    <title>Customer Home</title>
    <style>
        body {
            background-image: url('images/customerbg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
        }

        .content-container {
            background-color: rgba(255, 255, 255, 0.6);
            border-radius: 15px;
            padding: 30px;
            margin-top: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .card {
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
        }

        .card-title {
            color: #c0392b;
            font-weight: 600;
            font-size: 20px;
        }

        .btn-success {
            width: 100%;
            font-weight: bold;
        }

        h2 {
            font-weight: bold;
            color: #2c3e50;
        }

        .card-body {
            padding: 20px;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container content-container">
    <h2>Welcome, ${loggedInUser.name}!</h2>
    <p>Browse available food items and place your order.</p>

    <div class="row">
        <c:forEach var="food" items="${foodItems}">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${food.foodName}</h5>
<p class="card-text">
    <img src="${food.imagePath}" class="card-img-top" alt="${food.foodName}">
    <strong>Hotel:</strong> ${food.hotel}<br>
    <strong>Price:</strong> ₹${food.price}<br>
    <strong>Category:</strong> ${food.category}
    
    
</p>

<!-- Add to Cart Button -->
<form action="addToCart" method="post" class="mb-2">
    <input type="hidden" name="foodId" value="${food.foodId}" />
    <button type="submit" class="btn btn-warning btn-sm">Add to Cart</button>
</form>


                        
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
