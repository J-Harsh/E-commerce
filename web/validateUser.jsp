<%@page import="java.sql.*"%>

<%

        String _uemail=request.getParameter("lemail");
        String _upwd=request.getParameter("lpwd");
        Connection con=(Connection) application.getAttribute("mysql");
        PreparedStatement pst=con.prepareStatement("select * from login where uemail=? and passw=?");
        pst.setString(1,_uemail);
        pst.setString(2,_upwd);
        ResultSet rs=pst.executeQuery();
        
        if(rs.next())
        {
            session.setAttribute("uid",_uemail);
            session.setAttribute("ps",_upwd);
             if(rs.getString(2).equals("Normal"))
            {
                int  t=0;
                session.setAttribute("type",t);
                response.sendRedirect("HomePage.jsp");
            }
            else if(rs.getString(2).equals("Admin"))
            {
                int t=1;
                session.setAttribute("type",t);
                response.sendRedirect("AdminPage.jsp");
            }
            else 
            {
                  response.sendRedirect("ErrorPage.jsp");
            }
        }
        else 
             response.sendRedirect("invalidLogin.jsp");
        

%>