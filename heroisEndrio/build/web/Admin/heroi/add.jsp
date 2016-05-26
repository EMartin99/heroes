
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%

    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();

    List<Categoria> clista = cdao.listar();
    List<Editora> elista = edao.listar();
    List<Regiao> rlista = rdao.listar();
%>
<h2>Herois</h2>

<div>

    <form action="add-ok.jsp" method="post">

        <label>Nome:</label></br>
        <input type="text" placeholder="Insira o nome do Her�i" name ="nome" ></br>
        <label>Codinome:</label></br>
        <input type="text" placeholder="Insira o codinome do Her�i" name="codinome" required ></br>
        <label>Descri��o:</label></br>
        <textarea name="descricao">
            
        </textarea></br></br>

        <label>Foto:</label></br>
        <input type="file" placeholder="Insira a foto do Her�i" name ="foto" ></br></br>
        <label>Intelig�ncia:</label></br>
        <input type="number" placeholder="Insira a intelig�ncia do Her�i" name ="inteligencia" min="1" max="10"></br>
        <label>For�a:</label></br>
        <input type="number" placeholder="Insira a for�a do Her�i" name ="forca" min="1" max="10"></br>
        <label>Velocidade:</label></br>
        <input type="number" placeholder="Insira a velocidade do Her�i" name ="velocidade" min="1" max="10"></br>
        <label>Resist�ncia:</label></br>
        <input type="number" placeholder="Insira a resist�ncia do Her�i" name ="resistencia" min="1" max="10" ></br>
        <label>Proje��o de Energia:</label></br>
        <input type="number" placeholder="Insira a proje��o de energia do Her�i" name ="projecaoenergia" min="1" max="10"></br>
        <label>Habilidade de Combate:</label></br>
        <input type="number" placeholder="Insira a habilidade de combate do Her�i" name ="habilidadecombate" min="1" max="10"></br>


        <label>Categoria:</label></br>
        <select name="categoria">
            <option>Selecione</option>
            <option>Nenhum</option>
            
            <%
      
                for (Categoria item : clista) {
             
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
            %>
        </select>
        </br>
        <label>Editora:</label></br>

        <select name="editora">
            <option>Selecione</option>
            <option>Nenhum</option>
            <%
                for (Editora item : elista) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
            %>
        </select>
        </br>
        <label>Regi�o:</label></br>

        <select name="regiao">
            <option>Selecione</option>            
            <option>Nenhum</option>

            <%
                for (Regiao item : rlista) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
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
