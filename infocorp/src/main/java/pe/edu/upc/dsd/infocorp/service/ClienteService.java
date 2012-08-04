package pe.edu.upc.dsd.infocorp.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upc.dsd.infocorp.dao.ClienteDao;
import pe.edu.upc.dsd.infocorp.model.Cliente;

import com.google.gson.Gson;

@Path("/clientes")
@Service
public class ClienteService {
	
	@Autowired
	private ClienteDao clienteDao;

	@GET
	@Path("/{dni}")
	@Produces("text/plain")
	@Consumes("text/plain")
	public Response find(@PathParam("dni") String dni){
		
		Cliente cliente;
		Gson gson = new Gson();
		
		System.out.println("dni: " + dni);
		
		cliente = clienteDao.find(dni);
		if (cliente == null) {
			return Response.status(Status.INTERNAL_SERVER_ERROR)
					.entity("El cliente no existe").build();
		}
		
		return Response.ok(gson.toJson(cliente)).build();
	}
	
}
