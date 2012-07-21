<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="css3/style.css" type="text/css">
    <link rel="stylesheet" href="nivo/nivo-slider.css" type="text/css" media="screen">

     <script src="js/jquery.minCAYHB5IC.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.8rc3.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8rc3.custom.min.js"></script>   
    <link href="css/redmond/jquery-ui-1.8rc3.custom.css" rel="stylesheet" type="text/css" />
        <script language="javascript" type="text/javascript">
            $(document).ready(function () {
                $("#txtFechaSalida").datepicker({
                    numberOfMonths: 2,
                    dateFormat: 'dd/mm/yy',
                    showOn: 'focus'
                });
                $("#txtFechaRetorno").datepicker({
                    numberOfMonths: 2,
                    dateFormat: 'dd/mm/yy',
                    showOn: 'focus'
                });
            });
    </script> 
</head>
<body>
    <form id="form1" runat="server">
<header id="site-header">
	<nav style="background:steelblue;">
     <div id="nav-wrap">	
       <ul id="menu-site" style="background:steelblue;">
         <li><a href="index.html">Inicio</a></li>
         <li><a href="frmEmisionTicket.aspx">Emitir Ticket</a></li>
         <li><a href="telefonos.html">Telefonos y Oficinas</a></li>
         <li><a href="help.html">Ayuda</a></li>
         <li><a href="contacto.html">Contactenos</a></li>
       </ul>
            
            <ul id="menu-user">
            	<li >
                	<a href="" class="ico chat">Chat</a>
               </li>
               
               <li>
                	<a href="feedback.html" class="ico feedback">Feedback</a>
               </li>
               <li class="language">
                	<a href="#" class="ico lang">Idioma</a>
                    <div class="langs">
                    	<a href="#">Espanol</a>
                        <a href="#">Ingles</a>
                        <a href="#">Portugues</a>
                    </div>
               </li>
       </ul>
      </div> 
    </nav>
    
    <div id="head-wrap">
    	<h1 id="site-name-logo">
        	marranomarranomarranomarranomarranomarrano
        </h1>
        
        <div id="site-connect">
                <div class="social">
                	<span>Mantente conectado</span>
                    <a href="#" class="face">Facebook</a>
                    <a href="#" class="you">Facebook</a>
                    <a href="#" class="twet">Twitter</a>
                </div>
        </div>
     </div>   
</header>

<!-- -->
<section id="wrap">
	
    
    <section id="book-flyer" class="clear">
    
    	<section id="book">
        	<ul id="tab">
            	<li class="active"><a href="#">Vuelos</a></li>
                <li><a href="#">Crucero</a></li>
                <li><a href="#">Hotel</a></li>
                <li><a href="#">Auto</a></li>
                <li><a href="#">Paquetes</a></li>
            </ul>
         
            <section class="Form">
            
            	<div class="field">
                	<div class="label opt">
                    	<input type="radio" class="chkrad">
                    	<span>Ida y Vuelta</span>
                    </div>
                    
                    <div class="label opt">
                    	<input type="radio" class="chkrad">
                    	<span>Solo Ida</span>
                    </div>
                    
                    <div class="label opt">
                    	<input type="radio" class="chkrad">
                    	<span>Multidestino</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                
                <div class="field">
                	<div class="label left fr">
                    	<span>From</span>
                        <input type="text" class="itxt" name="txtOrigen">
                    </div>
                    <div class="label left de">
                    	<span>Depart</span>
                        <input type="text" id="txtFechaSalida" class="itxt idate"  name="txtFechaSalida"/>
                    </div>
                    <div class="label left nospan">
                    	
                       <select class="itxt select an">
                       		<option>Anytime</option>
                       </select>
                    </div>
                    <div class="label left nospan fx">
                        <select class="itxt select fd">
                       		<option>Flexible Date</option>
                       </select>
                    </div>
                	<div class="clearfix"></div>
                </div>
                
                
                <div class="field">
                	<div class="label left fr">
                    	<span>To</span>
                        <input type="text" class="itxt" name="txtDestino">
                    </div>
                    <div class="label left de">
                    	<span>Return</span>
                        <input type="text" id="txtFechaRetorno"  class="itxt idate"  name="txtFechaRetorno"/>
                    </div>
                    <div class="label left nospan">
                    	
                       <select class="itxt select an">
                       		<option>Anytime</option>
                       </select>
                    </div>
                    <div class="label left nospan fx ">
                        <select class="itxt select fd">
                       		<option>Flexible Date</option>
                       </select>
                    </div>
                	<div class="clearfix"></div>
                </div>
                
                <div class="field">
                	<div class="label left ch">
                    	<span>Adultos</span>
                        <select class="itxt select" name="cboAdt">
                       		<option>1</option>
                       </select>
                    </div>
                    <div class="label left ch">
                    	<span>Niños</span>
                        <select class="itxt select">
                       		<option>0</option>
                       </select>
                    </div>
                    <div class="label left ch">
                    	<span>Infantes</span>
                       <select class="itxt select">
                       		<option>0</option>
                       </select>
                    </div>
                    <div class="label left nospan fx">
                        <select class="itxt select">
                       		<option>Negocio / Primera Clase</option>
                       </select>
                    </div>
                	<div class="clearfix"></div>
                </div>
                
                <div class="field">
                	
                    <div class="label left ae">
                    	<span>Aerolineas</span>
                        <select class="itxt select">
                       		<option>Negocio / Primera Clase</option>
                       </select>
                    </div>
                    
                     
                	<div class="clearfix"></div>
                </div>
                
					<div class="clearfix"></div>	
	                <asp:LinkButton ID="lnkBuscarDisponibilidad" runat="server" CssClass="btn flight">Buscar Vuelos</asp:LinkButton>
                    
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdateProgress runat="server">
                                      <ProgressTemplate>
                                          <div class="findLoad">
                    	<span class="txtLoad">Procesando Solicitud...</span>
                        </div>
                                      </ProgressTemplate>
                    </asp:UpdateProgress>
                    <div class="clearfix"></div>
                    
                    
            </section>
            
            
        	
        </section>
    	
        <section id="flyer">
        	<div id="slider" class="nivoSlider">
            	<a href="http://www.google.com"><img src="flyer/01.jpg" class="img" width="560" height="368"></a>
                <img src="flyer/02.jpg" class="img" width="560" height="368">
                <img src="flyer/03.jpg" class="img" width="560" height="368">
                <img src="flyer/04.jpg" class="img" width="560" height="368">
                <img src="flyer/05.jpg" class="img" width="560" height="368">
                <img src="flyer/06.jpg" class="img" width="560" height="368">
            </div>
      </section>
    
    
    	<!--- 
        Nota:
        De momento para visualizar en DW Luego eliminar
        
        -->
    	<div style="clear:both;"></div>
        
    </section>
    
    
    <!-- Paquetes o Viajes -->
    <section id="packs" class="clear" >
    
    		<article class="viaje desto">	
           	  <header class="viaje-destino">
                	<h2><a href="#">Canc&uacute;n Salidas Confirmadas</a></h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
            
            <article class="viaje destg">	
           	  <header class="viaje-destino">
                	<h2><a href="#">Canc&uacute;n Salidas Confirmadas</a></h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
            
            <article class="viaje destc">	
           	  <header class="viaje-destino">
                	<h2>Canc&uacute;n Salidas Confirmadas</h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
            
            <article class="viaje destr">	
           	  <header class="viaje-destino">
                	<h2>Canc&uacute;n Salidas Confirmadas</h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
            
            <article class="viaje destm">	
           	  <header class="viaje-destino">
                	<h2>Canc&uacute;n Salidas Confirmadas</h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
            
            <article class="viaje destl">	
           	  <header class="viaje-destino">
                	<h2>Canc&uacute;n Salidas Confirmadas</h2>
                </header>
                <span class="viaje-precio">
	             $ 888
                </span>
                <a href="#" class="ver-destino" title="Canc&uacute;n Salidas Confirmadas">ver detalle</a>
                <div class="circle"></div><div class="circle c2"></div>
            </article>
			<!--- 
            Nota:
            De momento para visualizar en DW Luego eliminar
            
            -->
      <div style="clear:both;"></div>
    </section>
    <!-- /end -->
    
    
    
    <div class="line"></div>
        
    <!-- Iconos Bancarios-->    
