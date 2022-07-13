package helper;

import java.util.*;
import java.io.*;
import java.sql.*;

public class AbstractDao {

    static Connection cc;
    static String path = "";

    static public void setPath(String x) {
        path = x;
    }

    public static Connection getConnection() {
        try {
            Properties pp = new Properties();

            File ff = new File(path);
            pp.load(new FileReader(ff));
            Class.forName(pp.getProperty("databaseClass"));
            cc = DriverManager.getConnection(pp.getProperty("url"), pp.getProperty("username"), pp.getProperty("password"));
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return cc;
    }
}
