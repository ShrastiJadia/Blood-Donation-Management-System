<%@ page import="java.util.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Blood Donor</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #e63946;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .no-data {
            text-align: center;
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>🔍 Search Blood Donor</h2>

    <!-- SEARCH FORM -->
    <form action="<%= request.getContextPath() %>/SearchDonorServlet" method="post">
        <select name="bloodGroup" required>
            <option value="">Select Blood Group</option>
            <option>A+</option><option>A-</option>
            <option>B+</option><option>B-</option>
            <option>AB+</option><option>AB-</option>
            <option>O+</option><option>O-</option>
        </select>

        <input type="text" name="city" placeholder="Enter City" required>

        <button type="submit">Search</button>
    </form>

    <!-- SEARCH RESULT -->
    <%
        List<String[]> list = (List<String[]>) request.getAttribute("donors");
        if (list != null && !list.isEmpty()) {
    %>

    <table>
        <tr>
            <th>Name</th>
            <th>Blood Group</th>
            <th>City</th>
            <th>Phone</th>
        </tr>

        <%
            for (String[] d : list) {
        %>
        <tr>
            <td><%= d[0] %></td>
    <td><%= d[1] %></td>
    <td><%= d[2] %></td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        } else if (list != null) {
    %>
        <p class="no-data">❌ No donors found</p>
    <%
        }
    %>

   
</div>
</body>
</html>