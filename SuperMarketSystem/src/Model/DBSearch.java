/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author SAHAN
 */
public class DBSearch {
     public ResultSet searchLogin(String UName, String PWord) {
        ResultSet rs = null;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.getConnection();

            String sql = "SELECT 'Seller' AS Role, SelName AS username, SelPass AS password FROM SellerTb1 WHERE SelName = ? AND SelPass = ? " +
                         "UNION " +
                         "SELECT 'Admin' AS Role, AdminName AS username, AdminPass AS password FROM adminTb WHERE AdminName = ? AND AdminPass = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, UName);
            pstmt.setString(2, PWord);
            pstmt.setString(3, UName);
            pstmt.setString(4, PWord);

            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs;
    }
}
