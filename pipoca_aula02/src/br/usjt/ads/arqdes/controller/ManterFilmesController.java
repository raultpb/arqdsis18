package br.usjt.ads.arqdes.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.usjt.ads.arqdes.model.dao.FilmeDAO;
import br.usjt.ads.arqdes.model.entity.Filme;
import br.usjt.ads.arqdes.model.entity.Genero;
import br.usjt.ads.arqdes.model.service.FilmeService;
import br.usjt.ads.arqdes.model.service.GeneroService;

/**
 * Servlet implementation class ManterFilmesController
 */
@WebServlet("/manterfilmes.do")
public class ManterFilmesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		RequestDispatcher dispatcher;
		FilmeService fService;
		GeneroService gService;
		Filme filme;
		HttpSession session;
		FilmeDAO dao = new FilmeDAO();
		int filmeId;

		String titulo = request.getParameter("titulo");
		String descricao = request.getParameter("descricao");
		String diretor = request.getParameter("diretor");
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String posterPath = request.getParameter("posterPath");
		String popularidade = request.getParameter("popularidade") == null
				|| request.getParameter("popularidade").length() == 0 ? "0" : request.getParameter("popularidade");
		String dataLancamento = request.getParameter("dataLancamento") == null
				|| request.getParameter("dataLancamento").length() == 0 ? ""
						: request.getParameter("dataLancamento");
		String idGenero = request.getParameter("genero.id");
		String chave = request.getParameter("data[search]");

		switch (acao) {
		case "novo":
			gService = new GeneroService();
			ArrayList<Genero> generos = gService.listarGeneros();
			session = request.getSession();
			session.setAttribute("generos", generos);
			dispatcher = request.getRequestDispatcher("CriarFilme.jsp");
			dispatcher.forward(request, response);
			break;
		case "criar":
			

			fService = new FilmeService();
			filme = new Filme();
			filme.setTitulo(titulo);
			filme.setDescricao(descricao);
			filme.setDiretor(diretor);

			gService = new GeneroService();
			Genero genero = new Genero();
			genero.setId(Integer.parseInt(idGenero));
			genero.setNome(gService.buscarGenero(genero.getId()).getNome());
			filme.setGenero(genero);

			formatter = new SimpleDateFormat("dd/MM/yyyy");
			try {
				filme.setDataLancamento(formatter.parse(dataLancamento));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				filme.setDataLancamento(null);
			}

			filme.setPopularidade(Double.parseDouble(popularidade));
			filme.setPosterPath(posterPath);

			filme = fService.inserirFilme(filme);

			request.setAttribute("filme", filme);

			dispatcher = request.getRequestDispatcher("VisualizarFilme.jsp");
			dispatcher.forward(request, response);
			break;
		case "excluir":
			int id = Integer.parseInt(request.getParameter("id"));
			dao.excluir(id);
			request.setAttribute("filme", dao.listarFilmes());
			dispatcher = request.getRequestDispatcher("ListarFilmes.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "visualizar":
			try {
				filmeId = Integer.parseInt(request.getParameter("id"));
	            Filme filmes = dao.buscarFilme(filmeId);
	            request.setAttribute("filme", filmes);
				dispatcher = request.getRequestDispatcher("VisualizarFilme.jsp");
				dispatcher.forward(request, response);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "editar":
			filmeId = Integer.parseInt(request.getParameter("id"));
 			fService = new FilmeService();
			filme = fService.buscarFilme(filmeId);
 			gService = new GeneroService();
			generos = gService.listarGeneros();
 			session = request.getSession();
			session.setAttribute("generos", generos);
 			request.setAttribute("filme", filme);
			dispatcher = request.getRequestDispatcher("AlterarFilme.jsp");
			dispatcher.forward(request, response);
			break;
		case "atualizar":
			filmeId = Integer.parseInt(request.getParameter("id"));
			fService = new FilmeService();
			filme = new Filme();
 			filme.setId(filmeId);
			filme.setTitulo(titulo);
			filme.setDescricao(descricao);
			filme.setDiretor(diretor);
 			gService = new GeneroService();
			generos = gService.listarGeneros();
			request.setAttribute("generos", generos);
			genero = new Genero();
			genero.setId(Integer.parseInt(idGenero));
			genero.setNome(gService.buscarGenero(genero.getId()).getNome());
			filme.setGenero(genero);
 			try {
 				formatter = new SimpleDateFormat("dd/MM/yyyy");
				filme.setDataLancamento(formatter.parse(dataLancamento));
			} catch (ParseException e) {
				e.printStackTrace();
				filme.setDataLancamento(null);
			}
			filme.setPopularidade(Double.parseDouble(popularidade));
			filme.setPosterPath(posterPath);
 			fService.atualizarFilme(filme);
			request.setAttribute("filme", filme);
			dispatcher = request.getRequestDispatcher("VisualizarFilme.jsp");
			dispatcher.forward(request, response);
			break;
		case "reiniciar":
			session = request.getSession();
			session.setAttribute("lista", null);
			dispatcher = request.getRequestDispatcher("ListarFilmes.jsp");
			dispatcher.forward(request, response);
			break;
		case "listar":
			session = request.getSession();
			fService = new FilmeService();
			ArrayList<Filme> lista;
			if (chave != null && chave.length() > 0) {
				lista = fService.listarFilmes(chave);
			} else {
				lista = fService.listarFilmes();
			}
			session.setAttribute("lista", lista);
			dispatcher = request.getRequestDispatcher("ListarFilmes.jsp");
			dispatcher.forward(request, response);
			break;
		case "ordenarGeneros":
			session = request.getSession();
			fService = new FilmeService();
			ArrayList<Filme> ordemGenero;
			ordemGenero = fService.ordenarGeneros();
			session.setAttribute("lista", ordemGenero);
			dispatcher = request.getRequestDispatcher("ListarFilmes.jsp");
			dispatcher.forward(request, response);
			break;
		case "ordenarPopularidade":
			session = request.getSession();
			fService = new FilmeService();
			ArrayList<Filme> ordemPopularidade;
			ordemPopularidade = fService.ordenarPopularidade();
			session.setAttribute("lista", ordemPopularidade);
			dispatcher = request.getRequestDispatcher("ListarFilmes.jsp");
			dispatcher.forward(request, response);
			break;
		case "ordenarData":
					session = request.getSession();
					fService = new FilmeService();
					ArrayList<Filme> lista5;
					lista5 = fService.ordenarData();
					

					Filme filmeMes = null;
					Filme filmeAno = null;
					
					ArrayList<Filme> listaAno = new ArrayList<Filme>();
					ArrayList<Filme> listaMes = new ArrayList<Filme>();
					
					Date data = new Date();
					Date dataBanco = new Date();
					Calendar c = Calendar.getInstance();
					Calendar c3 = Calendar.getInstance();
					Calendar c4 = Calendar.getInstance();
					DateFormat formatter2 = new SimpleDateFormat("dd/MM/yyyy");

					int i = 0;
				    for(Filme a: lista5)
				    {
				    	/*Inicio do código*/
				    	
				    	try {
							String dataString = formatter2.format((a.getDataLancamento()));
							dataBanco = (Date)formatter2.parse(dataString);
						} catch (ParseException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
				    	
				    	c.setTime(dataBanco);
				    
				    	Format format1 = new SimpleDateFormat("MM");
				    	Format format2 = new SimpleDateFormat("yyyy");
				    	Format format3 = new SimpleDateFormat("dd");
				    	int data01 = Integer.parseInt(format1.format(c.getTime()));
				    	int data02 = Integer.parseInt(format2.format(c.getTime()));
				    	int data03 = Integer.parseInt(format3.format(c.getTime()));
				    	
					    // formata e exibe a data e hora
				    	c4.setTime(data);
				    	
					    Format format4 = new SimpleDateFormat("MM");
					    Format format5 = new SimpleDateFormat("yyyy");
					    Format format6 = new SimpleDateFormat("dd");
					    int data04 = Integer.parseInt(format4.format(c4.getTime()));
					    int data05 = Integer.parseInt(format5.format(c4.getTime()));
					    int data06 = Integer.parseInt(format6.format(c4.getTime()));
					    
						 
					    
					    Calendar c1 = Calendar.getInstance();
					    c1.set(Calendar.MONTH, data01);
					    c1.set(Calendar.YEAR, data02);
					    c1.set(Calendar.DAY_OF_MONTH, data03);

					    Calendar c2 = Calendar.getInstance();
					    c2.set(Calendar.MONTH, data04);
					    c2.set(Calendar.YEAR, data05);
					    c2.set(Calendar.DAY_OF_MONTH, data06);
					    
					    long diferenca = c2.getTime().getTime() - c1.getTime().getTime();
					    if(diferenca <= 31){
							filmeMes = lista5.get(i);
							listaMes.add(filmeMes);
						}
						
						if(diferenca >= 365){
							filmeAno = lista5.get(i);
							listaAno.add(filmeAno);
						}
					i++;
				    }
				    session.setAttribute("listaMes", listaMes);
				    session.setAttribute("listaAno", listaAno);
				    session.setAttribute("lista", lista5);
					
			}
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
