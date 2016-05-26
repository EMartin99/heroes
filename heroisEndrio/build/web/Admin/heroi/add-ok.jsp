
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="modelo.Heroi"%>
<%

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

        if (!request.getParameter("inteligencia").isEmpty() && request.getParameter("inteligencia") != null) {
            x.setInteligencia(Integer.parseInt(request.getParameter("inteligencia")));
        }
        if (!request.getParameter("forca").isEmpty() && request.getParameter("forca") != null) {
            x.setForca(Integer.parseInt(request.getParameter("forca")));
        }
        if (!request.getParameter("resistencia").isEmpty() && request.getParameter("resistencia") != null) {
            x.setResistencia(Integer.parseInt(request.getParameter("resistencia")));
        }
        if (!request.getParameter("projecaoenergia").isEmpty() && request.getParameter("projecaoenergia") != null) {
            x.setProjecaoenergia(Integer.parseInt(request.getParameter("projecaoenergia")));
        }
        if (!request.getParameter("habilidadecombate").isEmpty() && request.getParameter("habilidadecombate") != null) {
            x.setHabilidadecombate(Integer.parseInt(request.getParameter("habilidadecombate")));
        }
        if (!request.getParameter("velocidade").isEmpty() && request.getParameter("velocidade") != null) {
            x.setVelocidade(Integer.parseInt(request.getParameter("velocidade")));
        }

        if (request.getParameter("categoria") != null && (!request.getParameter("categoria").isEmpty()) && (!request.getParameter("categoria").equals("Nenhum")) && (!request.getParameter("categoria").equals("Selecione")))  {
            x.setCategoria(cdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("categoria"))));
        }

        if (request.getParameter("editora") != null && (!request.getParameter("editora").isEmpty()) && (!request.getParameter("editora").equals("Nenhum")) && (!request.getParameter("editora").equals("Selecione"))) {
            x.setEditora(edao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("editora"))));
        }

        if (request.getParameter("regiao") != null && (!request.getParameter("regiao").isEmpty()) && (!request.getParameter("regiao").equals("Nenhum")) && (!request.getParameter("regiao").equals("Selecione"))) {
            x.setRegiao(rdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("regiao"))));
        }

        dao.incluir(x);

        /*
        Categoria c = new Categoria();
        c.setCodigo(Integer.parseInt(request.getParameter("categoria")));
        x.setCategoria(c); */
        // Editora e = new Editora();
        // e.setCodigo(Integer.parseInt(request.getParameter("editora")));
        // x.setEditora(e);
        //Regiao r = new Regiao();
        // r.setCodigo(Integer.parseInt(request.getParameter("regiao")));
        // x.setRegiao(r);
    }


%>




<%@include file="../cabecalho.jsp"%>

<h2>Heroi</h2>
<p>Novo Her�i adicionada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</body>
</html>
