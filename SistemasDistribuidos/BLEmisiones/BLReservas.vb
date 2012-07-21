Imports DAEmisiones
Imports BEEmisiones
Public Class BLReservas
    Public Function insertarReservar(ByVal oBE As BEReserva) As Boolean
        Dim oDA As New DAReservas
        Return oDA.insertarReservar(oBE)
    End Function
End Class
