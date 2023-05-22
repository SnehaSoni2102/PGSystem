package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- saved from url=(0031)http://bootswatch.com/cerulean/ -->\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Pg System</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"csss/bootstrap.css\" media=\"screen\">\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"csss/variables.less\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"csss/bootstrap.min.css\">\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("    <div class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <a href=\"#\" class=\"navbar-brand\">Pg System</a>\n");
      out.write("          <button class=\"navbar-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar-main\">\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"navbar-collapse collapse\" id=\"navbar-main\">\n");
      out.write("          <ul class=\"nav navbar-nav\">\n");
      out.write("              <li ><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li>\n");
      out.write("              <a href=\"login.jsp\">Login<span class=\"caret\"></span></a>\n");
      out.write("            </li>\n");
      out.write("              <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("            <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("            \n");
      out.write("            <li><a href=\"signup.jsp\">New Registration</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div>\n");
      out.write("            <br><br><br><br>\n");
      out.write("            <center> <h2>  Welcome to PG System</h2><br><img src=\"images/home.jpg\"/></center>\n");
      out.write("        </div>\n");
      out.write("<div style=\"float:left;margin-top: 60px;margin-left:300px\">\n");
      out.write("                    <h2 align=\"center\">PLEASE LOGIN OR SIGNUP TO CONTINUE</h2> \n");
      out.write("                    \n");
      out.write("                    <a href=\"signup.jsp\"> <input type=\"submit\" class=\"btn btn-success\" value=\"Sign Up\"></a>\n");
      out.write("                        <a href=\"login.jsp\"> <input type=\"submit\" class=\"btn btn-success\" value=\"LOGIN\"></a>\n");
      out.write("</div>\n");
      out.write("                  ");
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
