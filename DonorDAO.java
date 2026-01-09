package dao;

import java.sql.*;
import java.util.*;
import util.DBUtil;

public class DonorDAO {

    public static void registerDonor(String name, String email, String phone,
                                     String bloodGroup, String city, String password)
            throws Exception {

        Connection con = DBUtil.getConnection();
        String sql = "INSERT INTO donors (name,email,phone,blood_group,city,password) VALUES (?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, bloodGroup);
        ps.setString(5, city);
        ps.setString(6, password);

        ps.executeUpdate();
        con.close();
    }

    public static List<String[]> searchDonors(String bloodGroup, String city) throws Exception {

        List<String[]> list = new ArrayList<>();

        Connection con = DBUtil.getConnection();
        String sql = "SELECT name, phone, email FROM donors " +
                     "WHERE blood_group = ? AND LOWER(TRIM(city)) = LOWER(TRIM(?))";

        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, bloodGroup);
        ps.setString(2, city);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            list.add(new String[]{
                rs.getString("name"),
                rs.getString("phone"),
                rs.getString("email")
            });
        }
        con.close();
        return list;
    }

    public boolean loginDonor(String email, String password) {
        boolean status = false;
        try {
            Connection con = DBUtil.getConnection();
            String sql = "SELECT * FROM donors WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            status = rs.next(); // TRUE if record exists

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }


}
