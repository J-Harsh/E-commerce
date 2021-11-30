<%@page import="java.sql.*" %>

<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%
    Connection cnn=(Connection) application.getAttribute("mysql");
    PreparedStatement pste=cnn.prepareStatement("select distinct (bcat) from b_info");
    ResultSet rst=pste.executeQuery();
 %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="scripts/catChBm.js"></script>
        <script type="text/javascript" src="scripts/subCatCard.js"></script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="form-label" >
            
            
                        <label for="name" class="form-label">Category</label>
                        <select class="form-select" name="bcat" aria-label="Default select example" onchange="subCatBm(this.value)">
                            <option >Select the main category</option>
                            <%
                                while(rst.next())
                                {
                            %>
                            <option value="<%=rst.getString(1) %>"><%=rst.getString(1) %> </option>
                            <%
                                }
                             %>
                      </select>
       </div>  
                  
            
                      
        <div class="form-label">
                        <label for="name" class="form-label">Sub-Category</label>
                        <select name="bsubcat"  class="form-select" aria-label="Default select example" id="subCatDisp" onchange="dispCards(this.value)" >
                              
                          </select>
        </div>
                      
                      <%
                
                if(request.getParameter("id")==null)
                    out.println("");
                else
                {
                    if(!request.getParameter("id").equals("") )
                        {
                            %>
                            <div id="del">
                                <h6 class="text-center my-3" >The book with id <%= request.getParameter("id")%> has been delete successfully</h6>
                            </div>
            <%
                        }
                }
            %>    
                      
                      <div id="cards" style="margin-left:  30%; margin-right: 30%;">
                          
                      </div>
    </body>
</html>
