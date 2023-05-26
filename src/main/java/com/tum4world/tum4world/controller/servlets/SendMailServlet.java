package com.tum4world.tum4world.controller.servlets;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ContattiServlet", value = "/sendmailservlet")
public class SendMailServlet extends HttpServlet {
    Logger logger = Logger.getLogger(SendMailServlet.class.getName());

    Session smtpSession;

    @Override
    public void init() throws ServletException {
        super.init();

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "capybara.robby");
        smtpSession =  Session.getInstance(properties, null);
    }

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

        sendEmail(smtpSession, email,"tum4world@nessunonoluogonoesiste.com", fname+" "+lname, reason, reasonLabel);

        response.sendRedirect(request.getContextPath() + "/invioconfermato");
    }

    private void sendEmail(Session session, String fromEmail, String toEmail, String name, String subject, String body) {
        try {
            MimeMessage msg = new MimeMessage(session);
            //set message headers
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");

            msg.setFrom(new InternetAddress(fromEmail, name));
            msg.setSubject(subject, "UTF-8");
            msg.setText(body, "UTF-8");
            msg.setSentDate(new Date());

            Address toAddress = new InternetAddress(toEmail, name);
            msg.setRecipients(Message.RecipientType.TO, new Address[]{toAddress});
            Transport.send(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
