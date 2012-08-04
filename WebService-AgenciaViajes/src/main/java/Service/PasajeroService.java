package Service;

import javax.jws.WebParam;
import javax.jws.WebService;

import Bean.Pasajero;


@WebService
public interface PasajeroService {

	public Pasajero consultarPasajero(@WebParam(name="codigoPasajero") String codigo);
	
}
