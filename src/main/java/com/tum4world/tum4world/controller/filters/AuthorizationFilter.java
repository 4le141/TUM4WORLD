package com.tum4world.tum4world.controller.filters;

import com.tum4world.tum4world.model.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthorizationFilter", urlPatterns = "/*", dispatcherTypes = DispatcherType.REQUEST)
public class AuthorizationFilter implements Filter {

    private StatisticsService statisticsService;

    public void init(FilterConfig config) throws ServletException {
        statisticsService = new StatisticsService();

        try {
            DatabaseUtils.createUsersTable();
            DatabaseUtils.createActivitiesTable();
            DatabaseUtils.createDonationsTable();
            DatabaseUtils.createPageStatisticsTable();

            UserService userService = new UserService();
            UserActivitiesService userActivitiesService = new UserActivitiesService();
            for (User u : UserService.defaultUsers) {
                if (!userService.userNameAlreadyExists(u.getUsername())) {
                    userService.insertUser(u);
                    userActivitiesService.insertUserActivities(new UserActivities(u.getUsername()));
                }
            }
            UserService.defaultUsers.clear();
        } catch (Exception ex) {
            System.err.print(ex);
        }
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession(false);
        String servletPath = req.getServletPath();

        boolean isLoggedUser = session != null && session.getAttribute("user") != null;
        User user = isLoggedUser ? (User) session.getAttribute("user") : null;

        if (servletPath.startsWith("/restricted") && (user == null || user.getUserMode() == User.UserMode.AMMINISTRATORE)) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        } else if (servletPath.startsWith("/admin") && (user == null || user.getUserMode() != User.UserMode.AMMINISTRATORE)) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        } else if (servletPath.equals("/login") && user != null) {
            switch (user.getUserMode()) {
                case AMMINISTRATORE:
                    resp.sendRedirect(resp.encodeRedirectURL("admin/home"));
                    return;
                case ADERENTE:
                case SIMPATIZZANTE:
                    resp.sendRedirect(resp.encodeRedirectURL("restricted/home"));
                    return;
            }
        } else if (servletPath.equals("/restricted/dona") && (user == null || user.getUserMode() != User.UserMode.ADERENTE)) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        chain.doFilter(request, response);

        if (resp.getStatus() == 200 &&
                !servletPath.contains(".") &&
                !servletPath.equals("/getphrase") &&
                !(servletPath.startsWith("/admin") || servletPath.startsWith("/restricted"))) {
            statisticsService.increasePageVisits(servletPath);
        }
    }
}
