<%@page import="java.sql.*" %>
<%
        Connection con=(Connection) application.getAttribute("mysql");
        PreparedStatement pst=con.prepareStatement("select  distinct bcat from b_info");
        ResultSet rs=pst.executeQuery();
        
%>

<html>
    <head>
        <%@include file="header.jsp" %>
        <meta charset="UTF-8" >
        <title>E-commerce</title>
    </head>
    <body>
        <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #fff;">
  <div class="container-fluid">
      <a  class="navbar-brand" href="index.jsp"><img src="http://crikx.pythonanywhere.com/media/logo.png" alt="" width="75px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <a class="navbar-brand fw-normal fs-3" style="margin-left: 19em;" href="index.jsp">E-Book Portal</a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul  class="navbar-nav ms-auto">
        <li class="nav-item active">
          <a class="nav-link " aria-current="page" href="index.jsp">Home</a>
        </li>
        
          <li  class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categories
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <%
                  while(rs.next())
                  {
                      
                  %>
                  <li ><a class="dropdown-item" href="categories.jsp?value=<%=rs.getString(1)%>" > <%=rs.getString(1) %>  </a></li>
                  <%
                      }
                      %>
          </ul>
        </li>
        <li class="nav-item active">
          <a class="nav-link "  href="AboutUs.jsp">About Us</a>
        </li>
        <%
    if(session.getAttribute("uid")==null)
{
%>
        <li class="nav-item active">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        
        <li class="nav-item active">
          <a class="nav-link" href="register.jsp">Register</a>
        </li>
        
        <%
        }
else 
{

        %>
        <li class="nav-item active">
          <a class="nav-link" href="logout.jsp">Log Out</a>
        </li> 
        <%
            }
%>
        
        
        <li class="nav-item active">
          <a class="nav-link" href="cartPage.jsp">My Cart</a>
        </li>
        
      </ul>
    </div>
  </div>
    </nav>
    </body>
</html>
