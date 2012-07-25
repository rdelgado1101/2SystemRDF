Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BEPasajero))>
Public Class BEPasajero
    <DataMember()> Property ID As String 'seria de la base de datos que tenemos para poder validar la linea de credito
    <DataMember()> Property Tipo As String
    <DataMember()> Property Nombre As String
    <DataMember()> Property Apellido As String
    <DataMember()> Property Documento As String
    <DataMember()> Property NumeroTicket As String
    <DataMember()> Property LineaCredito As Double
    <DataMember()> Property Tarifa As BETarifas
End Class
