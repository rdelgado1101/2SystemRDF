Imports System.ServiceModel
Partial Class _Default
    Inherits System.Web.UI.Page

    Private loMeses As New List(Of String) From {"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"}
    Protected Sub lnkBuscarDisponibilidad_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkBuscarDisponibilidad.Click
        Try
            Dim oSR As New SRConnector.ServiceClient()

            Dim strFechaSalida As String() = Request.Form("txtFechaSalida").Split("/")
            Dim strFechaRetorno As String() = Request.Form("txtFechaRetorno").Split("/")

            Dim oBERequest As New SRConnector.BEConsultaDispo
            With oBERequest
                .FechaRetorno = strFechaRetorno(0) & loMeses(Integer.Parse(strFechaRetorno(1)) - 1)
                .FechaSalida = strFechaSalida(0) & loMeses(Integer.Parse(strFechaSalida(1)) - 1)
                .Destino = Request.Form("txtDestino")
                .Adultos = Request.Form("cboAdt")
                .Origen = Request.Form("txtOrigen")
            End With

            Dim loBEDisponibilidad As List(Of SRConnector.BEDisponibilidades) = oSR.obtenerDisponibilidadVuelos(oBERequest)

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