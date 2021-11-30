<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
        String id=request.getParameter("id");
        Connection conn=(Connection) application.getAttribute("mysql");
        PreparedStatement prest=conn.prepareStatement("select bimage from b_info where bid=?");
        prest.setString(1,id);
        ResultSet res=prest.executeQuery();
        res.next();
        Blob blob_img=res.getBlob(1);
        byte[] img_bytes=(byte[]) blob_img.getBytes(1,(int)blob_img.length());
        OutputStream ous=response.getOutputStream();
        response.setContentType("image/jpg");
        ous.write(img_bytes);
        ous.flush();
        ous.close();
        
        
%>