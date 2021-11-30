
<%
     if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
    {
        response.sendRedirect("signin.jsp?a=1");
        return;
    }
%>

<%
    String cat=request.getParameter("value");
    Connection cnc=(Connection) application.getAttribute("mysql");
    PreparedStatement p=cnc.prepareStatement("select * from b_info where bcat=?");
    p.setString(1,cat);
    ResultSet r=p.executeQuery();
    
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories</title>
        <script lang="JavaScript" type="text/javascript" src="scripts/cart.js"  ></script>
        <script lang="JavaScript" type="text/javascript" >
            var c=0;
            function readMore(x)
            {   
                c++;
                if(c%2!==0)
                {
                document.getElementById("desc"+x).style.height = "auto";
                document.getElementById("desc"+x).style.overflow = "";
                document.getElementById("rbtn"+x).innerHTML="Read Less";
                }
                else
                {
                document.getElementById("desc"+x).style.height = "100px";
                document.getElementById("desc"+x).style.overflow = "hidden";
                document.getElementById("rbtn"+x).innerHTML="Read More";
                }
            }
        </script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <p class="fs-2 text-center text-decoration-underline"><%=cat %></p>
        <div class="container" style="margin-left:7em;display:flex; flex-wrap: wrap;">
        <%
            r=p.executeQuery();
            while(r.next())
        {
            String s=r.getString(1);
            %>
        
        <div class="card mb-3 border-dark" style="max-width: 540px; margin: 2em;">
  <div class="row g-0">
    <div class="col-md-4">
        <img src="imgCat.jsp?id=<%= s %>" class="img-fluid rounded-start">
    </div>
    <div class="col-md-8">
      <div class="card-body">
          <h5 class="card-title"><%= r.getString(8) %></h5>
          
          <div id="desc<%=s%>" style="height:100px; overflow: hidden;" >
              <p class="card-text"><%= r.getString(4) %></p>
        </div>
        
        <button style="font-size: 13px;margin-left: -13px; margin-top: -13px;" id="rbtn<%=s%>" type="button" class="btn " onclick="readMore(<%=s%>)" >Read More</button>
        <p class="card-text" style="font"><small class="text-muted">Author: <%= r.getString(6) %></small></p>
        <p class="fs-5 text-left">Price: &#x20B9 <%=r.getString(7) %></p>
      </div>
    </div>
      <div class="card-footer text-muted">
          <button type="button" class="btn btn-success" style="margin-left: 24em; display: inline;" onclick="addToCart(<%= s %>)" >Add To Cart</button>
          <div style="margin-left: 21em; margin-top: 1em;" >
          <p id="confirm<%=s%>" style="color: black" ></p>
          </div>
  </div>
  </div>
      
</div>

  
  
    <%
    }
%>
        </div>
        
    </body>
     <%@include file= "footer.jsp"%>
</html>
