<%@page import="java.util.Vector" %>


<%

    int id=Integer.parseInt(request.getParameter("id"));
    Vector v=(Vector)session.getAttribute("MyCart");
    v.removeElement(id);
    response.sendRedirect("cartPage.jsp");
%>