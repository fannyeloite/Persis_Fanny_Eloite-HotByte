<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="bootstrap_links.jsp"></jsp:include>

  <title>Seller Dashboard</title>
  <meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-image: url('images/restaurantbg.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center; min-height: 100vh;"> <jsp:include page="navbar.jsp" /> <div class="container-fluid mt-4"> <div class="row">

<!-- Product Form -->
<div class="col-sm-5">
  <div class="p-4 bg-light rounded shadow-lg bg-opacity-75">
    <h3 class="text-danger mb-4">Add / Update Food</h3>
    <form action="addFood" method="post">
      <%-- <div class="mb-3">
        <input type="number" class="form-control" name="foodId" placeholder="Food ID" value="${updateFood.foodId}" required>
      </div> --%>
      <div class="mb-3">
        <input type="text" class="form-control" name="foodName" placeholder="Food Name" value="${updateFood.foodName}" required>
      </div>
      <div class="mb-3">
        <input type="number" step="0.01" class="form-control" name="price" placeholder="Price" value="${updateFood.price}" required>
      </div>
      <div class="mb-3">
        <input type="text" class="form-control" name="hotel" placeholder="Hotel" value="${updateFood.hotel}" required>
      </div>
      <div class="mb-3">
  <input type="text" class="form-control" name="imagePath" placeholder="Image URL" value="${updateFood.imagePath}" required>
</div>
      

      <div class="mb-3">
        <label class="form-label"><strong>Category:</strong></label><br>
        <c:forEach var="cat" items="${categories}">
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="category" value="${cat.categoryName}"
              <c:if test="${updateFood.category eq cat.categoryName}">checked</c:if>>
            <label class="form-check-label text-dark">${cat.categoryName}</label>
          </div>
        </c:forEach>
      </div>
      <div class="mb-3 d-flex gap-2">
        <button type="submit" class="btn btn-success shadow">Save</button>
        <button type="reset" class="btn btn-secondary shadow">Reset</button>
      </div>
    </form>
  </div>
</div>

<!-- Product Table -->
<div class="col-sm-7">
  <div class="p-3 bg-white bg-opacity-75 rounded shadow">
    <h3 class="text-dark mb-3">My Food Items</h3>
    <table class="table table-striped table-hover table-bordered bg-white text-dark">
      <thead class="table-danger">
        <tr>
          <th>Food ID</th>
          <th>Food Name</th>
          <th>Price</th>
          <th>Hotel</th>
          <th>Category</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="p" items="${products}">
          <tr>
            <td>${p.foodId}</td>
            <td>${p.foodName}</td>
            <td>${p.price}</td>
            <td>${p.hotel}</td>
            <td>${p.category}</td>
            <td>
              <a href="deleteFood?foodId=${p.foodId}" class="btn btn-danger btn-sm shadow">Delete</a>
              <a href="getFood?foodId=${p.foodId}" class="btn btn-warning btn-sm shadow">Update</a>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</div> </div> <!-- Footer --> <div class="mt-4 text-light text-end pe-4"> <strong>User Home:</strong> ${loggedInUser.getEmail()} <br><a href="logout" class="text-warning fw-bold">Logout</a> 
</div> 
</body>
</html>
 
 
