package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;
import com.tum4world.tum4world.model.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProfileServlet", value = "/restricted/deleteprofile")
public class DeleteProfileServlet extends HttpServlet {
    private UserService userservice = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("user");
        userservice.deleteUser(user.getUsername());
        response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/logout"));
    }
}
