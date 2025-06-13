<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 6/12/2025
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page session="true" %>--%>
<%--<%--%>
<%--    String username = (String) session.getAttribute("username");--%>
<%--    if (username == null) {--%>
<%--        response.sendRedirect("signin.jsp"); // Redirect if not logged in--%>
<%--        return;--%>
<%--    }--%>
<%--%>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - CMS</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">

</head>
<body>

<div class="navbar">
    <h1>Complaint Management System</h1>
    <div>
<%--        <span>Welcome, <%= username %></span>--%>
        <a href="logout.jsp" class="logout-btn">Logout</a>
    </div>
</div>

<div class="container">
    <h2>Dashboard</h2>

    <div class="card">
        <p>✔️ Submit a new complaint</p>
    </div>

    <div class="card">
        <p>🧾View your submitted complaints</p>
    </div>

    <div class="card">
        <p>🛠 Update or delete pending complaints</p>
    </div>

    <div class="card">
        <p>👤 Admin access to view and resolve complaints</p>
    </div>
</div>

</body>
</html>
