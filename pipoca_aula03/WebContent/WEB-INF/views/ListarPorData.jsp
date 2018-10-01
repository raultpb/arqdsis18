<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Catálogo de Filmes</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
            <style>
            	.clearfix::after {
    content: "";
    clear: both;
    display: table;
    margin-right:9px;
    text-align:center;
    
}
.dot {
    height: 25px;
    width: 25px;
    background-color: #ABC;
    border-radius: 50%;
    display: inline-block;
    text-align:center;
}
			.imag{
				width:200px;
				height:200px;
				float:left;
				padding:3px;
			}
            </style>
        </head>

        <body>
            <!-- Barra superior com os menus de navegação -->
			<c:import url="Menu.jsp"/>
            <!-- Container Principal -->
            <div id="main" class="container">
               
                
                <c:if test="${not empty listaAno}">
                <!-- Aventura -->
                <div id="list" class="row">
                <h3>Lançamentos (ordem decrescente)</h3>
                    <div class="table-responsive col-md-14">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead> 
                                <tr>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                   <tr>
	                                  <c:forEach var="filme" items="${listaAno}">
	                                  		<td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                   </c:forEach>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </c:if>
            </div>
            <!-- /#main -->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
        </body>

        </html>