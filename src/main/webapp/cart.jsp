<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="bootstrap_links.jsp"/>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <style>
        body {
            background-image: url('images/cartbg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
        }

        .cart-container {
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 12px;
            padding: 30px;
            margin-top: 50px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        h3 {
            color: #2c3e50;
            font-weight: bold;
        }

        .table {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .table th {
            background-color: #343a40;
            color: #fff;
        }

        .table td, .table th {
            vertical-align: middle !important;
        }

        .form-control-sm {
            width: 80px;
        }

        .btn {
            min-width: 80px;
        }

        .update-form {
    display: flex;
    align-items: center;
    gap: 10px;
    margin: 0;
}

.table td {
    vertical-align: middle !important;
    text-align: center;
}

.table th {
    text-align: center;
}
        
    </style>
</head>
<body>

    <jsp:include page="navbar.jsp"/>

    <div class="container cart-container">
        <h3 class="mb-4">Your Shopping Cart</h3>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Food</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                
                    <tr>
    <td>${item.foodName}</td>
    <td>₹${item.price}</td>
    
    <!-- Quantity Column -->
    <td>
        <form action="updateQuantity" method="post">
            <input type="hidden" name="cartId" value="${item.cartId}" />
            <input type="number" name="quantity" value="${item.quantity}" class="form-control form-control-sm" min="1" style="width: 80px; margin: auto;" />
    </td>
    
    <!-- Update Column -->
    <td class="text-center">
            <button type="submit" class="btn btn-sm btn-success">Update</button>
        </form>
    </td>
    
    <!-- Delete Column -->
    <td class="text-center">
        <a href="deleteCartItem?cartId=${item.cartId}" class="btn btn-sm btn-danger">Delete</a>
    </td>
</tr>
                    
                </c:forEach>
            </tbody>
        </table>
        <c:if test="${not empty cartItems}">
    <form action="placeOrder" method="post" class="text-end mt-4">
        <button type="submit" class="btn btn-primary btn-lg">Place Order</button>
    </form>
</c:if>
        
    </div>

</body>
</html>
