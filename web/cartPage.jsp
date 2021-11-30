
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    if(session.getAttribute("MyCart")==null)
    {
        response.sendRedirect("signin.jsp?a=0");
        return;
    }
        Vector v=(Vector)session.getAttribute("MyCart");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
        <link rel="stylesheet" href="css/cart.css">
        <script lang="JavaScript" type="text/javascript" >
            var a=1;
            function decrease(val)
            {
                var a=document.getElementById("info"+val).innerHTML;
                if(a>1)
                {
                    a--;
                    document.getElementById("info"+val).innerHTML=a;
                }
            }
            function increases(val)
            {
                var a=document.getElementById("info"+val).innerHTML;
                a++;
                document.getElementById("info"+val).innerHTML=a;
            }
            
           function priceUpdate(val,x)
            {
                var a=document.getElementById("info"+x).innerHTML;
                document.getElementById("cost"+x).innerHTML=val*a;
            }
            
            function totalUpdate(x)
            {
                var sum=0;
                var el;
                sum=parseInt(sum);
                var prefix = 'cost';
                for(var i = 0; i<x; i++) 
                {
                    el=document.getElementById(prefix+i).innerHTML;
                    el=parseInt(el);
                    sum+=el;
                }
                document.getElementById("totalP").innerHTML=sum;
              }
            
        </script>
    </head>
    <body style="min-height: 1080px;" >          
        <%@include file="navbar.jsp" %>
        <%
            if(v.isEmpty())
            {
                %>
                
                <div>
                    
                    <img style="width: 25%; margin-top:7em; margin-left: 35em; " src="https://cdn.dribbble.com/users/204955/screenshots/4930541/emptycart.png " alt="Your Cart Is Empty" >
                    
                </div>
                <p class="fs-3 text-center text-decoration">Your Cart Is Empty</p>
                <p class="fs-6 text-center text-decoration">Add more items by clicking below</p>
                <a href="index.jsp" style="margin-left: 40em;" class="btn btn-outline-success ">Continue shopping ^_^</a>
                <%
            }
        else 
            {
                Connection cn=(Connection)  application.getAttribute("mysql");
                PreparedStatement pt=cn.prepareStatement("select * from b_info where bid=?");
                double sum=0;
         %>
        
        <div class="container cart-page" style="width: 60%" >
            <table align="">
                
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Sub-Total</th>
                </tr>
                
                <%
                    for(int i=0;i<v.size();i++)
                    {
                        Object a=v.get(i);
                        String s=a.toString();
                        pt.setString(1,s);
                        ResultSet rt=pt.executeQuery();
                        rt.next();
                        sum=sum+Double.parseDouble(rt.getString(7));
                 %>
                <tr>
                    <td>
                        <div class="cart-info" >
                            <img src="imgCat.jsp?id=<%=rt.getString(1)%>"  >
                            <div>
                                <p class="fs-6 " > <%= rt.getString(8) %></p>
                                <p class="fs-6 fw-light " >Price: <%=rt.getString(7) %></p>
                                <p id="price" style="display:none;"  ><%=rt.getString(7) %></p>
                                <a href="deleteSes.jsp?id=<%=s %>" ><img src="https://cdn1.iconfinder.com/data/icons/basic-ui-elements-color/700/010_trash-2-512.png" style="width:25px; height:25px; " ></a>
                            </div>
                        </div>
                    </td>
                    
                    <td>
                        <div>
                            <button class="btn btn-warning btn-sm"  onclick="decrease(<%=i%>);priceUpdate(<%=rt.getString(7) %>,<%=i %>),totalUpdate(<%= v.size()%>)" style="display:inline" >-</button>
                            <h6 id="info<%=i %>" style="display:inline" >1</h6>
                            <button class="btn btn-success btn-sm" onclick="increases(<%=i %>);priceUpdate(<%=rt.getString(7) %>,<%=i %>),totalUpdate(<%= v.size()%>)" style="display:inline"  >+</button>
                        </div>
                    </td>
                    <td id="cost<%=i %>" ><%=rt.getString(7) %></td>
                    
                </tr>
                <%
                    
                }
                %>
                
                
              </table>
            
            <div class="total-price" >
                <table  >
                    
                    <tr>
                        <td>Total Amount<br>(inclusive of 18% GST)</td>
                        <td id="totalP"><%= sum %></td>
                    </tr>
                   
                    <tr>
                        <td><a class="btn btn-outline-success" href="#" >Check Out</a></td>
                    </tr>
                </table>
            </div>
            
        </div>
         <%
         }
         %>
         
    </body>
    <%@include file= "footer.jsp"%>
</html>
