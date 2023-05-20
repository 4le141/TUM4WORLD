package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.controller.DatabaseUtils;
import com.tum4world.tum4world.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private List<User> users;

    @Override
    public void init() throws ServletException {
        super.init();

        users = new ArrayList<>();
        User admin = new User();
        admin.setUsername("admin");
        admin.setPassword("24Adm1n");
        admin.setUserMode(User.UserMode.AMMINISTRATORE);
        admin.setFirstname("Admin");

        User aderente = new User();
        aderente.setUsername("aderente");
        aderente.setPassword("aderente");
        aderente.setUserMode(User.UserMode.ADERENTE);
        aderente.setFirstname("Aderente");

        User simpatizzante = new User();
        simpatizzante.setUsername("simpatizzante");
        simpatizzante.setPassword("simpatizzante");
        simpatizzante.setUserMode(User.UserMode.SIMPATIZZANTE);
        simpatizzante.setFirstname("Simpatizzante");

        users.addAll(Arrays.asList(admin, simpatizzante, aderente));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/public/login.jsp").forward(request, response);
    }

    private User login(String username, String password) {
        for (User u : users) {
            if (u.getUsername().equals(username) && u.getPassword().equals(password)) {
                return u;
            }
        }
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM USERS WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                User u = new User();

                return u;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User u = login(username, password);
        if (u != null) {
            HttpSession s = request.getSession(true);
            s.setAttribute("user", u);
            response.sendRedirect("./admin/home");
        } else {
            request.setAttribute("error", true);
            doGet(request, response);
        }
    }
}
