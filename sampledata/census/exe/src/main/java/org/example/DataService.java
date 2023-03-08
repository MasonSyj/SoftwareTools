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

    public static void main(String[] args) throws SQLException {

        DataService test = new DataService("jdbc:sqlite:/home/tj22981/vagrant/sampledata/census/census.db");

        try(PreparedStatement s = test.c.prepareStatement("SELECT * FROM Region")){
            ResultSet r = s.executeQuery();

            while (r.next()) {
                String code = r.getString("code");
                String parent = r.getString("parent");
                String name = r.getString("name");
                System.out.println(code + ", " + parent + ", " + name);
            }

        } catch (SQLException e){
            throw new RuntimeException(e);
        }

        test.close();

    }
}
