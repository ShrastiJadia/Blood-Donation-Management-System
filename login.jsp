<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donor Login</title>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<h2>Donor Login</h2>

<div class="card">
    <h2>Donor Login</h2>

    <form action="<%= request.getContextPath() %>/DonorLoginServlet" method="post">
        <input type="email" name="email" placeholder="Email" required>

        <input type="password" name="password" placeholder="Password" required>

        <button type="submit">Login</button>
    </form>

    <div class="link">
        <a href="register.jsp">New Donor? Register</a>
    </div>
</div></body>
</html>