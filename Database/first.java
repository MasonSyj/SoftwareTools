import java.sql.*;

public class first{

   public static void main(String[] args){

   try(final Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/DATABASE?user=USER")){
      conn.createStatement().executeQuery("CREATE TABLE useres(username TEXT PRIMARY KEY, passwords TEXT)");
   } catch (final SQLException err){
      System.out.println(err);
   }

   }

}
