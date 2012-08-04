package pe.edu.upc.dsd.infocorp.model;

public class Cliente {

	private String dni;
	private String nombres;
	private String situacion;
	
	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getDni() {
		return dni;
	}

	public void setDNI(String dni) {
		this.dni = dni;
	}

	public String getSituacion() {
		return situacion;
	}

	public void setSituacion(String situacion) {
		this.situacion = situacion;
	}	
}
