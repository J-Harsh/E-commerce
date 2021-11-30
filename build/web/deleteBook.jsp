<%@page import="java.sql.*" %>

<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%
    Connection cnn=(Connection) application.getAttribute("mysql");
    String id=request.getParameter("id");
    PreparedStatement pste=cnn.prepareStatement("delete from b_info where bid=?");
    pste.setString(1, id);
    int a=pste.executeUpdate();


    if(a>0)
        {
            response.sendRedirect("BookModify.jsp?id="+id);
        }
   
    
    
 %>