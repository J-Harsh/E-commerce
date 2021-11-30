
<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%
    Connection conn=(Connection) application.getAttribute("mysql");
    PreparedStatement ps=conn.prepareStatement("select distinct(cat_name) from cat_demo ");
    ResultSet rst=ps.executeQuery();
    String id=request.getParameter("id");
    PreparedStatement pste=conn.prepareStatement("select * from b_info where bid=?");
    pste.setString(1,id);
    ResultSet rste=pste.executeQuery();
    rste.next();
 %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Book</title>
        <script type="text/javascript" src="scripts/catCh.js"></script>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <style>
            .form-control
            {
                width: 100%;
            }
            .form-p
            {
                position: relative;
                top: -20px;
            }
        </style>
        <div class="form-p">
            <div class="col-md-4 offset-md-4">
                <h3 class="text-center my-3" >Modify Book</h3>
                <div class="card">
                    <div class="card-body" >
                        <form method="post" action="EditingBook" enctype="multipart/form-data" >
                            <input type="hidden" value="<%= id%>" name="id">
                            
                    <div class="form-label">
                        <label for="text" class="form-label">Book Name</label>
                        <input type="text" class="form-control" name="bname"  value="<%= rste.getString(8) %>"   required >
                        
                    </div>
                            
                     <div class="form-label">
                        <label for="text" class="form-label">Author Name</label>
                        <input type="text" class="form-control" name="bauthor" id="uname"   value="<%= rste.getString(6) %>"  required >
                    </div>
                
                       
                    <div class="form-label">
                        <label for="text" class="form-label">Price </label>
                        <input type="number"  class="form-control" name="bprice" value="<%= rste.getString(7) %>"  id="phno"   >
                    </div>
                            
                    
                    <div class="form-label">
                        <label for="name" class="form-label">Category</label>
                        <select class="form-select" name="bcat" aria-label="Default select example"    onclick="subCat(this.value)"  >
                            <option selected><%= rste.getString(2) %></option>
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
                        <label for="name" class="form-label">Sub-Category  (to change sub-category you need to select category first)</label>
                          <select name="bsubcat"  class="form-select" aria-label="Default select example"  value="<%= rste.getString(8) %>"  id="subCatDiv" >
                              <option selected><%= rste.getString(3) %></option>
                          </select>
                      </div>
                            
                      <div class="form-label">
                          <label for="name" class="form-label">Book Description</label>
                          <input type="text" class="form-control" id="sqa" name="bdesc"  value="<%= rste.getString(4) %>"   required>
                    </div>
                            
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Current  Images for the Book:</label>
                        <img style="position:relative; margin-left: 2em;" src="imgCat.jsp?id= <%= id %>" width="225px" height="300px">
                        <label for="formFile" class="form-label">Choose another book image</label>
                        <input class="form-control" type="file"  name="bimg" accept="image/png, image/jpg, image/jpeg">
                    </div>
                    
                    <div class="container text-center" >
                        <input type="submit" class="btn btn-outline-success" id="bt" >
                        <input type="reset" class="btn btn-outline-warning" ></button>
                    </div>
                    
                </form>
                              </div>
                      </div>
                </div>
            </div>
    </body>
</html>
