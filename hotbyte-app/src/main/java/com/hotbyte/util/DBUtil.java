package com.hotbyte.util;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {

    public static Connection getConnection() throws SQLException {
        Properties prop = new Properties();

        try (FileReader fr = new FileReader("C://Users//Persis Fanny Eloite//Desktop//hotpot//hotbyte-app//src//main//resources//Database.properties")) {
            prop.load(fr);
        } catch (IOException e) {
            System.err.println("Failed to load database properties file.");
            e.printStackTrace();
        }

        String url = prop.getProperty("url");
        String username = prop.getProperty("username");
        String password = prop.getProperty("password");

        //DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(url, username, password);
    }
}
