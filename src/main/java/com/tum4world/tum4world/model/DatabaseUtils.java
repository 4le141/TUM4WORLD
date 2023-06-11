package com.tum4world.tum4world.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseUtils {

    private static final String dbUrl = "jdbc:derby://localhost:1527/MyDerbydb24;create=true";

    private static final String createActiviites =
            "create table APP.ACTIVITIES (" +
            "    USERNAME  VARCHAR(255)          not null" +
            "        constraint USERNAME_ACTIVITY" +
            "            references USERS" +
            "            on delete cascade," +
            "    ACTIVITY1 BOOLEAN default false not null," +
            "    ACTIVITY2 BOOLEAN default false not null," +
            "    ACTIVITY3 BOOLEAN default false not null" +
            ")";

    private static final String createDonations =
            "create table APP.DONATIONS (" +
            "    EURO           DECIMAL(10, 2) not null," +
            "    USERNAME       VARCHAR(255)   not null," +
            "    DATEOFDONATION TIMESTAMP      not null" +
            ")";

    private static final String createPageStatistics =
            "create table APP.PAGE_STATISTICS (" +
            "    PAGE       VARCHAR(50)                         not null\n" +
            "        constraint \"PAGE_STATISTICS_pk\"\n" +
            "            primary key,\n" +
            "    COUNTER    INTEGER                             not null,\n" +
            "    CREATED_TS TIMESTAMP default current TIMESTAMP not null\n" +
            ")";

    private static final String createUsers =
            "create table APP.USERS (" +
                    "    USERNAME  VARCHAR(255) not null\n" +
                    "        constraint \"USERS_pk\"\n" +
                    "            primary key,\n" +
                    "    PASSWORD  VARCHAR(255),\n" +
                    "    FIRSTNAME VARCHAR(255) not null,\n" +
                    "    LASTNAME  VARCHAR(255) not null,\n" +
                    "    BIRTHDATE DATE         not null,\n" +
                    "    EMAIL     VARCHAR(255) not null,\n" +
                    "    PHONE     VARCHAR(20)  not null,\n" +
                    "    USERMODE  VARCHAR(20)  not null\n" +
                    ")";

    public static Connection getConnection() throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        return DriverManager.getConnection(dbUrl);
    }

    public static void createActivitiesTable(){
        createTableIfNotExsists(createActiviites);
    }

    public static void createDonationsTable(){
        createTableIfNotExsists(createDonations);
    }

    public static void createPageStatisticsTable(){
        createTableIfNotExsists(createPageStatistics);
    }

    public static void createUsersTable(){
        createTableIfNotExsists(createUsers);
    }

    private static void createTableIfNotExsists(String sql){
        try(Connection conn = getConnection();
            Statement s = conn.createStatement()){
            s.executeUpdate(sql);
        }
        catch (SQLException ex){
            if("X0Y32".equals(ex.getSQLState())){
                // table already exists error
            }
            else {
                ex.printStackTrace();
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }
}
