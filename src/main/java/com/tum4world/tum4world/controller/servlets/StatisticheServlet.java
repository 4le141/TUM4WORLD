package com.tum4world.tum4world.controller.servlets;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.tum4world.tum4world.model.PageStats;
import com.tum4world.tum4world.model.StatisticsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StatisticheServlet", value = "/admin/data/statistiche")
public class StatisticheServlet extends HttpServlet {
    StatisticsService service = new StatisticsService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject statistiche = new JsonObject();
        JsonArray pageNames = new JsonArray();
        JsonArray pageViewsCount = new JsonArray();
        List<PageStats> pageStats = service.getStatistics();

        for (PageStats s : pageStats) {
            pageNames.add(s.getPage());
            pageViewsCount.add(s.getViewCount());
        }

        statistiche.add("names", pageNames);
        statistiche.add("data", pageViewsCount);
        response.setContentType("application/json");
        response.getOutputStream().print(statistiche.toString());
    }
}
