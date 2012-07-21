<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmReservarVuelo.aspx.vb" Inherits="frmReservarVuelo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->
<link rel="stylesheet" type="text/css" href="css/ui/jquery-ui.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Gotham_Book.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">

        <div id="header">
            <div id="logo">
            	<img src="logoAgency.png"  />
            </div>
            
            <div id="nav-logoea">
                <div class="nav"><a href="#">Home</a> | <a href="#">FAQ</a></div>
                <div class="logoea"><img src="hyah.png" width="160" height="60" alt="" /></div>
            </div>
            <div class="fix"></div>
  		</div>
        
        <div id="wrap"> 
                    <div id="box-title-filter">
                          <div class="box-title">
                            <h2><span>Detalles de Reserva</span></h2>
                          </div>                          
                          <a href="#" id="but-filter" class="but-filter go-back">
                            <span>Volver a resultados</span>
                          </a>                          
                          <div class="fix"></div>                            
                    </div> 
          <div id="Result-list"> 
             	<div class="item nobg"> 
                	<div class="tax-fees"> 
                        <div class="fix"></div>
                  </div> 
                    <div class="item-aero">
            <div class="item">
                <div class="tax-fees">
                    <span class="taxfee">
                       	    ($<%= oBEDisponibilidad.lobePrice.BaseFare%> + $ <%= oBEDisponibilidad.lobePrice.Taxes%> Impuestos y Tasas) Los precios son cotizaciones en dólares
                     </span>                        
                    <div class="price-total">
                        <span>$ <%= oBEDisponibilidad.lobePrice.TotalFare%> </span>                  	
                    </div>
                    <div class="fix"></div>
                </div>
                    
                    <% For Each vuelo In oBEDisponibilidad.lobeFlight%>
                    <div class="item-aero outbund">
                    		<div class="out">
                            	<span>Itinerario</span>                                
                                <div class="fix"></div>
                            </div>                            
                            <div class="moredetail">
                                            		<!-- * Cabecera Destinos y Paradas etc *-->
                            <div class="desta">
                                <div class="destax">
                                    <span><strong>Desde:</strong><%= vuelo.Origin %></span>
                                    <span><strong>Hasta:</strong><%= vuelo.Destiny %></span>
                                    <div class="clear"></div>
                                </div> 
                                                        
                                <div class="destax mx">
                                    <span><strong class="par">N° Paradas:</strong> <%= vuelo.StopQuantity%> </span>
                                </div>  
                                <div class="fix"></div>                                      
                            </div>
                            <!-- * endDestinosParadas * -->
                                                    
                            <div class="packDatos">
                            <!-- *  Logo Aero * -->
                            <div class="aeroline">
                                    <div class="alogo">
                                    <img src="aerolineas/<%=vuelo.Airline %>.gif" width="86" height="40" alt="aerolineas/MULT.gif"/>
                                    <span class="nair"><%=vuelo.Airline %></span>
                                    <span><strong>N°:</strong><%=vuelo.FlightNumber %></span>
                                    </div>
                            </div>
                            <!-- endAero-->
                            <!-- * Datos * -->
                            <div class="date-time">
                                    <strong>Salida:</strong>
                                    <span><%= vuelo.DepartureHour %>:<%= vuelo.DepartureMinute %> hrs.  </span>
                                    <span><%= vuelo.DepartureDay %>/<%= vuelo.DepartureMonth%></span>
                                    <span><%= vuelo.Origin %></span>
                        </div>
                                                    
                            <div class="date-time">
                                    <strong>Llegada</strong>
                                    <span><%= vuelo.ArrivalHour%>:<%= vuelo.ArrivalMinute  %> hrs.</span>
                                    <span><%= vuelo.ArrivalDay%>/<%= vuelo.ArrivalMonth%></span>
                                    <span><%= vuelo.Destiny %></span>
                            </div>
                            <!-- * enDatos * -->
                    <div class="fix"></div>
                    </div>                 
                </div> 
                    </div>
                    <% next%>
                <div class="fix"></div>	
               </div> 
                    </div>
                       
                                
                <div class="fix"></div>	
               </div>
               <!-- Detalle Pago -->
               <div class="detallePago">
                    <h2 class="dtitulo"><span>1</span>Detalles del Precio</h2>

                    <ul class="eldetalle">
                        <li><span class="dtalle"><strong>Nombre del Art&iacute;culo</strong></span>
                        <span class="ddtalle"><strong>Total</strong></span>
                        <div class="clear"></div>
                        </li>
                                        
                        <li><span class="dtalle">Tarifa Aerea</span>
                        <span class="ddtalle"><%=oBEDisponibilidad.lobePrice.BaseFare  %></span>
                        <div class="clear"></div>
                                        
                        </li>
                        <li><span class="dtalle">Impuesto Aereo</span>
                        <span class="ddtalle "><%=oBEDisponibilidad.lobePrice.Taxes  %></span>

                                        
                        <div class="clear"></div>
                        </li>
                        <li><span class="dtalle"><strong>Total</strong></span></li>
                                        
                            <li><span class="dtalle">Tarifas en dólares americanos (USD) Total deuda:</span>
                            <span class="ddtalle ddre"><%=oBEDisponibilidad.lobePrice.TotalFare %></span>
                            <div class="clear"></div>
                            </li>                                    
                    </ul>
                </div>
                
                <div class="detallePago">
                           		<h2 class="dtitulo"><span>2</span>Ingresar Datos de Pasajero</h2>
                                
                                	<div class="nota-user">
                                    	<p><strong>IMPORTANTE:</strong> Todos los nombres deben representar el nombre completo como está escrito en una prueba legal de identificación. La única prueba legal de identificación aceptada es su Pasaporte, u otro documento de identificación emitido por el gobierno.
Los precios no están garantizados hasta el momento de emisión de su boleto.</p>
                                    </div>

                                	<!-- 
                                    	/*
                                        	Form1
                                        */
                                    -->
                                    <div class="masDetalle">
                                    	<h2>Datos Pasajero N° 1 (Adulto)</h2>
                                        
                                        
                                        <div class="dato">
                                        
                                            <span class="obli">Nombre</span>
											<input name="txtNombre" type="text" class="inp-text txt" />
                                        </div>
                                         
                                        
                                         <div class="dato">
                                            <span class="obli">Apellido</span>
											<input name="txtApellido" type="text" class="inp-text txt"  />
                                        </div>
                                         
                                        
                                        <div class="dato mgin">
                                        <span class="obli">Email</span>
											<input  name="txtEmail" type="text" class="inp-text txt"  />
                                        </div>
                                        
                                        <div class="dato mgin">
                                            <span class="obli">N° Documento</span>
											<input name="txtDocumento" type="text" class="inp-text txt"  />
                                        </div>
                                         
                                         
                                        
                                        <div class="dato fono">
                                      <span class="obli">Tel&eacute;fono</span>
                                      <input  name="txtTelefono" type="text" class="inp-text txt number"  />
                                    </div>                                         
                                        
                                   	 <div class="fix"></div> 	
                                    </div> 
                           </div> 
             
             
             	<div class="footer-book">                                         
                    <div class="air-book">
                    <asp:LinkButton ID="lnkReservar" runat="server" CssClass="but reserva">
                    <span>RESERVAR</span>
                    </asp:LinkButton>
                    </div>
                    <div class="fix"></div>                                                
                </div>                
                <!--end DivRsultList-->
          </div>
</div>
	<div id="footer">    	
    </div>
 </div>
    </form>
</body>
</html>
