Imports System.ServiceModel

Partial Class frmEmisionTicket
    Inherits System.Web.UI.Page

    Protected Sub btnCargarPNR_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCargarPNR.Click
        Dim oSR As New SRConnector.ServiceClient
        Dim loItinerario As List(Of SRConnector.BEItinerario) = oSR.obtenerDatosReserva(New SRConnector.BEReserva With {.CodigoReserva = txtPNRLocator.Text})

        If loItinerario IsNot Nothing AndAlso loItinerario.Count > 0 Then
            lblAccountName.Text = "Raul delgado"
            lblCreditLimit.Text = "0.00"
            lblDeuda.Text = "0.00"
            lblDocument.Text = "123123"

            Dim strItinerario As String = ""

            For Each item In loItinerario
                With item
                    strItinerario += String.Format("{0}{1}{2}{1}{3}{1}{4}{1}{5}{1}{6}{7}", .NumeroVuelo, vbTab, .Aerolinea, .FechaSalida, .FechaRetorno, .Origen, .Destino, "<br/>")
                End With
            Next

            Dim strPasajeros As String = String.Format("{0}{1}{2}{1}{3}{1}{4}{5}", "1.1", vbTab, "ADT", "delgado/raul", "100.00", "<br/>")

            lblItinerario.Text = strItinerario
            lblPasajeros.Text = strPasajeros
        Else
            txtRegulaciones.Text = "No hay registros para el codigo de reserva ingresado."
        End If
    End Sub

    Protected Sub btnEmitir_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEmitir.Click
        Dim oSR As New SRRegistro.ServiceClient

        txtRegulaciones.Text = "Ticket Generado : " & oSR.registrarTickets(New SRRegistro.BEReserva With {.CodigoReserva = txtPNRLocator.Text})
    End Sub
End Class
