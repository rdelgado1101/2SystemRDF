package pe.edu.upc.dsd.infocorp.dao;

import java.util.List;

import pe.edu.upc.dsd.infocorp.model.*;

public interface ClienteDao {
	
	Cliente find(String dni);
		
	List<Cliente> findAll();
	
	void save(Cliente cliente);
	
	void update(Cliente cliente);

	void delete(Cliente cliente);


}
