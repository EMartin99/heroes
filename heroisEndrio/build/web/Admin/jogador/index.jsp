<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page import="java.util.List"%>
<%
    JogadorDAO dao = new JogadorDAO();
    List<Jogador> lista;
    
  if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }
%>


<%@include file="../cabecalho.jsp"%>

<h2>Jogador</h2>

<div>    
    <form method="post">
        <input type="text" name="filtro" placeholder="Pesquise Aqui"> </br>
        <input type="submit"value="Pesquisar">
    </form>
</div>
<%@include file="../menu.jsp"%>

<table>
    <tr>
        <th>
           Email
        </th>
        <th>
            Senha
        </th>
        <th>
            Login
        </th>
        <th>
            Funções
        </th>
    </tr>
    <%        
        for (Jogador item : lista) {
    %>
    <tr>
        <td>
            <%=item.getEmail()%>
        </td>
        <td>
            <%=item.getSenha()%>
        </td>
        <td>
             <%=item.getLogin()%>
        </td>
        <td>
            <a href ="del-ok.jsp?email=<%=item.getEmail()%>">Excluir</a>
            <a href="upd.jsp?email=<%=item.getEmail()%>">Editar</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
    </body>
</html>
