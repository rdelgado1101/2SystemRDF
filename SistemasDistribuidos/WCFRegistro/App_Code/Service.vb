' NOTE: You can use the "Rename" command on the context menu to change the class name "Service" in code, svc and config file together.
Public Class Service
    Implements IService


    Public Function registrarReserva(ByVal oBE As BEEmisiones.BEReserva) As Boolean Implements IService.registrarReserva
        Dim obl As New BLEmisiones.BLReservas
        Return obl.insertarReservar(oBE)
    End Function

    Public Function registrarTickets(ByVal oBEReserva As BEEmisiones.BEReserva) As String Implements IService.registrarTickets
        Dim rnd As New Random
        Return "184" - rnd.Next(1999999, 9999999).ToString
    End Function
End Class
