package org.apache.jsp.heroi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.CategoriaDAO;
import dao.EditoraDAO;
import dao.RegiaoDAO;
import dao.HeroiDAO;
import modelo.Heroi;

public final class add_002dok_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/heroi/../cabecalho.jsp");
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


    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();
    
    
    if (request.getParameter("codinome") == null || request.getParameter("codinome").isEmpty()) {
        response.sendRedirect("index.jsp");
    } else {
        HeroiDAO dao = new HeroiDAO();
        Heroi x = new Heroi();

        x.setCodinome(request.getParameter("codinome"));
        x.setNome(request.getParameter("nome"));
        x.setFoto(request.getParameter("foto"));
        x.setDescricao(request.getParameter("descricao"));
        x.setInteligencia(Integer.parseInt(request.getParameter("inteligencia")));
        x.setForca(Integer.parseInt(request.getParameter("forca")));
        x.setResistencia(Integer.parseInt(request.getParameter("resistencia")));
        x.setProjecaoenergia(Integer.parseInt(request.getParameter("projecaoenergia")));
        x.setHabilidadecombate(Integer.parseInt(request.getParameter("habilidadedecombate")));
        x.setVelocidade(Integer.parseInt(request.getParameter("velocidade")));

        x.setCategoria(cdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("categoria"))));
        x.setEditora(edao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("editora"))));
        x.setRegiao(rdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("regiao"))));

        dao.incluir(x);

    }



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
      out.write("<h2>Heroi</h2>\n");
      out.write("<p>Novo Herói adicionada com sucesso</p>\n");
      out.write("\n");
      out.write("<div id=\"botao\"><a href=\"index.jsp\">Voltar</a></div>\n");
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
