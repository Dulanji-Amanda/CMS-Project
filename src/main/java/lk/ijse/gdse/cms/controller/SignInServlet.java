package lk.ijse.gdse.cms.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/Signin")
public class SignInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        resp.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");
        resp.setContentType("application/json");

        try {
            // Get form data
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            // Validate input
            if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
                resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                resp.getWriter().write("{\"error\": \"Username and password are required\"}");
                return;
            }

            // Database connection
            Connection connection = null;
            PreparedStatement statement = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms_db",
                        "root",
                        "Ijse@1234");

                // Query to check if user exists with provided credentials
                String query = "SELECT * FROM users WHERE username = ? AND password = ?";
                statement = connection.prepareStatement(query);
                statement.setString(1, username);
                statement.setString(2, password);  // In production, use password hashing

                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // User authenticated successfully
                    // Create a session
                    HttpSession session = req.getSession();
                    session.setAttribute("username", username);
                    session.setAttribute("userId", resultSet.getString("id"));
                    session.setAttribute("userRole", resultSet.getString("role"));

                    resp.setStatus(HttpServletResponse.SC_OK);
                    resp.getWriter().write("{\"message\": \"Login successful\"}");
                } else {
                    // Authentication failed
                    resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                    resp.getWriter().write("{\"error\": \"Invalid username or password\"}");
                }
            } finally {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            }

        } catch (Exception e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("{\"error\": \"Error during authentication: " + e.getMessage() + "\"}");
     }
    }
}