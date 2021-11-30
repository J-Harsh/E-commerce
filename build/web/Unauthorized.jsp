<%-- 
    Document   : Unauthorized
    Created on : 30 Nov, 2021, 4:20:17 PM
    Author     : Harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .blink_me
            {
                color:red;
                animation: blinker 1s linear infinite;
              }

              @keyframes blinker 
              {    
                50% {
                  opacity: 0;
                }
              }
    </style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <img style="position:relative; left:31em;" src="https://cdni.iconscout.com/illustration/premium/thumb/hacker-3354776-2810790.png">
        <p class="fs-3 text-center blink_me" >Unauthorized Access Detected!!! </p>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
