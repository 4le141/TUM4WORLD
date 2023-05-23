package com.tum4world.tum4world.controller.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ContattiServlet", value = "/sendmailservlet")
public class SendMailServlet extends HttpServlet {
    Logger logger = Logger.getLogger(SendMailServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String reason = request.getParameter("reason");
        String reasonLabel = request.getParameter("dettagli");

        logger.log(Level.INFO, String.format("Invio mail a %s, oggetto: %s, messaggio: %s", email, reason, reasonLabel));
        response.sendRedirect(request.getContextPath() + "/invioconfermato");
    }
}
