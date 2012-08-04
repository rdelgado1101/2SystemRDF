package pe.edu.upc.dsd.infocorpt.service;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import pe.edu.upc.dsd.infocorp.model.Cliente;

import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
public class ClienteServiceIntegrationTest {

	@Autowired
	private RestTemplate restTemplate;
	
	@Test
	public void testShowBook(){
		
		String response = restTemplate
				.getForObject(
						"http://localhost:8085/infocorp/services/clientes/{dni}",
						String.class, "12345678");
		
		Gson gson = new Gson();
		Cliente cliente = gson.fromJson(response, Cliente.class);
		
		System.out.println(response);
		//Assert.assertNotNull(response);
		Assert.assertEquals("Jorge Apolaya", cliente.getNombres());
	}
	
}
