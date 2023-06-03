package com.tum4world.tum4world.model;

import java.sql.*;
import java.util.HashSet;
import java.util.Set;

public class StatisticsService {

    private Set<String> alreadyInsertedPages;

    public StatisticsService() {
        this.alreadyInsertedPages = new HashSet<>();
    }

    public void increasePageVisits(String servletPath) {
        if (servletPath == "") {
            servletPath = "home";
        }
        try (Connection conn = DatabaseUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement("UPDATE PAGE_STATISTICS SET counter=counter+1 WHERE page=?");) {
            boolean pagePresent = alreadyInsertedPages.contains(servletPath);
            if (!pagePresent) {
                insertPage(servletPath, conn);
            }
            alreadyInsertedPages.add(servletPath);
            ps.setString(1, servletPath);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private boolean insertPage(String servletPath, Connection conn) {
        try (PreparedStatement ps = conn.prepareStatement("INSERT INTO PAGE_STATISTICS VALUES (?,?)")) {
            ps.setString(1, servletPath);
            ps.setInt(2, 0);
            int affectedRows = ps.executeUpdate();
            return affectedRows == 1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
