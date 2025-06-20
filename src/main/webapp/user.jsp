<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>

<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="bootstrap_links.jsp" />
    <title>Sign Up</title>
    <style>
        body {
            background-image: url('images/userbg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
            margin: 0;
        }

        .form-wrapper {
            min-height: calc(100vh - 70px); /* assuming navbar is ~70px */
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .signup-card {
            background-color: rgba(255, 248, 225, 0.6); /* subtle mustard yellow */
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
            width: 100%;
            max-width: 500px;
            border: 2px solid #f1c40f; /* mustard accent */
        }

        .signup-card h3 {
            text-align: center;
            color: #d35400; /* deep mustard-orange */
            margin-bottom: 25px;
            font-weight: bold;
        }

        .form-control {
            height: 45px;
            font-size: 16px;
            background-color: #fff4e0; /* subtle orangish background */
            border: 1px solid #e67e22;
            color: #4e342e; /* contrast text */
            transition: border 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control::placeholder {
            color: #8B0000;
        }

        .form-control:focus {
            background-color: #fffaf2;
            border-color: #d35400;
            box-shadow: 0 0 6px rgba(211, 84, 0, 0.4);
            color: #3e2723;
        }

        .btn-primary {
            width: 100%;
        }

        .btn-danger {
            width: 100%;
        }

        .text-dark {
            font-weight: 500;
        }
    </style>
</head>
<body>

    <jsp:include page="navbar.jsp" />

    <div class="form-wrapper">
        <div class="signup-card">
            <h3>Sign Up</h3>
            <form action="register" method="post">
                <div class="mb-3">
                    <input type="text" class="form-control" name="name" placeholder="Full Name" required>
                </div>
                <div class="mb-3">
                    <input type="email" class="form-control" name="email" placeholder="Email" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
                <div class="mb-3 text-dark">
                    Gender:
                    <input type="radio" name="gender" value="male" required> Male
                    <input type="radio" name="gender" value="female"> Female
                </div>
                <div class="mb-3">
                    <input type="tel" class="form-control" name="phone" placeholder="Phone" required>
                </div>
                <div class="mb-3">
                    <textarea class="form-control" name="address" placeholder="Address" rows="3" required></textarea>
                </div>
                <div class="mb-3 text-dark">
                    Role:
                    <input type="radio" name="role" value="restaurantowner"> Restaurant Owner
                    <input type="radio" name="role" value="Customer"> Customer
                </div>
                <div class="mb-3 d-flex gap-2">
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                    <button type="reset" class="btn btn-danger">Reset</button>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
