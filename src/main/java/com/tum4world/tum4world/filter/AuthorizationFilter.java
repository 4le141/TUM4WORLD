package com.tum4world.tum4world.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthorizationFilter", urlPatterns = "/*", dispatcherTypes = DispatcherType.REQUEST)
public class AuthorizationFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession(false);

        String servletPath = req.getServletPath();
        if(servletPath.startsWith("/pippo")){
            resp.sendRedirect("login.jsp");
            return;
        }
        chain.doFilter(request, response);
    }
}
