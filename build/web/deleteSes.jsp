<%@page import="java.util.Vector" %>

<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%

    int id=Integer.parseInt(request.getParameter("id"));
    Vector v=(Vector)session.getAttribute("MyCart");
    v.removeElement(id);
    response.sendRedirect("cartPage.jsp");
%>