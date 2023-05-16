package com.tum4world.tum4world.controller.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ContattiServlet", value = "/sendmailservlet")
public class SendMailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String reason = request.getParameter("reason");
        if (reason.equals("Altro")) {
            String reasonLabel = request.getParameter("dettagli");
        }
        response.sendRedirect(request.getContextPath() + "/invioconfermato");
    }
}
