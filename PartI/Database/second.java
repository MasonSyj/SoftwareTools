import java.sql.*;

class second {

    public static void main(String[] args){
        String connection_string = "jdbc:mariadb://localhost:3306/DATABASE?user=USER&localSocket=/var/run/mysqld/mysqld.sock\n";

        try(Connection c = DriverManager.getConnection(connection_string)) {
            // do stuff with connection
        } catch (SQLException e) {
            // handle exception, for example by wrapping in RuntimeException
        }
    }

}
