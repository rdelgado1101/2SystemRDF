Imports System.ServiceModel
Partial Class _Default
    Inherits System.Web.UI.Page

    Private loMeses As New List(Of String) From {"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"}
    Protected Sub lnkBuscarDisponibilidad_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkBuscarDisponibilidad.Click
        Try
            Dim oEndPoint As New EndpointAddress("http://66.239.100.162/WCFGDSConnector/Service.svc?wsdl")
            Dim oBinding As New BasicHttpBinding
            Dim oSR As New SRConnector.ServiceClient(oBinding, oEndPoint)

            Dim strFechaSalida As String() = Request.Form("txtFechaSalida").Split("/")
            Dim strFechaRetorno As String() = Request.Form("txtFechaRetorno").Split("/")

            Dim oBERequest As New SRConnector.BERequest
            With oBERequest
                .ArrivalDate = strFechaRetorno(0) & loMeses(Integer.Parse(strFechaRetorno(1)) - 1)
                .DepartureDate = strFechaSalida(0) & loMeses(Integer.Parse(strFechaSalida(1)) - 1)
                .DepartureHour = ""
                .Destiny = Request.Form("txtDestino")
                .NumAdt = Request.Form("cboAdt")
                .NumAlternatives = "1"
                .NumChd = "0"
                .NumInf = "0"
                .oBEGDSCredential = New SRConnector.BEGDSCredential With {.SabreLogin = "4004", .SabrePassword = "AGENCIA1"}
                .oGDS = SRConnector.GDS.Sabre
                .Origin = Request.Form("txtOrigen")
            End With

            Dim loBEDisponibilidad As List(Of SRConnector.BEAvailabilityResponse) = oSR.retrieveFlightAvailability(oBERequest)

            If loBEDisponibilidad IsNot Nothing AndAlso loBEDisponibilidad.Count > 0 Then
                Session("Vuelos") = loBEDisponibilidad
                Response.Redirect("frmDisponibilidades.aspx")
            Else
                ClientScript.RegisterStartupScript(GetType(Page), "Mensaje", "<script language='javascript'>alert('No se obtuvieron resultados');</script>")
            End If

            Dim marrano As String = ""
        Catch ex As Exception
            ClientScript.RegisterStartupScript(GetType(Page), "Mensaje", "<script language='javascript'>alert('" & ex.Message & "');</script>")
        End Try
    End Sub
End Class