Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BECliente))>
Public Class BECliente
    <DataMember()> Property id As Integer
    <DataMember()> Property nombre As String
    <DataMember()> Property apellido As String
    <DataMember()> Property email As String
    <DataMember()> Property telefono As String
    <DataMember()> Property documento As String
    <DataMember()> Property codigoReserva As String
End Class
