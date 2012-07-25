Imports System.ServiceModel
Imports BEEmisiones
Imports BLEmisiones
Partial Class frmReservarVuelo
    Inherits System.Web.UI.Page

    Public oBEDisponibilidad As SRConnector.BEDisponibilidades
    Private strIDVuelo As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            strIDVuelo = Request.QueryString("id")
            Dim loBEDisponibilidades As List(Of SRConnector.BEDisponibilidades) = Session("Vuelos")
            Dim oPred As New Predicate(Of SRConnector.BEDisponibilidades)(AddressOf getVuelo)

            oBEDisponibilidad = loBEDisponibilidades.Find(oPred)
            Session("seleccion") = oBEDisponibilidad
        End If
    End Sub

    Private Function getVuelo(ByVal oVuelo As SRConnector.BEDisponibilidades) As Boolean
        Return oVuelo.loItinerario.First.IDItinerario = strIDVuelo
    End Function

    Protected Sub lnkReservar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkReservar.Click

        Dim oSRRegistro As New SRRegistro.ServiceClient

        oBEDisponibilidad = Session("seleccion")

        Dim loItinerario As New List(Of SRRegistro.BEItinerario)

        For Each one In oBEDisponibilidad.loItinerario
            loItinerario.Add(New SRRegistro.BEItinerario With {.Aerolinea = one.Aerolinea,
                                                    .FechaRetorno = one.FechaRetorno,
                                                    .HoraSalida = one.HoraSalida,
                                                    .HoraLlegada = one.HoraLlegada,
                                                    .NumeroVuelo = one.NumeroVuelo,
                                                    .Origen = one.Origen,
                                                    .Destino = one.Destino,
                                                    .FechaSalida = one.FechaSalida})
        Next
         
        Dim oBEReserva As New SRRegistro.BEReserva

        Dim strPNR As String = ""
        Dim rnd As New Random
        For i = 1 To 6
            If i Mod 2 = 0 Then
                strPNR += Chr(rnd.Next(65, 90))
            Else
                strPNR += rnd.Next(0, 9).ToString
            End If
        Next

        oBEReserva.CodigoReserva = strPNR
        oBEReserva.loBEItinerario = loItinerario
        Dim oBEPNrREsult As Boolean = oSRRegistro.registrarReserva(oBEReserva)
        If oBEPNrREsult Then
            Response.Redirect("frmConfirmacion.aspx?pnr=" & oBEReserva.CodigoReserva)
        End If
    End Sub
End Class
