<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<h3>Donor Registration</h3>

<div class="card">
    <h2>Donor Registration</h2>

    <form action="RegisterDonorServlet" method="post">
        <input type="text" name="name" placeholder="Full Name" required>

        <input type="email" name="email" placeholder="Email" required>

        <input type="password" name="password" placeholder="Password" required>

        <select name="blood_group" required>
            <option value="">Select Blood Group</option>
            <option>A+</option><option>A-</option>
            <option>B+</option><option>B-</option>
            <option>AB+</option><option>AB-</option>
            <option>O+</option><option>O-</option>
        </select>

        <input type="text" name="city" placeholder="City" required>

        <input type="text" name="phone" placeholder="Mobile Number" required>

        <button type="submit">Register</button>
    </form>

    <div class="link">
        <a href="login.jsp">Already registered? Login</a>
    </div>
</div>

</body>
</html>