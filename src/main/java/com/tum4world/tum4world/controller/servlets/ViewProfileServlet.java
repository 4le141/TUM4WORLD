package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.DatabaseUtils;
import com.tum4world.tum4world.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "ViewProfileServlet", value = "/servletviewprofile")
public class ViewProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String username = request.getParameter("username");
        PrintWriter out = response.getWriter();

        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection conn = DatabaseUtils.getConnection();) {
            // Connetti al database
            String query = "SELECT * FROM USERS WHERE id = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            rs = stmt.executeQuery();
            if (rs.next()) {
                request.setAttribute("username", rs.getString("USERNAME"));
                request.setAttribute("name", rs.getString("firstname"));

            } else {
                request.setAttribute("error", true);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("restricted/profilo").forward(request, response);

    }
}
