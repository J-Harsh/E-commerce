<%@page import="java.sql.*" %>

<%
        Connection con=(Connection) application.getAttribute("mysql");
        String ch=request.getParameter("value");
        PreparedStatement ps=con.prepareStatement("select * from u_info  where email=?");
        ps.setString(1,ch);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
            out.println("Email Id already exists");
    %>
