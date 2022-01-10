package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class AboutUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/navbar.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>About Us</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write('\n');

        Connection con=(Connection) application.getAttribute("mysql");
        PreparedStatement pst=con.prepareStatement("select  distinct bcat from b_info");
        ResultSet rs=pst.executeQuery();
        

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("<head>\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\" >\n");
      out.write("        <title>E-commerce</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar sticky-top navbar-expand-lg navbar-light\" style=\"background-color: #fff;\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("      <a  class=\"navbar-brand\" href=\"index.jsp\"><img src=\"http://crikx.pythonanywhere.com/media/logo.png\" alt=\"\" width=\"75px\"></a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("      <a class=\"navbar-brand fw-normal fs-3\" style=\"margin-left: 19em;\" href=\"index.jsp\">E-Book Portal</a>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul  class=\"navbar-nav ms-auto\">\n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link \" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("          <li  class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Categories\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("              ");

                  while(rs.next())
                  {
                      
                  
      out.write("\n");
      out.write("                  <li ><a class=\"dropdown-item\" href=\"categories.jsp?value=");
      out.print(rs.getString(1));
      out.write("\" > ");
      out.print(rs.getString(1) );
      out.write("  </a></li>\n");
      out.write("                  ");

                      }
                      
      out.write("\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link \"  href=\"AboutUs.jsp\">About Us</a>\n");
      out.write("        </li>\n");
      out.write("        ");

    if(session.getAttribute("uid")==null)
{

      out.write("\n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"register.jsp\">Register</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        ");

        }
else 
{

        
      out.write("\n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"logout.jsp\">Log Out</a>\n");
      out.write("        </li> \n");
      out.write("        ");

            }

      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"cartPage.jsp\">My Cart</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <p class=\"fs-2 text-center text-decoration-bold \">We are in the business of Selling Words</p>\n");
      out.write("        <div style=\"bottom:-10em;\">\n");
      out.write("        <p style=\"position:relative;left: 9em;top:9em ;max-width:700px;\" class=\"fs-6\">Welcome to E-Book Portal, your number one source for books. We're dedicated to providing you the very best of reading experience, with an emphasis on the Number Of Categories, Quality and Affordability.<br>\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("Founded in 2021 by Harsh Jain, E-Book Portal still have a long way to go. With more features to come in the newer versions which will have better UI experience, optimizations and security patches.\n");
      out.write("\n");
      out.write("\n");
      out.write("We hope you enjoy our products as much as we enjoy offering them to you. \n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("Sincerely,\n");
      out.write("<br>\n");
      out.write("Harsh Jain</p>\n");
      out.write("        <img style=\"position: relative;left: 56em;bottom: 10em ; border-radius:20px \" src=\"https://st2.depositphotos.com/1105977/5461/i/600/depositphotos_54615585-stock-photo-old-books-on-wooden-table.jpg\" alt=\"book image\" width=\"450px\">\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css\">\n");
      out.write("<!-- Remove the container if you want to extend the Footer to full width. -->\n");
      out.write("<div class=\"container mt-5\" >\n");
      out.write("  <!-- Footer -->\n");
      out.write("  <footer\n");
      out.write("          class=\"text-center text-lg-start text-dark\"\n");
      out.write("          style=\"background-color: #ECEFF1\"\n");
      out.write("          >\n");
      out.write("    <!-- Section: Social media -->\n");
      out.write("    <section\n");
      out.write("             class=\"d-flex justify-content-between p-4 text-dark\"\n");
      out.write("             style=\"background-color: orange\"\n");
      out.write("             >\n");
      out.write("      \n");
      out.write("      <div class=\"me-5\">\n");
      out.write("        <span>Get connected with us on social networks:</span>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("\n");
      out.write("      \n");
      out.write("      <div>\n");
      out.write("        <a href=\"\" class=\"text-dark me-4\">\n");
      out.write("          <i class=\"bi bi-google\"></i>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"\" class=\"text-dark me-4\">\n");
      out.write("          <i class=\"bi bi-github\"></i>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"\" class=\"text-dark me-4\">\n");
      out.write("          <i class=\"bi bi-linkedin\"></i>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"\" class=\"text-dark me-4\">\n");
      out.write("          <i class=\"bi bi-twitter\"></i>\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("      <!-- Right -->\n");
      out.write("    </section>\n");
      out.write("    <!-- Section: Social media -->\n");
      out.write("\n");
      out.write("    <!-- Section: Links  -->\n");
      out.write("    <section class=\"\">\n");
      out.write("      <div class=\"container text-center text-md-start\">\n");
      out.write("        <!-- Grid row -->\n");
      out.write("        <div class=\"row mt-3\">\n");
      out.write("          <!-- Grid column -->\n");
      out.write("          <div class=\"col-md-5 mx-auto \">\n");
      out.write("            <!-- Content -->\n");
      out.write("            <h6 class=\"text-uppercase fw-bold\">E-Book Portal</h6>\n");
      out.write("            <hr\n");
      out.write("                class=\"mt-0 d-inline-block mx-auto\"\n");
      out.write("                style=\"width: 60px; background-color: #7c4dff; height: 2px\"\n");
      out.write("                >\n");
      out.write("            <p >\n");
      out.write("             This is a Project  designed, developed and hosted by  <a style=\"color:darkorange\" href=\"https://www.linkedin.com/in/harsh2001/\" >Harsh Jain</a>.<br>I have made it in attempt to learn and implement html,css,bootstrap,jsp and servlets.<br>\n");
      out.write("    <a style=\"color:black\" href=\"https://github.com/J-Harsh/ecommerce\" >Repository Link</a>\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("          <!-- Grid column -->\n");
      out.write("\n");
      out.write("\n");
      out.write("          <!-- Grid column -->\n");
      out.write("          <div class=\"col-lg-3 col-xl-3 mx-auto \">\n");
      out.write("            <!-- Links -->\n");
      out.write("            <h6 class=\"text-uppercase fw-bold\">Contact</h6>\n");
      out.write("            <hr\n");
      out.write("                class=\"mt-0 d-inline-block mx-auto\"\n");
      out.write("                style=\"width: 60px; background-color: #7c4dff; height: 2px\"\n");
      out.write("                />\n");
      out.write("            <p><i class=\"fas fa-home mr-3\"></i> Chandigarh,India</p>\n");
      out.write("            <p><i class=\"fas fa-envelope mr-3\"></i> EbookPortal@gmail.com</p>\n");
      out.write("            <p><i class=\"fas fa-phone mr-3\"></i> 9152987821</p>\n");
      out.write("          </div>\n");
      out.write("          <!-- Grid column -->\n");
      out.write("        </div>\n");
      out.write("        <!-- Grid row -->\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- Section: Links  -->\n");
      out.write("\n");
      out.write("    \n");
      out.write("  </footer>\n");
      out.write("  <!-- Footer -->\n");
      out.write("</div>\n");
      out.write("<!-- End of .container -->");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
