﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmDisponibilidades.aspx.vb" Inherits="frmDisponibilidades" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/ui/jquery-ui.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Gotham_Book.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
          

<div id="loader">
     <span class="texLoad">Estamos procesando su solicitud un momento por favor, gracias.</span>
</div>

<div id="wrapper">

        <div id="header">
            <div id="logo">
            	<img src="logoAgency.png"  />
            </div>
            
            <div id="nav-logoea">
                <div class="nav"><a href="Default.aspx">Home</a></div>
                <div class="logoea"><img src="css3/img/2SystemLogo.png" width="160" height="60" alt="eAgent" /></div>
            </div>
            <div class="fix"></div>
  		</div>
        
        <div id="wrap">
                  <div id="box-title-filter">
                          <div class="box-title">
                            <h2><span>Detalles de Reserva</span></h2>
                          </div> 
                          
        <div class="fix"></div> 
          </div> 
    <div id="Result-list">
        <%  For Each item In loBEDisponibilidad %>
            <div class="item">
                <div class="tax-fees">
                    <span class="taxfee">
                       	    (Impuestos y Tasas) Los precios son cotizaciones en dólares
                     </span>                        
                    <div class="price-total">
                        <span>$ <%= item.PrecioTotal%> </span>
                       	<a href="frmReservarVuelo.aspx?id=<%=item.loItinerario.First.IDItinerario %>" class="btn flight">SELECCIONAR</a>                        	
                    </div>
                    <div class="fix"></div>
                </div>
                    
                    <% For Each vuelo In item.loItinerario%>
                    <div class="item-aero outbund">
                    		<div class="out">
                            	<span>Itinerario</span>                                
                                <div class="fix"></div>
                            </div>                            
                            <div class="moredetail">
                                            		<!-- * Cabecera Destinos y Paradas etc *-->
                            <div class="desta">
                                <div class="destax">
                                    <span><strong>Desde:</strong><%= vuelo.Origen %></span>
                                    <span><strong>Hasta:</strong><%= vuelo.DEstino %></span>
                                    <div class="clear"></div>
                                </div> 
                                                        
                                <div class="destax mx">
                                    <span><strong class="par">N° Paradas:</strong>0</span>
                                </div>  
                                <div class="fix"></div>                                      
                            </div>
                            <!-- * endDestinosParadas * -->
                                                    
                            <div class="packDatos">
                            <!-- *  Logo Aero * -->
                            <div class="aeroline">
                                    <div class="alogo">
                                    <img src="aerolineas/<%=vuelo.Aerolinea %>.jpg" width="86" height="40" alt=""/>
                                    <span class="nair"><%=vuelo.Aerolinea %></span>
                                    <span><strong>N°:</strong><%=vuelo.NumeroVuelo  %></span>
                                    </div>
                            </div>
                            <!-- endAero-->
                            <!-- * Datos * -->
                            <div class="date-time">
                                    <strong>Salida:</strong>
                                    <span><%= vuelo.HoraSalida%> hrs.  </span>
                                    <span><%= vuelo.FechaSalida %></span>
                                    <span><%= vuelo.Origen  %></span>
                        </div>
                                                    
                            <div class="date-time">
                                    <strong>Llegada</strong>
                                    <span><%= vuelo.HoraLlegada %> hrs.</span>
                                    <span><%= vuelo.FechaRetorno %></span>
                                    <span><%= vuelo.Destino  %></span>
                            </div>
                            <!-- * enDatos * -->
                    <div class="fix"></div>
                    </div>                 
                </div>
                    </div>
                    <% next%>
                <div class="fix"></div>	
               </div>
        <%    Next%>
    </div>
</div>

	<div id="footer">
    	
    </div>  
</div>
    </form>
</body>
</html>