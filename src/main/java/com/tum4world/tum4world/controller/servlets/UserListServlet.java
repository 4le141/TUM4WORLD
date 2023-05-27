package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;
import com.tum4world.tum4world.model.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserListServlet", value = "/admin/utenti")
public class UserListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userModeString = request.getParameter("userMode");
        User.UserMode userMode = null;
        if(userModeString != null){
            try {
                userMode = User.UserMode.valueOf(userModeString);
            } catch (IllegalArgumentException ex){
            }
        }
        UserService userService = new UserService();
        List<User> users = userService.listUsers(userMode);
        request.setAttribute("users", users);
        request.getRequestDispatcher("/WEB-INF/views/admin/utenti.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
