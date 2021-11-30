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
        Connection cn= (Connection) application.getAttribute("mysql");
        PreparedStatement ps=cn.prepareStatement("select distinct(cat_name) from cat_demo ");
        ResultSet rst=ps.executeQuery();
        
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Entry</title>
        <script type="text/javascript" src="scripts/catCh.js"></script>
    </head>
     <body >
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
                <h3 class="text-center my-3" >New Book</h3>
                <div class="card">
                    <div class="card-body" >
                        <form method="post" action="AdditionBook" enctype="multipart/form-data" >
                            
                    <div class="form-label">
                        <label for="text" class="form-label">Book Name</label>
                        <input type="text" class="form-control" name="bname" id="uname" placeholder="Enter Book Name" required >
                        
                    </div>
                            
                     <div class="form-label">
                        <label for="text" class="form-label">Author Name</label>
                        <input type="text" class="form-control" name="bauthor" id="uname" placeholder="Enter Author Name " required >
                    </div>
                
                       
                    <div class="form-label">
                        <label for="text" class="form-label">Price </label>
                        <input type="number"  class="form-control" name="bprice" id="phno" placeholder="Enter book's price">
                    </div>
                            
                    
                    <div class="form-label">
                        <label for="name" class="form-label">Category</label>
                        <select class="form-select" name="bcat" aria-label="Default select example" onchange="subCat(this.value)">
                            <option selected>Select the main category</option>
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
                          <select name="bsubcat"  class="form-select" aria-label="Default select example" id="subCatDiv" >
                              
                          </select>
                      </div>
                            
                      <div class="form-label">
                          <label for="name" class="form-label">Book Description</label>
                          <input type="text" class="form-control" id="sqa" name="bdesc" placeholder="Enter..." required>
                    </div>
                            
                    <div class="mb-3">
                        <label for="formFile" class="form-label">Insert Images for the Book</label>
                        <input class="form-control" type="file" id="formFile" name="bimg" accept="image/png, image/jpg, image/jpeg" >
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
                      <%@include file= "footer.jsp"%>
    </body>
</html>
