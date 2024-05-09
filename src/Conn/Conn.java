package Conn;

import java.sql.*;

public class Conn {
    public static final String url="jdbc:mysql://localhost:3306/jdbc1?serverTimezone=UTC";
    public static final String name = "root";
    public static final String pwd = "a13322743857";

    public static Connection getConnection() {
        String driver = "com.mysql.cj.jdbc.Driver";
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,name,pwd);
        }catch(ClassNotFoundException e) {
            e.printStackTrace();
        }catch(SQLException e1) {
            e1.printStackTrace();
        }
        return conn;
    }
    public static void release(Connection conn, Statement stmt) {
        if(conn != null) {
            try {
                conn.close();
            }catch(SQLException e) {
                e.printStackTrace();
            }
            conn = null;
        }

        if(stmt != null) {
            try {
                stmt.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            stmt = null;
        }
    }

    public static void release(Connection conn, Statement stmt, ResultSet rs) {

        if(rs != null) {
            try {
                rs.close();
            }catch(SQLException e) {
                e.printStackTrace();
            }
            rs = null;
        }

        release(conn, stmt);

    }
}