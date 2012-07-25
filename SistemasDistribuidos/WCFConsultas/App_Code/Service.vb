' NOTE: You can use the "Rename" command on the context menu to change the class name "Service" in code, svc and config file together.
Imports BLEmisiones
Imports BEEmisiones
Public Class Service
    Implements IService

    Public Function obtenerDisponibilidadVuelos(ByVal oBEConsulta As BEEmisiones.BEConsultaDispo) As List(Of BEEmisiones.BEDisponibilidades) Implements IService.obtenerDisponibilidadVuelos
        Dim loBEDisponibilidades As New List(Of BEDisponibilidades)
        Dim loBeItinerario As List(Of BEItinerario)
        Dim index As Integer = -1
        Dim rnd As New Random

        For intRuta = 0 To 8
            index = intRuta
            loBeItinerario = New List(Of BEItinerario)
            For i = 1 To 2
                If i = 1 Then
                    loBeItinerario.Add(New BEItinerario With {.Aerolinea = "LP", .Destino = oBEConsulta.Destino, .FechaRetorno = oBEConsulta.FechaRetorno,
                                                           .FechaSalida = oBEConsulta.FechaSalida, .HoraLlegada = "0550", .HoraSalida = "0445", .IDItinerario = i.ToString,
                                                           .NumeroVuelo = rnd.Next(1000, 9999), .Origen = oBEConsulta.Origen})
                Else
                    loBeItinerario.Add(New BEItinerario With {.Aerolinea = "LP", .Destino = oBEConsulta.Origen, .FechaRetorno = oBEConsulta.FechaRetorno,
                                                           .FechaSalida = oBEConsulta.FechaSalida, .HoraLlegada = "1235", .HoraSalida = "1150", .IDItinerario = i.ToString,
                                                           .NumeroVuelo = rnd.Next(1000, 9999), .Origen = oBEConsulta.Destino})
                End If
            Next
            loBEDisponibilidades.Add(New BEDisponibilidades With {.loItinerario = loBeItinerario, .PrecioTotal = (38.5 * (index + 1)).ToString("F2")})
        Next

        Return loBEDisponibilidades
    End Function

    Public Function obtenerDatosReserva(ByVal oBE As BEEmisiones.BEReserva) As List(Of BEItinerario) Implements IService.obtenerDatosReserva
        Dim obl As New BLReservas
        Return obl.retrieveItinerario(oBE)
    End Function
End Class
