package lk.ijse.gdse.cms.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.ijse.gdse.cms.dto.User;
import lk.ijse.gdse.cms.model.UserModel;

import java.io.IOException;

@WebServlet("/Signin")
public class SignInServlet extends HttpServlet {

    @Override

//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//
//        User user = new UserModel().login(username, password);
//
//        if (user != null) {
//            HttpSession session = req.getSession();
//            session.setAttribute("username", user.getUsername());
//            session.setAttribute("id", user.getId());
//            session.setAttribute("role", user.getRole());
//
//            if ("admin".equalsIgnoreCase(user.getRole())) {
//                // Redirect to admin dashboard
//                resp.sendRedirect(req.getContextPath() + "/jsp/AdminDashboard.jsp");
//            } else if ("employee".equalsIgnoreCase(user.getRole())) {
//                // Redirect to employee dashboard
//                resp.sendRedirect(req.getContextPath() + "/jsp/EmployeeDashboard.jsp");
//            } else {
//                // Redirect to user dashboard or home page
//                resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp?error=Invalid+role");
//                }
//            } else {
//                // Fix this to properly redirect with an error message
//                resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp?error=Invalid+username+or+password");
//            }
//        }
//    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // Get the user from login method
        User user = new UserModel().login(username, password);

        if (user != null) {
            HttpSession session = req.getSession(true); // Create new session if needed

            // Store the complete user object in session
            session.setAttribute("user", user);

            // Debug statement to verify user is correctly set
            System.out.println("User stored in session: ID=" + user.getId() + ", Role=" + user.getRole());

            // Redirect based on user role - use case insensitive comparison
            if ("ADMIN".equalsIgnoreCase(user.getRole())) {
                resp.sendRedirect(req.getContextPath() + "/admin");
            } else if ("EMPLOYEE".equalsIgnoreCase(user.getRole())) {
                resp.sendRedirect(req.getContextPath() + "/employee/dashboard");
            } else {
                // Handle unexpected roles
                resp.sendRedirect(req.getContextPath() + "/index.jsp?error=Invalid+role");
            }
        } else {
            // Redirect back to signin page when login fails
            resp.sendRedirect(req.getContextPath() + "/index.jsp?error=Invalid+username+or+password");
        }
    }
}

