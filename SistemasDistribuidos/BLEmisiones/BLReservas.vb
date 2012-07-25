Imports DAEmisiones
Imports BEEmisiones
Public Class BLReservas
    Public Function insertarReservar(ByVal oBE As BEReserva) As Boolean
        Dim oDA As New DAReservas
        Return oDA.insertarReservar(oBE)
    End Function


    Public Function retrieveItinerario(ByVal oBEReserva As BEReserva) As List(Of BEItinerario)
        Dim oDA As New DAReservas
        Return oDA.retrieveItinerario(oBEReserva)
    End Function
End Class
