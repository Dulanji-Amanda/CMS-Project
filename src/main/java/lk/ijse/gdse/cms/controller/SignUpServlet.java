package lk.ijse.gdse.cms.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.gdse.cms.dto.User;
import lk.ijse.gdse.cms.model.UserModel;

import java.io.IOException;

@WebServlet("/Signup")
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);

        boolean success = new UserModel().register(user);
        if (success) {
//            resp.sendRedirect(req.getContextPath() + "index.jsp");
            resp.sendRedirect(req.getContextPath() + "/index.jsp?message=Registration successful! Please login.");
//            resp.sendRedirect("/signin.jsp?message=Registration successful! Please log in.");
        } else {
            resp.sendRedirect("signup.jsp?error=Registration failed. Please try again.");
        }
    }
}