/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DBConnection;
import Model.DBSearch;
import View.Main;
import View.Selling;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author SAHAN
 */
public class LoginController {
    public static void login(String usName, String pass, JComboBox<String> roleCb, JFrame loginFrame) {
        ResultSet rs = new DBSearch().searchLogin(usName, pass);
        boolean isAuthenticated = false;

        try {
            // Process the Query
            while (rs.next()) {
                String dbRole = rs.getString("Role");
                String username = rs.getString("username");
                String password = rs.getString("password");

                if (usName.equals(username) && pass.equals(password) && roleCb.getSelectedItem().toString().equals(dbRole)) {
                    isAuthenticated = true;
                    if (dbRole.equals("Seller")) {
                        new Selling().setVisible(true);
                    } else if (dbRole.equals("Admin")) {
                        new Main().setVisible(true);
                    }
                    loginFrame.dispose();
                    break;
                }
            }

            if (!isAuthenticated) {
                JOptionPane.showMessageDialog(loginFrame, "Wrong Username and Password");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(loginFrame, "An error occurred during login");
        } finally {
            DBConnection.closeConnection();
        }
    }

    public static void login(String text, String text0) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
}
