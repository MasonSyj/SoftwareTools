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
/*

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
            r.next();
            String name = r.getString("name");
            res = new Party(id, name);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public Candidate getCandidate(int id){
        Candidate res;
        try (PreparedStatement s = c.prepareStatement("SELECT Candidate.id AS id, Candidate.name AS name, Party.name AS party, Ward.name AS ward, votes, Candidate.party AS pid, Candidate.ward AS wid FROM Party, Candidate, Ward WHERE Candidate.party = Party.id AND Candidate.ward = Ward.id AND Candidate.id = ?")) {
            s.setInt(1, id);
            ResultSet r = s.executeQuery();
            r.next();
            String name = r.getString("name");
            String party = r.getString("party");
            String ward = r.getString("ward");
            int votes = r.getInt("votes");
            int pid = r.getInt("pid");
            int wid = r.getInt("wid");
            res = new Candidate(id, name, new Party(pid, party), new Ward(wid, ward), votes);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }
*/

    public static void main(String[] args) throws SQLException {

        DataService test = new DataService("jdbc:sqlite:/vagrant/sampledata/census/setup.sql");

//        Candidate candidate1 = test.getCandidate(2456);
        try(PreparedStatement s = test.c.prepareStatement("SELECT * FROM Region")){
            ResultSet r = s.executeQuery();
            r.next();
            String code = r.getString("code");
            String parent = r.getString("parent");
            String name = r.getString("name");
        } catch (SQLException e){
            throw new RuntimeException(e);
        }

    }
}
