package Dao;

import Conn.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TeacherSql {
    //查询是否有该教师号密码的教师
    public static boolean isTeacher(String name, String pwd){

        Connection conn = Conn.getConnection();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            String sql = "select * from teachers where name =" + "'" + name+ "'" + " and pwd=" + "'" + pwd + "'";
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

    public static boolean isName(String name){
        Connection conn = Conn.getConnection();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            String sql = "select * from teachers where name =" + "'" + name+ "'";
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

    public static void insertTeacher(String name, String pwd, String type) {
        Connection conn2 = Conn.getConnection();
        Statement stmt = null;
        try {
            stmt = conn2.createStatement();
            String sql = "insert into teachers(name,pwd,type) VALUES ('"+name+"','"+pwd+"','"+type+"')";
            int k = stmt.executeUpdate(sql);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

}