<section id="iconLink" class="clear">
    
    	<section class="visa-verified">
                <a href="http://www.visanet.com.pe" target="_blank" class="visa">
                    <img src="img/visa/visa.jpg" width="94" height="34" alt="Visa" />
                </a>
                <a href="http://www.visanet.com.pe/visa.htm" class="veri">
                    <img src="img/visa/verified.jpg" width="80" height="60" alt="Verified by Visa" />
                </a>
                <a href="http://www.visanet.com.pe/promovbv/bancos.html" target="_blank" class="afil">
                    <img src="img/visa/visabanco.jpg" width="112" height="55" alt="Afiliate" />
                </a>
                <span>
                    Esta tienda est&aacute; autorizada por Visa para realizar transacciones electr&oacute;nicas
                </span>
   		</section>
    
    <a class="icos int" href="http://images.costamaragencias.com/imagenes/eCommerceTest/interbank/index.htm" target="_blank">
		<img src="img/more/interbank.jpg" width="168" height="60" border="0">
	</a>
    
    <div class="icos sftp">
    	<a href="#" style="height:26px;">
    		<img src="img/more/safety_pay.jpg" width="142" height="26" border="0">
        </a>
        <a href="#">
			<img src="img/more/sp_funciona.jpg" width="142" height="34" border="0">
        </a>
	</div>

	<img  class="icos apa" src="img/more/apavi.jpg" width="60" height="60">
    
	<img  class="icos trp" src="img/more/travelport.jpg" width="150" height="60">
    
    <!--<a class="icos fb" href="http://www.facebook.com/people/Mikhuy-Kushi/1310162303" target="_blank">
		<img src="img/more/mickuy.jpg" width="80" height="60" border="0">
	</a>-->
    
    	<!--- 
        Nota:
        De momento para visualizar en DW Luego eliminar
        
        -->
    	<div style="clear:both;"></div>
  </section>
    
</section>
<!-- -->

<footer id="site-footer"  style="background:steelblue;">
	<nav  style="background:steelblue;">
    	<ul>
        	<li><a href="index.html">Inicio</a></li>
         <li><a href="quienes-somos.html">Quienes Somos</a></li>
         <li><a href="telefonos.html">Telefonos y Oficinas</a></li>
         <li><a href="help.html">Ayuda</a></li>
         <li><a href="contacto.html">Contactenos</a></li>
         </ul>
    </nav>
</footer>
    </form>
</body>
</html>
