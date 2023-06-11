package com.tum4world.tum4world.model;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class StatisticsService {

    private static Set<String> alreadyInsertedPages = new HashSet<>();

    public List<PageStats> getStatistics() {
        List<PageStats> result = new ArrayList<>();
        try (Connection conn = DatabaseUtils.getConnection();
             Statement s = conn.createStatement();) {
            ResultSet rs = s.executeQuery("SELECT * FROM PAGE_STATISTICS");
            while (rs.next()) {
                result.add(new PageStats(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getTimestamp(3).toLocalDateTime()
                ));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
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
        try (PreparedStatement ps = conn.prepareStatement("INSERT INTO PAGE_STATISTICS VALUES (?,?,?)")) {
            ps.setString(1, servletPath);
            ps.setInt(2, 0);
            ps.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
            int affectedRows = ps.executeUpdate();
            return affectedRows == 1;
        } catch (SQLIntegrityConstraintViolationException ex) {
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void deleteAll() {
        try (Connection conn = DatabaseUtils.getConnection();
             Statement s = conn.createStatement()) {
            s.executeUpdate("DELETE FROM PAGE_STATISTICS");
            alreadyInsertedPages.clear();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
