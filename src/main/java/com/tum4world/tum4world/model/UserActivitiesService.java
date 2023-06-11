package com.tum4world.tum4world.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

public class UserActivitiesService {

    public UserActivities getActiviesOfUser(String username) {
        UserActivities result = new UserActivities(username);
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM ACTIVITIES WHERE username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                result.setUsername(rs.getString(1));
                result.setActivity1(rs.getBoolean(2));
                result.setActivity2(rs.getBoolean(3));
                result.setActivity3(rs.getBoolean(4));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public void insertUserActivities(UserActivities activities) {
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO ACTIVITIES VALUES (?,?,?,?)");
            ps.setString(1, activities.getUsername());
            ps.setBoolean(2, activities.isActivity1());
            ps.setBoolean(3, activities.isActivity2());
            ps.setBoolean(4, activities.isActivity3());
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public boolean updateUserActivities(UserActivities activities) {
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("UPDATE ACTIVITIES SET activity1=?, activity2=?, activity3=? WHERE username=?");
            ps.setBoolean(1, activities.isActivity1());
            ps.setBoolean(2, activities.isActivity2());
            ps.setBoolean(3, activities.isActivity3());
            ps.setString(4, activities.getUsername());
            return ps.executeUpdate() == 1;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
