<html>
    <head>
        <%@include file="navbar.jsp"  %>
        <title>Log In</title>
        
    </head>
    
    <body>
        <style>
            .g-form
            {
                width: 100%;
                position: relative;
                left: 80px;
            }
        </style>
        
          <h5 class=" text-center" style="padding: 10px;margin-left: 22em;width: 40%;margin-top: 70px;border-style: solid; border-radius: 10px;border-color: red;" >Incorrect Credentials. Please Try Again</h5>
        <div class=" col-md-4 offset-md-4 text-center" style="margin-top: 50px;">
            <h2 class="h3 mb-3 font-weight-normal">Sign In</h2>
            <div class="card">
                    <div class="card-body" >
                        <form class="form-floating" method="post" action="validateUser.jsp">
                            <div class="   form-floating mb-3">
                                <input type="email" class="form-control" name="lemail" id="email" placeholder="name@example.com" required="required">
                                <label for="floatingInput">Email address</label>
                            </div>
                            <div class="form-ele form-floating">
                                <input type="password" class="form-control" id="pwd" placeholder="Password"  name="lpwd" required="required">
                                <label for="floatingPassword">Password</label>
                            </div>
                            <div class=" mt-3  container text-center" >
                                    <input type="submit" class="btn btn-outline-success">
                             </div>
                        </form>
                    </div>
            </div>
        </div>
    </body>
     <%@include file= "footer.jsp"%>
</html>