package pe.edu.upc.dsd.infocorp.dao.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;
import org.springframework.stereotype.Repository;

import pe.edu.upc.dsd.infocorp.dao.ClienteDao;
import pe.edu.upc.dsd.infocorp.model.Cliente;

@Repository
public class ClienteDaoJdbc extends SimpleJdbcDaoSupport implements ClienteDao {
	
	@Autowired
	public ClienteDaoJdbc(DataSource dataSource) {
		setDataSource(dataSource);
	}

	@Override
	public Cliente find(String dni) {
		
		try {
			return getSimpleJdbcTemplate()
					.queryForObject(
							"SELECT dni, nombres, situacion FROM clientes WHERE dni=?",
							new BeanPropertyRowMapper<Cliente>(Cliente.class),
							dni);
		} catch (EmptyResultDataAccessException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	@Override
	public List<Cliente> findAll() {

		try {
			return getSimpleJdbcTemplate().query(
					"SELECT dni, nombres, situacion FROM clientes",
					new BeanPropertyRowMapper<Cliente>(Cliente.class));
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		
	}

	@Override
	public void save(Cliente cliente) {
		getSimpleJdbcTemplate()
		.update("insert into clientes(dni,nombres,situacion)  values (?, ?, ?)",
				cliente.getDni(),cliente.getNombres(),cliente.getSituacion());
		
	}
	
	@Override
	public void update(Cliente cliente) {
		getSimpleJdbcTemplate().update(
				"update clientes set nombres=?, situacion=? where dni=?",
				cliente.getNombres(), cliente.getSituacion(), cliente.getDni());
	}

	@Override
	public void delete(Cliente cliente) {
		getSimpleJdbcTemplate().update("delete from clientes where dni=?",
				cliente.getDni());
	}

}
