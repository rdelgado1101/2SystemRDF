Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BETarifas))>
Public Class BETarifas
    <DataMember()> Property TipoPasajero As String
    <DataMember()> Property Base As String
    <DataMember()> Property Impuestos As String
    <DataMember()> Property Total As String
End Class
