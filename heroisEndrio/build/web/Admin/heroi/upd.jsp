
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%
    HeroiDAO hdao = new HeroiDAO();
    Heroi x = hdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();

    List<Categoria> clista = cdao.listar();
    List<Editora> elista = edao.listar();
    List<Regiao> rlista = rdao.listar();


%>
<h2>Herois</h2>

<div>

    <form action="upd-ok.jsp" method="post">

        <label>C�digo:</label></br>
        <input type="text" value="<%=x.getCodigo()%>" name="codigo" readonly></br>
        <label>Nome:</label></br>
        <input type="text" value="<%=x.getNome()%>" name ="nome" ></br>
        <label>Codinome:</label></br>
        <input type="text" value="<%=x.getCodinome()%>"  name="codinome" required ></br>
        <label>Descri��o:</label></br>
        <textarea name="descricao" >
            <%=x.getDescricao()%>
        </textarea></br></br>

        <label>Foto:</label></br>
        <input type="file" value="<%=x.getFoto()%>"  name ="foto" ></br></br>
        <label>Intelig�ncia:</label></br>
        <input type="number" value="<%=x.getInteligencia()%>"  name ="inteligencia" min="1" max="10"></br>
        <label>For�a:</label></br>
        <input type="number" value="<%=x.getForca()%>"  name ="forca" min="1" max="10"></br>
        <label>Velocidade:</label></br>
        <input type="number" value="<%=x.getVelocidade()%>"  name ="velocidade" min="1" max="10"></br>
        <label>Resist�ncia:</label></br>
        <input type="number" value="<%=x.getResistencia()%>"  name ="resistencia" min="1" max="10" ></br>
        <label>Proje��o de Energia:</label></br>
        <input type="number" value="<%=x.getProjecaoenergia()%>"  name ="projecaoenergia" min="1" max="10"></br>
        <label>Habilidade de Combate:</label></br>
        <input type="number" value="<%=x.getHabilidadecombate()%>"  name ="habilidadecombate" min="1" max="10"></br>


        <label>Categoria:</label></br>
        <select name="categoria">
            <%if (x.getCategoria() != null) {%>
            <option value="<%=x.getCategoria().getCodigo()%>"><%out.print(x.getCategoria().getNome());%></option>

            <option>Nenhum</option>
            <%
            
                for (Categoria item : clista) {
                    if(item != x.getCategoria() ){
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
                    }
                }
            %>
        </select>
        </br>
        <label>Editora:</label></br>

        <select name="editora"  >
            <%if (x.getEditora() != null) {%>
            <option value="<%=x.getEditora().getCodigo()%>"><%out.print(x.getEditora().getNome());%></option>
            <option>Nenhum</option>
            <%
                for (Editora item : elista) {
                    if(item != x.getEditora() ){
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
                    }
                }

            %>
        </select>
        </br>
        <label>Regi�o:</label></br>

        <select name="regiao">
            <%if (x.getRegiao() != null) {%>
            <option value="<% out.print(x.getRegiao().getCodigo());%>"><%out.print(x.getRegiao().getNome());
                }%></option>
            <option>Nenhum</option>
            <%
                for (Regiao item : rlista) {
                    if(item != x.getRegiao() ){
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
                }

            %>
        </select>
        </br></br>

        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>

</br>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</body>
</html>
