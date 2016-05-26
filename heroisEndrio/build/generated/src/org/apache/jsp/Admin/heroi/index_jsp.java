package org.apache.jsp.Admin.heroi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import modelo.Heroi;
import dao.HeroiDAO;
import modelo.Categoria;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/heroi/../cabecalho.jsp");
    _jspx_dependants.add("/Admin/heroi/../menu.jsp");
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
      out.write("\n");
      out.write("\n");
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
      out.write("            <h1 id=\"titulo\">Herois</h1>\n");
      out.write("            <nav id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"../home\">Home</a></li>\n");
      out.write("                    <li><a href=\"../categoria\">Categoria</a></li>\n");
      out.write("                    <li><a href=\"../editora\">Editora</a></li>\n");
      out.write("                    <li><a href=\"../equipe\">Equipe</a></li>\n");
      out.write("                    <li><a href=\"../jogador\">Jogador</a></li>\n");
      out.write("                    <li><a href=\"../regiao\">Região</a></li>\n");
      out.write("                    <li><a href=\"../heroi\">Herói</a></li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    HeroiDAO dao = new HeroiDAO();
    List<Heroi> lista;
    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();
    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }



      out.write("\n");
      out.write("\n");
      out.write("<h2>Herois</h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div>    \n");
      out.write("    <form method=\"post\">\n");
      out.write("        <input type=\"text\" name=\"filtro\" placeholder=\"Pesquise Aqui\"> </br>\n");
      out.write("        <input type=\"submit\"value=\"Pesquisar\">\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"bd\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"add.jsp\">Adicionar</a></li>\n");
      out.write("       \n");
      out.write("    </ul>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("    <tr>\n");
      out.write("        <th>\n");
      out.write("            Nome\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Codinome\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Descrição\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Categoria\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Editora\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Região\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("            Funções\n");
      out.write("        </th>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </tr>\n");
      out.write("    ");
        for (Heroi item : lista) {
    
      out.write("\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("            ");
      out.print(item.getNome());
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            ");
      out.print(item.getCodinome());
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            ");
      out.print(item.getDescricao());
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            \n");
      out.write("            ");
  if(item.getCategoria() != null){
                out.print(item.getCategoria().toString());}
      out.write("\n");
      out.write("        </td>\n");
      out.write("\n");
      out.write("        <td> ");
  if(item.getEditora() != null){
                out.print(item.getEditora().toString());}
      out.write("</td>\n");
      out.write("\n");
      out.write("        <td> ");
  if(item.getRegiao() != null){
                out.print(item.getRegiao().toString());}
      out.write("</td>\n");
      out.write("\n");
      out.write("        <td>\n");
      out.write("            <a href =\"del-ok.jsp?codigo=");
      out.print(item.getCodigo());
      out.write("\">Excluir</a>\n");
      out.write("            <a href=\"upd.jsp?codigo=");
      out.print(item.getCodigo());
      out.write("\">Editar</a>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
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
