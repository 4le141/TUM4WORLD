package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.User;
import com.tum4world.tum4world.model.UserActivities;
import com.tum4world.tum4world.model.UserActivitiesService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterActivitiesServlet", value = "/restricted/iscriviti")
public class RegisterActivitiesServlet extends HttpServlet {
    private UserActivitiesService userActivitiesService;

    @Override
    public void init() throws ServletException {
        super.init();
        userActivitiesService = new UserActivitiesService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession(false).getAttribute("user");
        UserActivities userActivities = userActivitiesService.getActiviesOfUser(user.getUsername());
        request.setAttribute("activities", userActivities);
        request.getRequestDispatcher("/WEB-INF/views/restricted/iscrivitiAttivita.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession(false).getAttribute("user");
        UserActivities userActivities = new UserActivities(user.getUsername());
        userActivities.setActivity1(request.getParameter("attivita1") != null);
        userActivities.setActivity2(request.getParameter("attivita2") != null);
        userActivities.setActivity3(request.getParameter("attivita3") != null);
        userActivitiesService.updateUserActivities(userActivities);

        request.setAttribute("success", true);
        doGet(request, response);
    }
}
