<%@page import="java.sql.*" %>
<%@page errorPage="Exceptions.jsp" %>

<%
    int t= (Integer)(session.getAttribute("type"));            
    if(t!=1)
    {
                response.sendRedirect("Unauthorized.jsp");
                return;
    }
%>

<%
    Connection con=(Connection) application.getAttribute("mysql");
    String _email=request.getParameter("email");
    String _uname=request.getParameter("uname");
    String  _pwd=request.getParameter("pwd");
    String _phno=request.getParameter("phno");
    String _addr=request.getParameter("addr");
    String _gender=request.getParameter("gender");
    String _sq=request.getParameter("Sq");
    String _sqa=request.getParameter("Sqa");
    
    CallableStatement cst=con.prepareCall("{ call asignup(?,?,?,?,?,?,?,?)}");
    cst.setString(1,_email);
    cst.setString(2,_uname);
    cst.setString(3,_pwd);
    cst.setString(4,_phno);
    cst.setString(5,_addr);
    cst.setString(6,_gender);
    cst.setString(7,_sq);
    cst.setString(8,_sqa);
    
    cst.execute();
    out.println("Sign up Successful");
    %>
    