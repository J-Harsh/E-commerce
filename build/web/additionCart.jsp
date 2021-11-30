<%@page import="java.util.Vector"%>


<%
       
        int id=Integer.parseInt(request.getParameter("id"));
        Vector vcart=(Vector)session.getAttribute("MyCart");
        
        if(vcart.contains(new Integer(id)))
                {
                        out.println("Go over to your cart");
                }
        else
                {
                    vcart.add(id);
                    %>
                    &#10004 Item Added To Cart!
<%                    
                }
%>