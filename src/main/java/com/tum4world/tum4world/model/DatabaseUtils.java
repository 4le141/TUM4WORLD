package com.tum4world.tum4world.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseUtils {

    private static final String dbUrl = "jdbc:derby://localhost:1527/MyDerbydb";
    public static Connection getConnection() throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        return DriverManager.getConnection(dbUrl);
    }
}
