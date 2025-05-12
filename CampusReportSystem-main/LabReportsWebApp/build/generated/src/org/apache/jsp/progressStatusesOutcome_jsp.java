package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;

public final class progressStatusesOutcome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Progress Statuses</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            background-color: #e0f7fa;\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: flex-start;\n");
      out.write("            min-height: 100vh;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            background-color: #ffffff;\n");
      out.write("            margin-top: 50px;\n");
      out.write("            padding: 40px;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);\n");
      out.write("            width: 80%;\n");
      out.write("            max-width: 600px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h2 {\n");
      out.write("            color: #007bb5;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        ul {\n");
      out.write("            list-style-type: none;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        li {\n");
      out.write("            background-color: #b3e5fc;\n");
      out.write("            margin: 10px 0;\n");
      out.write("            padding: 12px;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            font-size: 16px;\n");
      out.write("            color: #004d60;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .back-link {\n");
      out.write("            display: inline-block;\n");
      out.write("            margin-top: 25px;\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: #007bb5;\n");
      out.write("            font-weight: bold;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .back-link:hover {\n");
      out.write("            text-decoration: underline;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h2>Current Progress Statuses</h2>\n");
      out.write("        <ul>\n");
      out.write("            ");

                List<String> statuses = (List<String>) request.getAttribute("statuses");
                if (statuses != null && !statuses.isEmpty()) {
                    for (String status : statuses) {
            
      out.write("\n");
      out.write("                        <li>");
      out.print( status );
      out.write("</li>\n");
      out.write("            ");

                    }
                } else {
            
      out.write("\n");
      out.write("                    <li>No statuses found.</li>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </ul>\n");
      out.write("        <a href=\"menu.html\" class=\"back-link\">← Back to Menu</a>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
