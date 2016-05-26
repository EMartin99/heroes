package org.apache.jsp.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/home/../cabecalho.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/estilo.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/cabecalho-fundo.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/menubd-tabela.css\">\n");
      out.write("        <title>Heroes</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <h1 id=\"titulo\">Heroes</h1>\n");
      out.write("            <nav id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"../home\">Home</a></li>\n");
      out.write("                    <li><a href=\"../categoria\">Categoria</a></li>\n");
      out.write("                    <li><a href=\"../editora\">Editora</a></li>\n");
      out.write("                    <li><a href=\"../equipe\">Equipe</a></li>\n");
      out.write("                    <li><a href=\"../jogador\">Jogador</a></li>\n");
      out.write("                    <li><a href=\"../regiao\">Região</a></li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"texto\">\n");
      out.write("    <h2>Heroes</h2>\n");
      out.write("    orem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus metus justo, scelerisque in ornare vel, interdum vitae turpis. Vestibulum vel massa tempor, auctor augue in, mollis tellus. Quisque pharetra ex felis, et commodo diam rutrum vel. Quisque quis turpis tincidunt, molestie orci at, mollis lorem. Mauris iaculis ex eros, a blandit augue pharetra et. Cras quis mattis nulla. In malesuada vulputate rutrum. Suspendisse venenatis lobortis nulla sit amet luctus. In sed maximus nulla. Cras vestibulum imperdiet dolor sed dapibus. Morbi ut sollicitudin sem, in imperdiet diam. Donec sodales ante ut diam porttitor pulvinar. Pellentesque aliquam quam a hendrerit efficitur\n");
      out.write("</div>\n");
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
