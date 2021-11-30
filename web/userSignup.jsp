<%@page import="java.sql.*" %>
<%@page errorPage="ErrorPage.jsp" %>

<%
    Connection conn=(Connection) application.getAttribute("mysql");
    String _email=request.getParameter("email");
    String _uname=request.getParameter("uname");
    String  _pwd=request.getParameter("pwd");
    String _phno=request.getParameter("phno");
    String _addr=request.getParameter("addr");
    String _gender=request.getParameter("gender");
    String _sq=request.getParameter("sq");
    String _sqa=request.getParameter("sqa");
    
    CallableStatement cst=conn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}");
    cst.setString(1,_email);
    cst.setString(2,_uname);
    cst.setString(3,_pwd);
    cst.setString(4,_phno);
    cst.setString(5,_addr);
    cst.setString(6,_gender);
    cst.setString(7,_sq);
    cst.setString(8,_sqa);
    
    cst.execute();
    
    %>
    <html>
    <%@include file="navbar.jsp"%>
    <p class="fs-2 text-center">Thank You For Joining Us</p>
    <br>
    <p class="fs-3 text-center">We are glad to have you here</p>
    <br>
    <p class="fs-4 text-center">Enjoy your stay</p>
    <a href="index.jsp" style="margin-left: 40em;" class="btn btn-outline-success ">Continue shopping ^_^</a>
    <%@include file="footer.jsp"%>
    </html>