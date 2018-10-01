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
                <!-- 81 a 100 -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>81 a 100</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.popularidade >= 81 && filme.popularidade <= 100}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- 61 a 80 -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>61 a 80</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.popularidade >= 61 && filme.popularidade <= 80}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- 41 a 60 -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>41 a 60</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.popularidade >= 41 && filme.popularidade <= 60}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- 21 a 40 -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>21 a 40</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.popularidade >= 21 && filme.popularidade <= 40}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
	                                             </td>
	                                        
	                                     </c:if>
	                                   </c:forEach>
                                    </tr>
                          </table>
                        
                    </div>
                </div>
                </c:if>
                
                <!-- 0 a 20 -->
                <c:if test="${not empty lista}">
                <div id="list" class="row">
                <h3>0 a 20</h3>
                    <div>
                        	
                            
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                                  <tr>
	                                  <c:forEach var="filme" items="${lista}">
	                                  	<c:if test="${filme.popularidade >= 0 && filme.popularidade <= 20}">
	                                       <td class="clearfix">
													<img alt="?" src="${filme.posterPath}" class="imag">
											
	                                               	<p><span class="dot">${filme.id }</span> ${filme.titulo }</p>
													<p><fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/></p>
	                                               	<p>${filme.descricao}</p>
	                                               	<p><a href="visualizar_filme?id=${filme.id}">Mais informações</a></p>
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