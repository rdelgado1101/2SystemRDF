package Service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Bean.Pasajero;

public class PasajeroServiceTest {

	//Pasajero de Priueba es 
	PasajeroService service;
	
	public PasajeroServiceTest(){
	  ApplicationContext fabrica = new ClassPathXmlApplicationContext("/fabrica-test.xml");
	  
	  service = fabrica.getBean("pasajeroService", PasajeroService.class);
	  
	}
	
	@Test
	public void consultarPasajeroPorCodigo(){
	Pasajero pasajero = service.consultarPasajero("44091088");
	assertNotNull(pasajero);
	}
	
	
}
