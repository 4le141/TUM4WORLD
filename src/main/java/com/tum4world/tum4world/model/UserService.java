package com.tum4world.tum4world.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserService {

    private List<User> users;

    public UserService(){
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

    public User login(String username, String password) {
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
                u.setUsername(rs.getString(1));
                u.setFirstname(rs.getString(3));
                u.setLastname(rs.getString(4));
                u.setBirthday(rs.getDate(5).toLocalDate().toString());
                u.setEmail(rs.getString(6));
                u.setPhone(rs.getString(7));
                u.setUserMode(User.UserMode.valueOf(rs.getString(8)));
                return u;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public void insertUser(User user) {
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO USERS values (?,?,?,?,?,?,?,?)");
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFirstname());
            ps.setString(4, user.getLastname());
            ps.setDate(5, Date.valueOf(LocalDate.parse(user.getBirthday())));
            ps.setString(6, user.getEmail());
            ps.setString(7, user.getPhone());
            ps.setString(8, user.getUserMode().toString());
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            users.add(user);
        }
    }
    public static void insertDonazione(User user, int dona) {
        try (Connection conn = DatabaseUtils.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO DONAZIONI values (?,?,?)");
            ps.setString(1, user.getUsername());
            ps.setInt(2, dona);
            ps.setTimestamp(3,Timestamp.valueOf(LocalDate.now().atStartOfDay()));

            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public boolean userNameAlreadyExists(String username){
        try (Connection conn = DatabaseUtils.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("SELECT username from USERS where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
