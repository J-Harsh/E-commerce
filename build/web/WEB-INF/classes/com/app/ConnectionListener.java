/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Harsh
 */
package com.app;
import java.sql.*;
import javax.servlet.*;

public class ConnectionListener implements ServletContextListener
{
    Connection con;
    public void contextInitialized(ServletContextEvent sce) 
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookstore?autoReconnect=true&useSSH=false","root","boot");
            ServletContext ins=sce.getServletContext();
            ins.setAttribute("mysql", con);
        }
        catch(Exception e)
        {
            javax.swing.JOptionPane.showMessageDialog(null,"Reson of error"+e);
        }
        
    }

    public void contextDestroyed(ServletContextEvent sce) 
    {
        try
        {
            if(!con.isClosed())
                con.close();
        }
        catch(Exception e)
        {
            javax.swing.JOptionPane.showMessageDialog(null, e);
        }
    }
    
}
