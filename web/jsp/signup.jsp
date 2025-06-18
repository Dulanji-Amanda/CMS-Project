<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<style>
    /* signup.css */
    body {
        background: #ffffff;
        color: #f5f5f5;
        font-family: 'Poppins', sans-serif;
        margin: 0;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .signup-container {
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.25);
        padding: 40px 32px 28px 32px;
        max-width: 400px;
        width: 100%;
    }

    h2 {
        color: #000000;
        font-weight: 500;
        margin-bottom: 28px;
        text-align: center;
    }

    .form-group {
        margin-bottom: 22px;
        position: relative;
    }

    label {
        color: #000000;
        font-weight: 400;
        margin-bottom: 6px;
        display: block;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    select {
        width: 100%;
        padding: 10px 38px 10px 12px;
        background: #ffffff;
        color: #000000;
        border: 1px solid #343a40;
        border-radius: 6px;
        font-size: 1rem;
        transition: border-color 0.2s;
    }

    input:focus,
    select:focus {
        background: #23272b;
        color: #fff;
        border-color: #007bff;
        outline: none;
    }

    .eye-icon {
        position: absolute;
        right: 12px;
        top: 38px;
        color: #b0b3b8;
        cursor: pointer;
        font-size: 1.1rem;
        z-index: 2;
    }

    .btn {
        width: 100%;
        background: #000000;
        color: #fff;
        border: none;
        border-radius: 6px;
        padding: 12px 0;
        font-size: 1rem;
        font-weight: 500;
        transition: background 0.2s;
        margin-top: 8px;
    }

    .btn:hover {
        background:#0052a3;
    }

    .links {
        margin-top: 18px;
        text-align: center;
        color: #000000;
        font-size: 0.97rem;
    }

    .links a {
        color:#0052a3;
        text-decoration: underline;
        transition: color 0.2s;
    }

    .links a:hover {
        color: #0056b3;
    }
</style>
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
                <option value="employee">Employee</option>
                <option value="admin">Admin</option>
            </select>
        </div>
        <button type="submit" class="btn">Sign Up</button>
    </form>
    <div class="links">
        Already have an account? <a href="${pageContext.request.contextPath}/index.jsp">Login here</a>.
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/signup.js"></script>

</body>
</html>