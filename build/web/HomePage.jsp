<%@page import="java.util.Vector"%>
<%
        if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
        {   
            
                response.sendRedirect("Unauthorized.jsp");
                return;
        }

        Vector<Integer> v = new Vector();
        session.setAttribute("MyCart", v);

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <br>
        <p class="fs-3 text-center " >Your log In was Successful <i style="color:lightgreen;" class="bi bi-hand-thumbs-up"></i> </p>
        <a href="index.jsp" style="margin-left: 40em;" class="btn btn-outline-success ">Continue shopping ^_^</a>
        <%@include file="footer.jsp" %>
    </body>
</html>
