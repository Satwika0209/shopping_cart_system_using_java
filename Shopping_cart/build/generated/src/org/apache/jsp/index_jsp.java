package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Login - Shopping Cart</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: 'Arial', sans-serif;\n");
      out.write("            background: #f0f2f5;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            height: 100vh;\n");
      out.write("        }\n");
      out.write("        .login-box {\n");
      out.write("            background: white;\n");
      out.write("            padding: 2rem;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            box-shadow: 0 5px 15px rgba(0,0,0,0.1);\n");
      out.write("            width: 350px;\n");
      out.write("        }\n");
      out.write("        .login-box h2 {\n");
      out.write("            text-align: center;\n");
      out.write("            margin-bottom: 1.5rem;\n");
      out.write("        }\n");
      out.write("        .login-box input {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 10px;\n");
      out.write("            margin: 0.5rem 0;\n");
      out.write("            border-radius: 6px;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("        }\n");
      out.write("        .login-box button {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 10px;\n");
      out.write("            background: #6c5ce7;\n");
      out.write("            color: white;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 6px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        .login-box a {\n");
      out.write("            display: block;\n");
      out.write("            text-align: center;\n");
      out.write("            margin-top: 1rem;\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: #6c5ce7;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <form class=\"login-box\" action=\"LoginServlet\" method=\"post\">\n");
      out.write("        <h2>Login</h2>\n");
      out.write("        <input type=\"text\" name=\"username\" placeholder=\"Username\" required/>\n");
      out.write("        <input type=\"password\" name=\"password\" placeholder=\"Password\" required/>\n");
      out.write("        <button type=\"submit\">Login</button>\n");
      out.write("        <a href=\"signup.jsp\">Don't have an account? Sign up</a>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
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
