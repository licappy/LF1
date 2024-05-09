package Dao;
import Conn.Conn;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ScoreSql {

    public static void insertScore(String name, String score) {
        Connection conn2 = Conn.getConnection();
        Statement stmt = null;
        try {
            stmt = conn2.createStatement();
            String sql = "insert into cj(name,score) VALUES ('"+name+"','"+score+"')";
            int k = stmt.executeUpdate(sql);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
