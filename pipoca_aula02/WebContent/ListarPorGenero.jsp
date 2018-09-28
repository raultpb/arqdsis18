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
                <!-- Ação -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Ação</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Ação'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Aventura -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Aventura</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Aventura'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Animação -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Animação</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Animação'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Comédia -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Comédia</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Comédia'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Crime -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Crime</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Crime'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Documentário -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Documentário</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Documentário'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Drama -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Drama</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Drama'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Família -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Família</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Família'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Fantasia -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Fantasia</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Fantasia'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- História -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>História</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'História'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Horror -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Horror</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Horror'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Musical -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Musical</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Musical'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Mistério -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Mistério</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Mistério'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Romance -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Romance</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Romance'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Ficção Científica -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Ficção Científica</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Ficção Científica'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Filme para TV -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Filme para TV</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Filme para TV'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Suspense -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Suspense</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Suspense'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Guerra -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Guerra</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Guerra'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- Western -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>Western</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.genero.nome == 'Western'}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="manterfilmes.do?acao=visualizar&id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
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