Imports System.ServiceModel
Imports BEEmisiones
Imports BLEmisiones
Partial Class frmReservarVuelo
    Inherits System.Web.UI.Page

    Public oBEDisponibilidad As SRConnector.BEAvailabilityResponse
    Private strIDVuelo As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            strIDVuelo = Request.QueryString("id")
            Dim loBEDisponibilidades As List(Of SRConnector.BEAvailabilityResponse) = Session("Vuelos")
            Dim oPred As New Predicate(Of SRConnector.BEAvailabilityResponse)(AddressOf getVuelo)

            oBEDisponibilidad = loBEDisponibilidades.Find(oPred)
            Session("seleccion") = oBEDisponibilidad
        End If
    End Sub

    Private Function getVuelo(ByVal oVuelo As SRConnector.BEAvailabilityResponse) As Boolean
        Return oVuelo.lobeFlight.First.ID = strIDVuelo
    End Function

    Protected Sub lnkReservar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkReservar.Click
        oBEDisponibilidad = Session("seleccion")
  
        Dim loItinerario As New List(Of BEItinerario)

        For Each one In oBEDisponibilidad.lobeFlight
            loItinerario.Add(New BEItinerario With {.Aerolinea = one.Airline,
                                                    .FechaRetorno = "2012-" & one.ArrivalMonth.Split("T")(0),
                                                    .HoraSalida = one.ArrivalMonth.Split("T")(1),
                                                    .HoraLlegada = one.DepartureMonth.Split("T")(1),
                                                    .NumeroVuelo = one.FlightNumber,
                                                    .Origen = one.Origin,
                                                    .Destino = one.Destiny,
                                                    .FechaSalida = "2012-" & one.DepartureMonth.Split("T")(0)})
        Next

        Dim oBL As New BLReservas

        Dim oBEReserva As New BEReserva


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
        Dim oBEPNrREsult As Boolean = oBL.insertarReservar(oBEReserva)
        If oBEPNrREsult Then
            Response.Redirect("frmConfirmacion.aspx?pnr=" & oBEReserva.CodigoReserva)
        End If
    End Sub
End Class
