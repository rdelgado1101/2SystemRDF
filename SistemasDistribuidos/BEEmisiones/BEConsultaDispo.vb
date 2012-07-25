Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BEConsultaDispo))>
Public Class BEConsultaDispo
    <DataMember()> Property Origen As String
    <DataMember()> Property Destino As String
    <DataMember()> Property FechaSalida As String
    <DataMember()> Property FechaRetorno As String
    <DataMember()> Property Adultos As Integer
End Class
