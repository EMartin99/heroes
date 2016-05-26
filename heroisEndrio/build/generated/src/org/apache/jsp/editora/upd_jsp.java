package org.apache.jsp.editora;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class upd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/editora/../cabecalho.jsp");
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
      out.write("<h2>Editora</h2>\n");
      out.write("\n");
      out.write("<div>\n");
      out.write("\n");
      out.write("    <form action=\"upd-ok.jsp\" method=\"post\">\n");
      out.write("        <label>Código:</label></br>\n");
      out.write("        <input type=\"text\" value=\"");
      out.print(request.getParameter("codigo"));
      out.write("\" name=\"codigo\" readonly></br>\n");
      out.write("        <label>Nome:</label></br>\n");
      out.write("        <input type=\"text\" placeholder=\"Insira o nome da editora\" name=\"nome\" required></br>\n");
      out.write("        <label>Data De Fundação:</label></br>\n");
      out.write("        <input type=\"text\" placeholder=\"Insira a data de fundação da editora\" name=\"datafundacao\"></br></br>\n");
      out.write("        <input type=\"submit\" value=\"Enviar\"></br>\n");
      out.write("        <input type=\"reset\"  value=\"Limpar\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</br>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"botao\"><a href=\"index.jsp\">Voltar</a></div>\n");
      out.write("\n");
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
