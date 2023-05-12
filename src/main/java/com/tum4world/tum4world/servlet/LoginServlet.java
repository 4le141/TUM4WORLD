package com.tum4world.tum4world.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    boolean validate(String username, String password) {
        return username.equals("admin") && password.equals("admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (!validate(username, password)) {
            response.sendRedirect("login.jsp");
        } else {
            HttpSession s = request.getSession(true);
            s.setAttribute("autenticato", true);
            s.setAttribute("username", username);
            response.sendRedirect("restricted");
        }
    }
}
