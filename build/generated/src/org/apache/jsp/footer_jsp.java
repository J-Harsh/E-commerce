package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
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
