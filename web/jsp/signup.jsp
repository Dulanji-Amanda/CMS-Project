
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">--%>

    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container */
        .signup-container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
        }

        /* Heading */
        .signup-container h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #333;
        }

        /* Form group */
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #555;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px 40px 10px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #0066cc;
            outline: none;
        }

        /* Eye icon for password */
        .eye-icon {
            position: absolute;
            top: 60%;
            right: 12px;
            cursor: pointer;
            color: #888;
            font-size: 16px;
            user-select: none;
        }

        .eye-icon:hover {
            color: #333;
        }

        /* Button */
        .btn {
            width: 100%;
            padding: 12px;
            background-color: #000000;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0052a3;
        }

        /* Links */
        .links {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }

        .links a {
            color: #0066cc;
            text-decoration: none;
            font-weight: 500;
        }

        .links a:hover {
            text-decoration: underline;
        }

    </style>

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
