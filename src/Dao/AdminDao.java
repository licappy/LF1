package Dao;

import Conn.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDao {

    //查询是否有该管理员密码的管理员
    public static boolean isAdmin(String name, String pwd){

        Connection conn = Conn.getConnection();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            String sql = "select * from admins where name = " + "'" + name + "'" + " and pwd = " + "'" + pwd + "'";
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
            String sql = "select * from admins where name =" + "'" + name+ "'";
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

    public static void insertAdmin(String name, String pwd, String type) {
        Connection conn2 = Conn.getConnection();
        Statement stmt = null;
        try {
            stmt = conn2.createStatement();
            String sql = "insert into admins(name,pwd,type) VALUES ('"+name+"','"+pwd+"','"+type+"')";
            int k = stmt.executeUpdate(sql);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
