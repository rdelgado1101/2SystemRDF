Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BEDisponibilidades))>
Public Class BEDisponibilidades
    <DataMember()> Property loItinerario As List(Of BEItinerario)
    <DataMember()> Property PrecioTotal As String
End Class
