package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/iscriviti")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/public/iscriviti.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String usermode = request.getParameter("usermode");

        User u = new User();
        u.setUsername(username);
        u.setLastname(lastname);
        u.setBirthday(birthday);
        u.setPassword(password);
        u.setEmail(email);
        User.UserMode umode = User.UserMode.valueOf(usermode.toUpperCase());
        u.setUserMode(umode);
        u.setPhone(phone);
        u.setFirstname(firstname);
        insertUser(u);

        response.sendRedirect("invioconfermato");
    }

    private void insertUser(User user) {

    }
}
