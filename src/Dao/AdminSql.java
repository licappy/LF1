package Dao;

import Conn.Conn;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminSql {

    //根据账号删除一个学生的信息
    public static boolean deleteStudent(String name){
        Connection conn = Conn.getConnection();
        Statement stmt = null;
        int a = 0;

        try {
            stmt = conn.createStatement();
            String sql =  "delete from stus where name = " + "'" + name + "'";
            a = stmt.executeUpdate(sql);
            if(a > 0) {
                return true;
            }
            else {
                return false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    //查看学生的信息
    public static boolean queryStudent(String name){
        Connection conn = Conn.getConnection();
        Statement stmt = null;
        int a = 0;
        try {
            stmt = conn.createStatement();
            String sql =  "select * from stus";
            a = stmt.executeUpdate(sql);
            if(a > 0) {
                return true;
            }
            else {
                return false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    //查看教师的信息
    public static boolean queryTeacher(String name){
        Connection conn = Conn.getConnection();
        Statement stmt = null;
        int a = 0;
        try {
            stmt = conn.createStatement();
            String sql =  "select * from teachers";
            a = stmt.executeUpdate(sql);
            if(a > 0) {
                return true;
            }
            else {
                return false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    //根据账号删除一个教师的信息
    public static boolean deleteTeacher(String name){
        Connection conn = Conn.getConnection();
        Statement stmt = null;
        int a = 0;

        try {
            stmt = conn.createStatement();
            String sql = "delete from admins where name =" + "'" + name+ "'";
            a = stmt.executeUpdate(sql);
            if(a > 0) {
                return true;
            }
            else {
                return false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}
