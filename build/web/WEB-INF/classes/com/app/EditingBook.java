/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app;

import java.util.*;
import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig(maxFileSize = 1000000000L)
public class EditingBook extends HttpServlet
{
    Connection con;
    public void init(ServletConfig sc) throws ServletException
    {
        super.init(sc);
        try
        {
            con= (Connection) sc.getServletContext().getAttribute("mysql");
        }
        catch(Exception e)
        { 
            javax.swing.JOptionPane.showMessageDialog(null, "Reason of Error in super init addiition 1::"+e);
        }
    }
    
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
    {
            PrintWriter out=res.getWriter();
            InputStream _bimg=null;
            String id=req.getParameter("id");
            String _bname=req.getParameter("bname");
            String _bauth=req.getParameter("bauthor");
            Double _bprice=Double.parseDouble(req.getParameter("bprice"));
            String _bcat=req.getParameter("bcat");
            String _bsubcat=req.getParameter("bsubcat");
            String _bdesc=req.getParameter("bdesc");
            Part img_parts=req.getPart("bimg");
            String disposition = img_parts.getHeader("Content-Disposition");
            String fileName = disposition.replaceFirst("(?i)^.*filename=\"?([^\"]+)\"?.*$", "$1");
            if (fileName.contains(".png")|| fileName.contains(".jpg") || fileName.contains(".jpeg") || fileName.contains(".jfiff") )
                {
                    _bimg=img_parts.getInputStream();
                try
                {
                    PreparedStatement pst=con.prepareStatement("update b_info set bcat=?,bsubcat=?,bdesc=?,bimage=?,bauthor=?,bprice=?,bname=? where bid=?" );
                    pst.setString(1,_bcat);
                    pst.setString(2,_bsubcat);
                    pst.setString(3,_bdesc);
                    pst.setBlob(4,_bimg);
                    pst.setString(5,_bauth);
                    pst.setDouble(6,_bprice);
                    pst.setString(7,_bname);
                    pst.setString(8,id);
                    int a=pst.executeUpdate();
                    if(a>0)
                    {
                        out.println("Record updated successfully");
                    }
                }
                catch(Exception e)
                {
                    javax.swing.JOptionPane.showMessageDialog(null, "Reason of Error in addition book ::"+e);
                }
            }
            else 
            {
                try
                {
                    PreparedStatement pst=con.prepareStatement("update b_info set bcat=?,bsubcat=?,bdesc=?,bauthor=?,bprice=?,bname=? where bid=?" );
                    pst.setString(1,_bcat);
                    pst.setString(2,_bsubcat);
                    pst.setString(3,_bdesc);
                    pst.setString(4,_bauth);
                    pst.setDouble(5,_bprice);
                    pst.setString(6,_bname);
                    pst.setString(7,id);
                    int a=pst.executeUpdate();
                    if(a>0)
                    {
                        out.println("Record updated successfully");
                    }
                }
                catch(Exception e)
                {
                    javax.swing.JOptionPane.showMessageDialog(null, "Reason of Error in addition book ::"+e);
                }
            }
        out.close();
    }
}

