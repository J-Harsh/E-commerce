<%
    if(session.getAttribute("type")==null)
    {
        response.sendRedirect("Unauthorized.jsp");
                return;
    }
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="http://crikx.pythonanywhere.com/media/favicon.png" type="image/x-icon">  
        <title>Admin Page</title>
        <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
    </head>
    <body>
        <%@include file= "navbar.jsp"%>
        <p class="h2 text-center">Admin Module</p>
        <div style="padding-left: 400px; padding-top: 50px">
           <a class="btn btn-secondary" href="AdminRegister.jsp">New Admin Signup</a>
           <a class="btn btn-secondary" href="BookEntry.jsp">New Book Entry</a>
           <a class="btn btn-secondary" href="BookModify.jsp">Modify Book Entry</a>
           <a class="btn btn-secondary" href="AdminModify.jsp">Modify Admin Details</a>
        </div>
        
    </body>
</html>
