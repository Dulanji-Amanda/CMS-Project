<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Sign Up - CMS</title>--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">--%>

<%--</head>--%>
<%--<body>--%>
<%--<div class="signup-container">--%>
<%--    <form action="${pageContext.request.contextPath}/Signup" method="post">--%>
<%--        <h2>Create Account</h2>--%>

<%--        <div class="input-group">--%>
<%--            <label for="username">Username</label>--%>
<%--            <input type="text" name="username" id="username" required>--%>
<%--        </div>--%>

<%--        <div class="input-group">--%>
<%--            <label for="email">Email</label>--%>
<%--            <input type="email" name="email" id="email" required>--%>
<%--        </div>--%>

<%--        <div class="input-group">--%>
<%--            <label for="password">Password</label>--%>
<%--            <input type="password" name="password" id="password" required>--%>
<%--            <span class="password-toggle" onclick="togglePassword()">--%>
<%--                <i id="eyeIcon" class="fas fa-eye"></i>--%>
<%--            </span>--%>
<%--        </div>--%>

<%--        <div class="input-group">--%>
<%--            <label for="role">Role</label>--%>
<%--            <select name="role" id="role" required>--%>
<%--                <option value="">-- Select Role --</option>--%>
<%--                <option value="employee">Employee</option>--%>
<%--                <option value="admin">Admin</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <button type="submit" class="submit-btn">Sign Up</button>--%>

<%--        <div class="signin-link">--%>
<%--            Already have an account, <a href="signin.jsp"> Login</a>.--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<script>--%>
<%--    function togglePassword() {--%>
<%--        const passInput = document.getElementById("password");--%>
<%--        if (passInput.type === "password") {--%>
<%--            passInput.type = "text";--%>
<%--        } else {--%>
<%--            passInput.type = "password";--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>


<%--
  Created by IntelliJ IDEA.
  User: Nethmi
  Date: 6/13/2025
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<body>
<div class="signup-container">
    <h2>Sign Up</h2>
    <form action="${pageContext.request.contextPath}/Signup" method="post">
        <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
    </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <i class="fas fa-eye eye-icon" onclick="togglePassword()" id="togglePassword"></i>
        </div>
        <div class="form-group">
            <label for="role">Role</label>
            <select id="role" name="role" required>
                <option value="">Select Role</option>
                <option value="user">Employee</option>
                <option value="admin">Admin</option>
            </select>
        </div>
        <button type="submit" class="btn">Sign Up</button>
    </form>
    <div class="links">
        Already have an account? <a href="${pageContext.request.contextPath}/jsp/signin.jsp">Login here</a>.
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/signup.js"></script>
</body>
</html>
