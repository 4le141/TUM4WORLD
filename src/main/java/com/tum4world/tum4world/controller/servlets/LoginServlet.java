package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;
import com.tum4world.tum4world.model.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    UserService userService;

    @Override
    public void init() throws ServletException {
        super.init();
        userService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/public/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User u = userService.login(username, password);
        if (u == null) {
            request.setAttribute("error", true);
            doGet(request, response);
            return;
        }
        HttpSession s = request.getSession(true);
        s.setAttribute("user", u);
        switch (u.getUserMode()){
            case AMMINISTRATORE:
                response.sendRedirect(response.encodeRedirectURL("admin/home"));
                break;
            case ADERENTE:
            case SIMPATIZZANTE:
                response.sendRedirect(response.encodeRedirectURL("restricted/home"));
                break;
        }
    }
}
