package org.example;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DataService implements AutoCloseable{

    private Connection c;


    public DataService(String connection) throws SQLException {
        try{
            c = DriverManager.getConnection(connection);
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    public void close() throws SQLException {
        try{
            c.close();
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    public List<Party> getParties(){
        List<Party> parties = new ArrayList<>();

        try (PreparedStatement s = c.prepareStatement("SELECT id, name FROM Party")) {
            ResultSet r = s.executeQuery();
            while (r.next()) {
                int id = r.getInt("id");
                String name = r.getString("name");
                parties.add(new Party(id, name));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return parties;
    }

    public Party getParty(int id){
        Party res;
        try (PreparedStatement s = c.prepareStatement("SELECT id, name FROM Party WHERE id = ?")) {
            s.setInt(1, id);
            ResultSet r = s.executeQuery();
            String name = r.getString("name");
            res = new Party(id, name);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public static void main(String[] args) throws SQLException {

        DataService test = new DataService("jdbc:mariadb://localhost:3306/elections?user=vagrant&localSocket=/var/run/mysqld/mysqld.sock");

        List<Party> parties = test.getParties();

        for (int i = 0; i < parties.size(); i++){
            System.out.println("Party #" + parties.get(i).id + " is: " + parties.get(i).name);
        }

        for (int i = 0; i < args.length; i++){
            Party temp = test.getParty(Integer.valueOf(args[i]));
            System.out.println("Party #" + temp.id + " is: " + temp.name);
        }
    }
}