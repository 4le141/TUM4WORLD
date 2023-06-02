package com.tum4world.tum4world.controller.servlets;


import com.tum4world.tum4world.model.User;
import com.tum4world.tum4world.model.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet(name = "DonazioniServlet", value = "/restricted/dona")
public class DonaServlet extends HttpServlet {
    private UserService userService;

    public void init() throws ServletException {
        super.init();
        userService = new UserService();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/restricted/dona.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User utente = (User) session.getAttribute("user");
        BigDecimal amount = BigDecimal.valueOf((Double.valueOf(request.getParameter("amount"))));
        UserService.insertDonazione(utente,amount);
        response.sendRedirect(response.encodeRedirectURL("donazioneconfermata"));


    }
}
