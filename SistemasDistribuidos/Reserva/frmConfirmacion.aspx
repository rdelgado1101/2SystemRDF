<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmConfirmacion.aspx.vb" Inherits="frmConfirmacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/print.css" media="print" />
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
                <div class="logoea"><img src="/img-source/logoea.png" width="160" height="60" alt="" /></div>
            </div>
            <div class="fix"></div>
  		</div>
        
        <div id="wrap">
                <!--
                     /* 
                        Box Filter
                     */
                 -->
                  <div id="box-title-filter">
                          <div class="box-title">
                            <h2>Su Codigo de Reserva(PNR): <asp:Label ID="lblPNR" runat="server" /></h2>
                          </div>
                          
                          <a href="frmEmisionTicket.aspx"  class="but-filter print">
                            	<span>Emitir Ticket</span>
                          </a>
                          
                          <div class="fix"></div> 
                            
          </div>

         
</div>



	<div id="footer">
    	
    </div>



</div>
    </form>
</body>
</html>
