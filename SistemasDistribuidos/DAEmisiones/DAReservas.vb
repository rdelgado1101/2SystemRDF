Imports BEEmisiones
Imports System.Data.Odbc
Imports System.Data.SqlClient
Public Class DAReservas

    Public Function insertarReservar(ByVal oBE As BEReserva) As Boolean
        Dim blnExito As Boolean = False
        Using cnx = New SqlConnection("Data Source=.;DataBase=Emisiones;Integrated Security=true;")
            cnx.Open()
            Dim cmd As New SqlCommand("sp_InsertBEItinerario", cnx)
            cmd.CommandType = CommandType.StoredProcedure

            For Each tramo In oBE.loBEItinerario
                cmd.Parameters.Clear()
                With cmd.Parameters
                    .Add("@CodigoReserva", SqlDbType.VarChar, 255).Value = oBE.CodigoReserva
                    .Add("@NumeroVuelo", SqlDbType.VarChar, 255).Value = tramo.NumeroVuelo
                    .Add("@Aerolinea", SqlDbType.VarChar, 255).Value = tramo.Aerolinea
                    .Add("@Origen", SqlDbType.VarChar, 255).Value = tramo.Origen
                    .Add("@Destino", SqlDbType.VarChar, 255).Value = tramo.Destino
                    .Add("@FechaSalida", SqlDbType.VarChar, 255).Value = tramo.FechaSalida
                    .Add("@FechaRetorno", SqlDbType.VarChar, 255).Value = tramo.FechaRetorno
                    .Add("@HoraSalida", SqlDbType.VarChar, 255).Value = tramo.HoraSalida
                    .Add("@HoraLlegada", SqlDbType.VarChar, 255).Value = tramo.HoraLlegada
                End With

                blnExito = cmd.ExecuteNonQuery()
                If blnExito = False Then Exit For
            Next
        End Using
        Return blnExito
    End Function

    Public Function retrieveItinerario(ByVal oBEReserva As BEReserva) As List(Of BEItinerario)
        Dim oReserva As New BEReserva
        Dim loBEItinerario As New List(Of BEItinerario)
        Dim oBEItinerario As BEItinerario
        Using cnx = New SqlConnection("Data Source=.;DataBase=Emisiones;Integrated Security=true;")
            cnx.Open()
            Dim cmd As New SqlCommand("sp_RetrieveBEItinerario", cnx)
            cmd.CommandType = CommandType.StoredProcedure

            With cmd.Parameters
                .Add("@CodigoReserva", SqlDbType.VarChar, 255).Value = oBEReserva.CodigoReserva
            End With

            Dim oReader As SqlDataReader = cmd.ExecuteReader

            If oReader.HasRows Then
                While oReader.Read
                    oBEItinerario = New BEItinerario
                    With oBEItinerario
                        .IDItinerario = oReader.GetInt32(0)
                        .NumeroVuelo = oReader.GetString(2)
                        .Aerolinea = oReader.GetString(3)
                        .Origen = oReader.GetString(4)
                        .Destino = oReader.GetString(5)
                        .FechaSalida = oReader.GetString(6)
                        .FechaRetorno = oReader.GetString(7)
                        .HoraSalida = oReader.GetString(8)
                        .HoraLlegada = oReader.GetString(9)
                    End With
                    loBEItinerario.Add(oBEItinerario)
                End While
            End If
        End Using

        Return loBEItinerario
    End Function
End Class
