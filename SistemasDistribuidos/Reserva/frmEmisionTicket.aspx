<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmEmisionTicket.aspx.vb" Inherits="frmEmisionTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/ie.css" /><![endif]-->

<style type="text/css" media="screen">
  .chk .inp-chk{
    float:left;
    margin:1px 6px 0 0;
  }
  .chk.min{width:80px;}
  .masDetalle .chk{height:20px;}
  .middle{
    float:left;
    width:395px;
    margin-right:9px;
  }

  .middle .masDetalle{ width:auto; border:0;}
  .lst{margin-right:0;}

  .regula{
    height:200px;
    width:300px;
  }
  
</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
<div id="header">
  <div id="logo"></div>
  <div id="nav-logoea">
  <div class="nav"><a href="#">Home</a> </div>
  <div class="logoea"></div>
  </div>
<div class="fix"></div>
</div>
        
<div id="wrap">
  <!-- Titulo -->
  <div id="box-title-filter">
    <div class="box-title">
      <h2><span>Emisiones</span></h2>
    </div>
    
    <a href="Default.aspx" id="but-filter" class="but-filter go-back">
      <span>Volver</span>
    </a>
    
    <div class="fix"></div>
  </div>

<!-- /* Result */ -->
             
<div id="Result-list">
	
 <!-- gds -->
<div class="detallePago middle">
		<h2 class="dtitulo"><span>></span>GDS</h2>
  <div class="masDetalle">
    <div class="dato">
    <span class="">Código Reserva:</span>
    <asp:TextBox ID="txtPNRLocator" runat="server" Cssclass="inp-text txt" />
    </div>

    <div class="fix"></div>
     
      <asp:Button ID="btnCargarPNR" Text="Cargar Reserva" runat="server" BackColor="SteelBlue" ForeColor="White"  Width="90px" Height="30px" />
  </div>
</div>

 <!-- Datos de la Cuenta -->
<div class="detallePago middle lst">
  <h2 class="dtitulo"><span>></span>Datos del Cliente</h2>
  <div class="masDetalle">
    <div class="dato">
     <asp:Label ID="lblAccountName" runat="server" type="text" class="inp-text txt big" Width="200px" /> 
     <asp:Label ID="lblDocument" runat="server" type="text" class="inp-text txt big"  Width="200px"/>
     <asp:Label ID="lblDeuda" runat="server" type="text" class="inp-text txt big"  Width="200px"/> 
     <asp:Label ID="lblCreditLimit" runat="server" type="text" class="inp-text txt big" Width="200px" /> 
    </div>
  </div>

</div>

<div class="fix"></div>

 <!-- Itinerario -->
<div class="detallePago">
  <h2 class="dtitulo"><span>></span>Itinerario</h2>

  <asp:Label ID="lblItinerario" runat="server" />

</div>

 <!-- Pasajeros -->
<div class="detallePago middle">
  <h2 class="dtitulo"><span>></span>Pasajeros</h2>

  <!-- Aca tabla -->
  <asp:Label ID="lblPasajeros" runat="server" />
</div>

 <!-- Formas de pago -->
<div class="detallePago  middle lst">
  <h2 class="dtitulo"><span>></span>Formas de Pago</h2>
  <div class="masDetalle">
  <div class="dato">
    <span class="wise">Tipo</span>
    <select class="inp-text sele big">
      <option>Seleccione</option>
      <option>Cash</option>
      <option>Tarjeta Credito</option>
    </select>
  </div>

  <div class="dato ">
    <span class="wise">Datos CC:</span>
    <select class="inp-text sele big">
      <option>Seleccione</option>
    </select>
  </div>

  <div class="dato ">
     <span class="wise">Nro Tarjeta :</span>
    <input type="text" class="inp-text txt " />
  </div>

   <div class="dato ">
     <span class="wise">Fecha Expitarción :</span>
    <input type="text" class="inp-text txt " />
  </div>

  <div class="fix"></div>

</div>
</div>
<div class="fix"></div>

 <!-- Regulaciones -->
<div class="detallePago middle">
  <h2 class="dtitulo"><span>></span>Regulaciones</h2>
    <asp:TextBox ID="txtRegulaciones" Width="150px" runat="server" />

</div>

 <!-- Otros -->
<div class="detallePago middle lst">
<h2 class="dtitulo"><span>></span>Otros</h2>
<div class="masDetalle">
  <div class="dato">
    <span class="">Comision IATA:</span>
    <input type="text" class="inp-text txt" value="1" />
  </div>

  <div class="fix"></div>
  <div class="dato">
    <span class="">Email Inv.:</span>
    <input type="text" class="inp-text txt" />
  </div>
  <div class="fix"></div>

  <asp:Button ID="btnEmitir" Text="Emitir Ticket" runat="server" BackColor="SteelBlue" ForeColor="White" Width="90px" Height="30px" />
</div>

</div>
<div class="fix"></div>

    <!--end DivRsultList-->
</div>

</div>
<div id="footer"></div>



</div>
    </form>
</body>
</html>
