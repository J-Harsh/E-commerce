<%-- 
    Document   : index
    Created on : 10 Nov, 2021, 10:07:54 AM
    Author     : Harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Store</title>
        <link rel="shortcut icon" href="http://crikx.pythonanywhere.com/media/favicon.png" type="image/x-icon">  
        <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        
        <div >
            <marquee behavior="alternate"><font face="sans-serif" size="2" color="darkorange"><b>This is a Book Store Portal made by Harsh Jain with &#x2764 for educational purposes</b></font></marquee>
        </div>
        
        <div >
                <%@include file="imgslider.jsp" %>
        </div>
        <%@include file= "footer.jsp"%>
    </body>
</html>
