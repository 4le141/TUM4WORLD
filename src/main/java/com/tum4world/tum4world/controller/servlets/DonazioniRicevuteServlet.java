package com.tum4world.tum4world.controller.servlets;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.tum4world.tum4world.model.DatabaseUtils;
import com.tum4world.tum4world.model.Donazione;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import static java.time.temporal.TemporalAdjusters.firstDayOfYear;
import static java.time.temporal.TemporalAdjusters.lastDayOfYear;

@WebServlet(name = "DonazioniRicevuteServlet", value = "/admin/data/donazioni")
public class DonazioniRicevuteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonArray donazioniMensili = new JsonArray();

        List<Donazione> donazioni = getDonazioni();

        ListIterator<Donazione> donazioniIt = donazioni.listIterator();
        for (int i = 1; i <= LocalDate.now().getMonthValue(); i++) {
            BigDecimal donazioniMese = BigDecimal.ZERO;
            while (donazioniIt.hasNext()) {
                Donazione d = donazioniIt.next();
                if (d.getDateTime().getMonthValue() == i) {
                    donazioniMese = donazioniMese.add(d.getAmount());
                } else {
                    donazioniIt.previous();
                    break;
                }
            }
            donazioniMensili.add(donazioniMese);
        }

        for (int i = LocalDate.now().getMonthValue() + 1; i <= 12; i++) {
            donazioniMensili.add(BigDecimal.ZERO);
        }

        response.setContentType("application/json");
        response.getOutputStream().print(donazioniMensili.toString());
    }

    private List<Donazione> getDonazioni() {
        List<Donazione> result = new ArrayList<>();
        try (Connection conn = DatabaseUtils.getConnection();
             Statement s = conn.createStatement()) {
            ResultSet rs = s.executeQuery("SELECT * FROM DONATIONS WHERE DATEOFDONATION BETWEEN " +
                    "TIMESTAMP('" + LocalDateTime.now().with(firstDayOfYear()).toString().replace("T", " ") + "') " +
                    "AND TIMESTAMP('" + LocalDateTime.now().with(lastDayOfYear()).toString().replace("T", " ") + "')" +
                    "ORDER BY DATEOFDONATION ASC");

            while (rs.next()) {
                Donazione d = new Donazione(
                        rs.getBigDecimal(1),
                        rs.getString(2),
                        rs.getTimestamp(3).toLocalDateTime());
                result.add(d);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
