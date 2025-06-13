<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: LENOVO--%>
<%--  Date: 6/12/2025--%>
<%--  Time: 11:53 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Login - CMS</title>--%>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.5.0/css/all.min.css">--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="login-container">--%>
<%--    <form action="${pageContext.request.contextPath}/Signin" method="post" class="login-form">--%>
<%--        <h2>Login</h2>--%>

<%--        <div class="input-group">--%>
<%--            <label for="username">Username</label>--%>
<%--            <input type="text" name="username" id="username" required>--%>
<%--        </div>--%>

<%--        <div class="input-group password-group">--%>
<%--            <label for="password">Password</label>--%>
<%--            <div class="password-wrapper">--%>
<%--                <input type="password" name="password" id="password" required>--%>
<%--                <span class="toggle-password" onclick="togglePassword()">--%>
<%--                        <i id="eyeIcon" class="fas fa-eye"></i>--%>
<%--                    </span>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn-login">Login</button>--%>

<%--        <div class="extra-links">--%>
<%--            <a href="#">Forgot password?</a>--%>
<%--            <span>|</span>--%>
<%--            <a href="signup.jsp">Don't have an account? Create one</a>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<script>--%>
<%--    function togglePassword() {--%>
<%--        const pwd = document.getElementById("password");--%>
<%--        pwd.type = pwd.type === "password" ? "text" : "password";--%>
<%--    }--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign In</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<body>

<div class="login-container">
    <h2>Sign In</h2>
    <form action="${pageContext.request.contextPath}/Signin" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />
            <span class="eye-icon" onclick="togglePassword()"><i class="fas fa-eye eye-icon" id="togglePassword"></i></span>
        </div>

        <button type="submit" class="btn">Sign In</button>
        <div class="links">
            <a href="forgotPassword.jsp">Forgot Password?</a><br>
            Don't have an account? <a href="${pageContext.request.contextPath}/jsp/signup.jsp">Sign up</a>
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/js/signin.js"></script>

</body>
</html>