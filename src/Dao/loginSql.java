package Dao;

import Bean.MessBoar;
import Conn.Conn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class loginSql {
    Connection conn= Conn.getConnection(); ;                                      //数据库连接对象
    PreparedStatement pstmt;
    public static ArrayList<MessBoar> findMbInfo(){
        Connection conn= Conn.getConnection(); ;                                      //数据库连接对象
        PreparedStatement pstmt;
        try{
            ArrayList<MessBoar> al=new ArrayList<MessBoar>();
            pstmt=conn.prepareStatement("select * from [messagess]");
            ResultSet rs=pstmt.executeQuery();
            while(rs.next()){
                MessBoar mb=new MessBoar();
                mb.setName(rs.getString(1));
                mb.setType(rs.getString(2));
                mb.setTitle(rs.getString(3));
                mb.setMessage(rs.getString(4));
                al.add(mb);
            }
            return al;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public boolean addInfo(MessBoar mb){
        try{

            pstmt=conn.prepareStatement("insert into [messagess] values(?,?,?,?)");
            pstmt.setString(1, mb.getName());
            pstmt.setString(2,mb.getType());
            pstmt.setString(3, mb.getTitle());
            pstmt.setString(4, mb.getMessage());
            pstmt.executeUpdate();
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}