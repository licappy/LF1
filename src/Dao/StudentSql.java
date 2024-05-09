package Dao;

import Conn.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentSql {
    //查询是否有该学号密码的学生
    public static boolean isStudent(String name, String pwd){

        Connection conn1 = Conn.getConnection();
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn1.createStatement();
            String sql = "select * from stus where name=" + "'" + name+ "'" + " and pwd=" + "'" + pwd + "'";
            rs = stmt.executeQuery(sql);
            if(rs.next()) {
                return true;
            }
            return false;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isName(String name){

        Connection conn = Conn.getConnection();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            String sql = "select * from stus where name =" + "'" + name+ "'";
            rs = stmt.executeQuery(sql);
            if(rs.next()) {
                return true;
            }
            return false;
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public static void insertStudent(String name, String pwd, String type) {
        Connection conn2 = Conn.getConnection();
        Statement stmt = null;
        try {
            stmt = conn2.createStatement();
            String sql = "INSERT INTO stus(name,pwd,type) VALUES ('"+name+"','"+pwd+"','"+type+"')";
            int k = stmt.executeUpdate(sql);
            conn2.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
