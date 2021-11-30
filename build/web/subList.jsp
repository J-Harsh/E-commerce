<%@page import="java.sql.*"%>
<option selected> Select the sub category </option>
<% 
    Connection con=(Connection) application.getAttribute("mysql");
    String cat=request.getParameter("value");
    PreparedStatement pst=con.prepareStatement("select distinct(bsubcat) from b_info where bcat=? ");
    pst.setString(1,cat);
    ResultSet rs=pst.executeQuery();
    while(rs.next())
    {
        %>
        
        <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %> </option>
        <%
    }
    
%>