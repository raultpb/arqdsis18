package br.usjt.ads.arqdes.model.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.usjt.ads.arqdes.model.entity.Filme;

public class FilmeDAO {

	public int inserirFilme(Filme filme) throws IOException {
		int id = -1;
		String sql = "insert into Filme (titulo, descricao, diretor, posterpath, "
				+ "popularidade, data_lancamento, id_genero) values (?,?,?,?,?,?,?)";

		try(Connection conn = ConnectionFactory.getConnection();
				PreparedStatement pst = conn.prepareStatement(sql);){

			pst.setString(1, filme.getTitulo());
			pst.setString(2, filme.getDescricao());
			pst.setString(3, filme.getDiretor());
			pst.setString(4, filme.getPosterPath());
			pst.setDouble(5, filme.getPopularidade());
			pst.setDate(6, new java.sql.Date(filme.getDataLancamento().getTime()));
			pst.setInt(7, filme.getGenero().getId());			
			pst.execute();

			//obter o id criado
			String query = "select LAST_INSERT_ID()";
			try(PreparedStatement pst1 = conn.prepareStatement(query);
					ResultSet rs = pst1.executeQuery();){

				if (rs.next()) {
					id = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}
		return id;
	}

	public Filme buscarFilme(int id) throws IOException {
		Filme filme = null;
		String sql = "select id, titulo, descricao, popularidade, data_lancamento, posterpath, diretor from filme where id=?";

		try (Connection conn = ConnectionFactory.getConnection(); 
				PreparedStatement pst = conn.prepareStatement(sql);) {

			pst.setInt(1, id);
			try (ResultSet rs = pst.executeQuery();) {

				if (rs.next()) {
					filme = new Filme();
					filme.setId(id);
					filme.setTitulo(rs.getString("titulo"));
					filme.setDescricao(rs.getString("descricao"));
					filme.setPopularidade(rs.getDouble("popularidade"));
					filme.setDataLancamento(rs.getDate("data_lancamento"));
					filme.setPosterPath(rs.getString("posterpath"));
					filme.setDiretor(rs.getString("diretor"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}
		return filme;
	}

	public void atualizar(Filme filme) throws SQLException, IOException{
		String sqlUpdate = "update filme set titulo=?, descricao=?, diretor=?, posterpath=?, popularidade=?, data_lancamento=? where id_genero=?";

		try(Connection conn = ConnectionFactory.getConnection(); PreparedStatement pst = conn.prepareStatement(sqlUpdate)){
			pst.setString(1, filme.getTitulo());
			pst.setString(2, filme.getDescricao());
			pst.setString(3, filme.getDiretor());
			pst.setString(4, filme.getPosterPath());
			pst.setDouble(5, filme.getPopularidade());
			pst.setDate(6, new java.sql.Date(filme.getDataLancamento().getTime()));
			pst.setInt(7, filme.getId());
			pst.execute();
		}
	}

	public void excluir(int id) throws IOException, NullPointerException {
		String sqlDelete = "DELETE FROM filme WHERE id_genero = ?";
		Connection conn = ConnectionFactory.getConnection();
		try (PreparedStatement pst = conn.prepareStatement(sqlDelete);) {
			pst.setInt(1, id);
			pst.execute();
		} catch (Exception e) {
			e.printStackTrace();
			throw new IOException();
		}
	}

	public ArrayList<Filme> listarFilme() throws IOException{
		Filme filme;
		ArrayList<Filme> lista = new ArrayList<>();

		String sqlListar = "select id_genero, titulo, descricao, diretor, posterpath, popularidade, data_lancamento from filme";
		try(Connection conn = ConnectionFactory.getConnection(); 
				PreparedStatement pst = conn.prepareStatement(sqlListar) ){
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					filme = new Filme();
					filme.setId(rs.getInt("id"));
					filme.setTitulo(rs.getString("titulo"));
					filme.setDescricao(rs.getString("descricao"));
					filme.setDiretor(rs.getString("diretor"));
					filme.setPosterPath(rs.getString("posterpath"));
					filme.setPopularidade(rs.getDouble("popularidade"));
					filme.setDataLancamento(rs.getDate("data_lancamento"));

					lista.add(filme);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		return lista;
	}

	public ArrayList<Filme> listarFilme(int id) throws IOException{
		Filme filme;
		ArrayList<Filme> lista = new ArrayList<>();

		String sqlListar = "select id_genero, titulo, descricao, diretor, posterpath, popularidade, data_lancamento from filme where id_genero=?";
		try(Connection conn = ConnectionFactory.getConnection(); 
				PreparedStatement pst = conn.prepareStatement(sqlListar) ){
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					filme = new Filme();
					filme.setId(rs.getInt("id"));
					filme.setTitulo(rs.getString("titulo"));
					filme.setDescricao(rs.getString("descricao"));
					filme.setDiretor(rs.getString("diretor"));
					filme.setPosterPath(rs.getString("posterpath"));
					filme.setPopularidade(rs.getDouble("popularidade"));
					filme.setDataLancamento(rs.getDate("data_lancamento"));

					lista.add(filme);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e ) {
			e.printStackTrace();
		}
		return lista;
	}
}
