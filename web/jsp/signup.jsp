<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up - CMS</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

</head>
<body>
<div class="signup-container">
    <form action="SignupServlet" method="post">
        <h2>Create Account</h2>

        <div class="input-group">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" required>
        </div>

        <div class="input-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required>
        </div>

        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required>
            <span class="password-toggle" onclick="togglePassword()">
                <i id="eyeIcon" class="fas fa-eye"></i>
            </span>
        </div>

        <div class="input-group">
            <label for="role">Role</label>
            <select name="role" id="role" required>
                <option value="">-- Select Role --</option>
                <option value="employee">Employee</option>
                <option value="admin">Admin</option>
            </select>
        </div>

        <button type="submit" class="submit-btn">Sign Up</button>

        <div class="signin-link">
            Already have an account, <a href="login.jsp"> Login</a>.
        </div>
    </form>
</div>

<script>
    function togglePassword() {
        const passInput = document.getElementById("password");
        if (passInput.type === "password") {
            passInput.type = "text";
        } else {
            passInput.type = "password";
        }
    }
</script>
</body>
</html>
