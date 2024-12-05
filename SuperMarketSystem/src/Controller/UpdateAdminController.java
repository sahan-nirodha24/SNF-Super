/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DBConnection;
import java.sql.Connection;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author SAHAN
 */
public class UpdateAdminController {
     private JTextField AdminName;
     private JTextField AdminPass;

    public UpdateAdminController(JTextField AdminName, JTextField AdminPass) {
        this.AdminName = AdminName;
        this.AdminPass = AdminPass;
    }

    public void updateAdmin() {
        if (AdminName.getText().isEmpty() || AdminPass.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Missing Information");
        } else {
            Connection con = null;
            Statement stmt = null;
            try {
                con = DBConnection.getConnection();
                String query = "UPDATE AdminTb SET AdminName = '" + AdminName.getText() + "', AdminPass = '" + AdminPass.getText() + "' WHERE AdminId = 1";
                stmt = con.createStatement();
                stmt.executeUpdate(query);
                JOptionPane.showMessageDialog(null, "Password Successfully Updated");
            } catch (Exception e) {
                e.printStackTrace();
            } 
        }
    }
}
