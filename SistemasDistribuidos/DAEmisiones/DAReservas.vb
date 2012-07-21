Imports BEEmisiones
Imports System.Data.Odbc
Public Class DAReservas

    Public Function insertarReservar(ByVal oBE As BEReserva) As Boolean
        Using conexionBD = New OdbcConnection("dsn=CallInfo;uid=cmtreports;pwd=SanIsidro#;")

        End Using
        Return True
    End Function
End Class
