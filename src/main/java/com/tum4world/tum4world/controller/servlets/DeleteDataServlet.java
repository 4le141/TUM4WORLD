package com.tum4world.tum4world.controller.servlets;

import com.tum4world.tum4world.model.StatisticsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteDataServlet", value = "/admin/resetStatistics")
public class DeleteDataServlet extends HttpServlet {

    StatisticsService service = new StatisticsService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        service.deleteAll();
        request.getRequestDispatcher("/WEB-INF/views/admin/statisticheVisite.jsp").forward(request,response);
    }
}
