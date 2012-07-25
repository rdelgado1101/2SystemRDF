Imports System.Runtime.Serialization
<DataContract(), KnownType(GetType(BEReserva))>
Public Class BEReserva
    <DataMember()> Property CodigoReserva As String
    <DataMember()> Property loBEItinerario As List(Of BEItinerario)
    <DataMember()> Property Pasajero As BEPasajero
End Class
