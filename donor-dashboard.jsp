<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("login.jsp");
    }
%>

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
<h2>Login Successful</h2>
<%= session.getAttribute("email") %>


<div class="card">
    <h2>Welcome Donor</h2>

    <p><b>Email:</b> <%= email %></p>

    <div class="link">
        <a href="search.jsp">Search Blood Donors</a>
    </div>

    <div class="link">
        <a href="logout.jsp">Logout</a>
    </div>
</div>

</body>
</html>