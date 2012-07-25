Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BEItinerario))>
Public Class BEItinerario
    <DataMember()> Property IDItinerario As Integer
    <DataMember()> Property NumeroVuelo As String
    <DataMember()> Property Aerolinea As String
    <DataMember()> Property Origen As String
    <DataMember()> Property Destino As String
    <DataMember()> Property FechaSalida As String
    <DataMember()> Property FechaRetorno As String
    <DataMember()> Property HoraSalida As String
    <DataMember()> Property HoraLlegada As String
End Class
