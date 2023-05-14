package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/public/login.jsp").forward(request, response);
    }

    boolean validate(String username, String password) {
        return username.equals("admin") && password.equals("admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (!validate(username, password)) {
            response.sendRedirect("login");
        } else {
            HttpSession s = request.getSession(true);

            User u = new User();
            u.setTipo(User.Tipo.AMMINISTRATORE);
            u.setName("Pietro");

            s.setAttribute("user", u);


            response.sendRedirect("restricted/home");
        }
    }
}
