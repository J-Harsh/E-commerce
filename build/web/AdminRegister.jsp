
<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%
    
    String[] saq={"What is the name of your first school?","What was the model of your first car?","In what city does your nearest sibling live?","What is the name of your favorite childhood friend?"};
    
 %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin SingUp</title>
            <link rel="shortcut icon" href="http://crikx.pythonanywhere.com/media/favicon.png" type="image/x-icon">  
            <script lang="JavaScript" type="text/javascript" src="scripts/pswd.js"></script>
            <script lang="JavaScript" type="text/javascript" src="scripts/checkEm.js"></script>
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
            .passw
                {
                    position:absolute;
                    left: 65em;
                    bottom: 27em;
                }
             .emw
             {
                 position: absolute;
                 left: 65em;
                 bottom: 37em;
             }
        </style>
        <div class="form-p">
            <div class="col-md-4 offset-md-4">
                <h3 class="text-center my-3" >Sign Up Here</h3>
                <div class="card">
                    <div class="card-body" >
                        <form method="post" action="adminSignup.jsp" >
                    <div class="form-label">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Enter your Email" onkeyup="checkEmail(this.value)"  required>
                        
                    </div>
                    
                    <div class="form-label">
                        <label for="text" class="form-label">Username</label>
                        <input type="text" class="form-control" name="uname" id="uname" placeholder="Enter your Username" requir ed >
                        
                    </div>
                    
                    <div class="form-label">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pass1" placeholder="Enter your Passoword"  required>
                    </div>
                    
                    <div class="form-label">
                        <label for="password" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" name="pwd" id="pass2" placeholder="Confirm Passoword" onkeyup="checkPassword()" required >
                    </div>
                    
                    <div class="form-label">
                        <label for="text" class="form-label">Mobile Number </label>
                        <input type="text" maxlength="10" pattern="\d{10}"  class="form-control" name="phno" id="phno" placeholder="Enter your Number without including 0 or +91">
                    </div>
                    
                    <div class="form-label">
                        <label for="name" class="form-label">Address</label>
                        <input type="textarea" class="form-control" name="addr" id="name" placeholder="Enter your Address"  required>
                    </div>
                    
                    <div class="form-check-label">
                        <label for="name" class="form-label">Select Your Gender:        </label>
                        <div style="padding-left: 30px" class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="Male" id="flexRadioDefault1" required>
                            <label class="form-check-label" for="flexRadioDefault1">
                              Male
                            </label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="Female" id="flexRadioDefault2" checked required>
                            <label class="form-check-label" for="flexRadioDefault2">
                              Female
                            </label>
                            </div>
                    
                        <div class="form-check form-check-inline mt-1 md-3">
                            <input class="form-check-input " type="radio" name="gender" value="Other" id="flexRadioDefault3" checked required>
                            <label class="form-check-label" for="flexRadioDefault3">
                              Other
                            </label>
                      </div>
                        </div>
                    
                    <div class="form-label">
                        <label for="name" name="Sq" class="form-label">Select the security question</label>
                        <select id="sq" class="form-control">
                            <option value="" >Choose...</option>
                            
                            <%
                                for(String s:saq)
                                { 
                               %>
                               <option value="<%=s  %>"><%=s  %></option>
                            <%
                                }
                                %>
                        </select>
                    </div>
                        
                      <div class="form-label">
                          <input type="text" class="form-control" id="sqa" name="sqa" placeholder="Answer" required>
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
        </div>
        <font id="pwerror" class="passw" color="red" ></font>
        <font id="emerror" class="emw" color="red" ></font>
        <%@include file= "footer.jsp"%>
    </body>
</html>
