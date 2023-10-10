<%--
  Created by IntelliJ IDEA.
  User: cse21-031
  Date: 03/10/2023
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/validate.js"></script>
</head>

  <body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-4">
        <h2 class="mb-4">Login</h2>
        <form id="emailForm" method="POST" action="/SigninServlet">
          <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required="required">
          </div>
          <input type="hidden" id="userType" name="userType" value="">
          <button type="button" class="btn btn-primary" onclick="validateEmail()" id="checkEmailbtn">Continue</button>
        </form>

        <form id="passwordForm" style="display: none" method="POST" action="/SigninServlet">
          <div class="form-group">
            <label for="password">Enter password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password"
                   required="required">
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="remember">
            <label class="form-check-label" for="remember">Remember me</label>
          </div>

          <button type="submit" class="btn btn-primary" id="loginbttn">Log In</button>

        </form>

      </div>
    </div>
  </div>
  <p> Don't have an ACCOUNT? <a href="Signup.jsp"> Register   </a> </p>
  </body>
</html>
