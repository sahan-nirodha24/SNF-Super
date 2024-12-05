/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import View.Login;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author SAHAN
 */
public class LogoutController {
    private JFrame currentFrame;

    public LogoutController(JFrame currentFrame) {
        this.currentFrame = currentFrame;
        int check = JOptionPane.showConfirmDialog(null, "Do you want to logout");
        if (check == JOptionPane.YES_OPTION) { 
            try {
                new Login().setVisible(true);
                currentFrame.dispose(); 
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
