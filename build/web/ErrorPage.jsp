
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <img src="https://cdn4.iconfinder.com/data/icons/webpage-v1/64/expand-color-webpage-36-512.png" alt="img" style="width:30%; position:relative; left:33em;">
        <h4 align="center"><font class="fs-3" color="red">Congratulations!! <br>You Have Successfully Managed To Break The Web-site </font></h4>
        <br>
        <a href="index.jsp" style="margin-left: 43em;" class="btn btn-danger ">Report Us</a>
        <br>
        <br>
        <a href="index.jsp" style="margin-left: 40em;" class="btn btn-outline-success ">Continue shopping ^_^</a>
        <%@include file="footer.jsp" %>
    </body>
</html>
