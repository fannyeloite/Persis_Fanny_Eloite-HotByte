<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <jsp:include page="bootstrap_links.jsp"/>
  <meta charset="UTF-8">
  <title>Admin - Manage Categories</title>

  <style>
    body {
      background-image: url('images/adminbg.jpg'); /* Change image as needed */
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
      min-height: 100vh;
      font-family: 'Segoe UI', sans-serif;
    }

    .content-wrapper {
      background-color: rgba(255, 255, 255, 0.6);
      border-radius: 16px;
      padding: 40px;
      margin-top: 40px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
    }

    h3 {
      font-weight: bold;
      color: #2c3e50;
      margin-bottom: 25px;
    }

    .form-control {
      height: 45px;
    }

    .btn {
      min-width: 100px;
    }

    .table th {
  background-color: #2f3640; /* Slightly more elegant dark gray */
  color: #f1f1f1;             /* Soft off-white for better readability */
  text-align: center;
  font-weight: 600;
  letter-spacing: 0.5px;
  padding: 12px;
}

.table td {
  text-align: center;
  background-color: #f9f9f9;  /* Subtle contrast from header */
  padding: 10px;
}

.admin-footer {
  background-color: rgba(0, 0, 0, 0.5); /* Slightly transparent black */ 
  margin-top: 30px;
  text-align: center;
  color: #fff;
  padding: 15px 0;
  font-size: 14px;
  border-top:2px solid rgba (255, 255, 255, 0.2);
}

.admin-footer a {
  color: #fff;
  text-decoration: underline;
}

.admin-footer a:hover {
  color: #f1c40f; /* Optional: nice hover accent */
}

    

    .btn-info {
      background-color: #3498db;
      border: none;
    }

    .btn-danger {
      background-color: #e74c3c;
      border: none;
    }
  </style>
</head>
<body>

  <jsp:include page="navbar.jsp"/>

  <div class="container content-wrapper">
    <div class="row">

      <!-- Form Section -->
      <div class="col-md-4">
        <h3>Add / Update Category</h3>
        <form action="addCategory" method="post">
          <div class="mb-3">
            <input type="number" class="form-control" name="categoryId" placeholder="Category ID" value="${updateCategory.categoryId}" required>
          </div>
          <div class="mb-3">
            <input type="text" class="form-control" name="categoryName" placeholder="Category Name" value="${updateCategory.categoryName}" required>
          </div>
          <div class="mb-3 d-flex gap-2">
            <button type="submit" class="btn btn-primary">Save</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
          </div>
        </form>
      </div>

      <!-- Table Section -->
      <div class="col-md-8">
        <h3>Category List</h3>
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>Category ID</th>
              <th>Category Name</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="category" items="${categories}">
              <tr>
                <td>${category.categoryId}</td>
                <td>${category.categoryName}</td>
                <td>
                  <a href="deleteCategory?categoryId=${category.categoryId}" class="btn btn-sm btn-danger">Delete</a>
                  <a href="getCategory?categoryId=${category.categoryId}" class="btn btn-sm btn-info">Update</a>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>

    </div>
  </div>

  <!-- Footer -->
  <div class="admin-footer">
    <p>User: <strong>${loggedInUser.getEmail()}</strong> | 
    <a href="logout">Logout</a></p>
  </div>

</body>
</html>
