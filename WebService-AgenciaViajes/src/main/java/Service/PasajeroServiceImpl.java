package Service;

import java.util.ArrayList;
import java.util.List;
import javax.jws.WebService;
import Bean.Pasajero;


@WebService(endpointInterface="Service.PasajeroService")
public class PasajeroServiceImpl implements PasajeroService {

	
	private List<Pasajero> Pasajero;	
	
	public PasajeroServiceImpl(){
	Pasajero = obtenerPasajero();	
	}
		
	@Override
	public Pasajero consultarPasajero(String codigoPas) {

		for (Pasajero cliente : Pasajero){
			if(cliente.getDocumentoIdentidad().equals(codigoPas)){
				return cliente;
			}
		}		
        return null;			
	}
	
	private List<Bean.Pasajero> obtenerPasajero() {
       
	    List<Pasajero> PasajerosPrueba = new ArrayList<Pasajero>();
		
        Pasajero Pasajero1 = new Pasajero();
        Pasajero1.setCodigo("01");
        Pasajero1.setNombre("Carolina");
        Pasajero1.setApellidoPaterno("Romero");
        Pasajero1.setApellidoMaterno("Pizarro");
        Pasajero1.setDireccion("Alameda los misioneros 664");
        Pasajero1.setDocumentoIdentidad("1015987716");
        Pasajero1.setTelefono("5752045");
        Pasajero1.setTipoPersona("N");
		
        Pasajero Pasajero2 = new Pasajero();
        Pasajero2.setCodigo("02");
        Pasajero2.setNombre("Andres");
        Pasajero2.setApellidoPaterno("Deza");
        Pasajero2.setApellidoMaterno("Villacorta");
        Pasajero2.setDireccion("Psje. Octavio Bernal 120 dpto F");
        Pasajero2.setDocumentoIdentidad("44091088");
        Pasajero2.setTelefono("4602787");
        Pasajero2.setTipoPersona("N");        
        
        Pasajero Pasajero3 = new Pasajero();
        Pasajero3.setCodigo("03");
        Pasajero3.setNombre("Pedro");
        Pasajero3.setApellidoPaterno("Torres");
        Pasajero3.setApellidoMaterno("Diez");
        Pasajero3.setDireccion("Av. La Molina 432");
        Pasajero3.setDocumentoIdentidad("1044091088");
        Pasajero3.setTelefono("4339812");
        Pasajero3.setTipoPersona("N");
        
        
        PasajerosPrueba.add(Pasajero1);
        PasajerosPrueba.add(Pasajero2);
        PasajerosPrueba.add(Pasajero3);
        
		return PasajerosPrueba;
	}

}
