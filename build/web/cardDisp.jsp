<%
if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
        {   
            
                response.sendRedirect("Unauthorized.jsp");
                return;
        }
        %>

<%@page import="java.sql.*" %>
<head>
    <%@include file="header.jsp" %>
</head>
<%
            Connection con=(Connection) application.getAttribute("mysql");
            String subcat=request.getParameter("value");
            PreparedStatement p=con.prepareStatement("select * from b_info where bsubcat=?");
            p.setString(1,subcat);
            ResultSet r=p.executeQuery();
            while(r.next())
        {
            String s=r.getString(1);
%>
        
        <div class="card mt-3 mb-3 border-dark" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
        <img src="imgCat.jsp?id=<%= s %>" class="img-fluid rounded-start">
    </div>
    <div class="col-md-8">
      <div class="card-body">
          <h5 class="card-title"><%= r.getString(8) %></h5>
        <p class="card-text"><%= r.getString(4) %></p>
        <p class="card-text"><small class="text-muted">Author: <%= r.getString(6) %></small></p>
        <p class="fs-5 text-left">Price: &#x20B9 <%=r.getString(7) %></p>
      </div>
    </div>
      <div class="card-footer text-muted">
          <a href="editingBook.jsp?id=<%=s%>" type="button" style="display: inline; margin-left: 23em" class="btn btn-warning ">Edit</a>
          <a href="deleteBook.jsp?id=<%=s %>" style="display: inline;" class="btn btn-danger " >Delete</a
  </div>
  </div>
</div>
        
    <%
    }
%>