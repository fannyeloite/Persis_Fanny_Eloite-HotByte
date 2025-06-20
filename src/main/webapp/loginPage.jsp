<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="bootstrap_links.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<body style="background-image: url('images/loginbg.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center; min-height: 100vh;">
	
	
	<div class="container-fluid">
			
			<div class="row">
					<div class="col-sm-6">
						<img alt="sorry..." class="img img-thumbnail" src="images/career-tips.webp">
					</div>
					<div class="col-sm-6">
						<h3>SignIn Page</h3>
						<form action="logincheck"  method="post" >
							<div class="mb-3">
								<input type="email" value="${user.getEmail()}" class="form-control" name="email" placeholder="Email:" required >
							</div>
							<div class="mb-3">
								<input type="password" value="${user.getPassword()}" class="form-control" name="password" placeholder="Password:"  required>
							</div>
							<div class="mb-3">
								<button type="submit" class="btn btn-primary">SignIn</button>
								<button type="reset" class="btn btn-danger" >Reset</button>
							</div>
							<div>
							${msg}
							</div>
							
						</form>
					</div>
			</div>
			
		</div>
	
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="bootstrap_links.jsp" />
    <meta charset="UTF-8">
    <title>Login - HotPot</title>
    <style>
        body {
            background-image: url('images/loginbg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
        }

        .login-wrapper {
            min-height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background-color: rgba(255, 255, 255, 0.6);
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 500px;
        }

        .form-title {
            font-weight: bold;
            font-size: 30px;
            color: #c0392b;
            text-align: center;
        }

        .btn-primary {
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
        }

        .form-control {
    height: 45px;
    font-size: 16px;
    background-color: #fff3e0; /* subtle orangish tint */
    border: 1px solid #e67e22; /* warm orange border */
    color: #2c3e50;
    transition: border 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

.form-control:focus {
    border-color: #d35400;
    box-shadow: 0 0 6px rgba(211, 84, 0, 0.5);
    background-color: #fff8f0;
}
        

        .btn {
            width: 100px;
        }

        .error-msg {
            color: red;
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <!-- Keep the navbar at the top -->
    <jsp:include page="navbar.jsp" />

    <!-- Centered login form section -->
    <div class="container login-wrapper">
        <div class="login-card">
            <h3 class="form-title mb-4">Sign In</h3>
            <form action="logincheck" method="post">
                <div class="mb-3">
                    <input type="email" value="${user.getEmail()}" class="form-control" name="email" placeholder="Email" required>
                </div>
                <div class="mb-3">
                    <input type="password" value="${user.getPassword()}" class="form-control" name="password" placeholder="Password" required>
                </div>
                <div class="mb-3 btn-group">
                    <button type="submit" class="btn btn-primary">Sign In</button>
                    <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
                <div class="error-msg">
                    ${msg}
                </div>
            </form>
        </div>
    </div>

</body>
</html>
