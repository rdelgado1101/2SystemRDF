' NOTE: You can use the "Rename" command on the context menu to change the interface name "IService" in both code and config file together.
Imports BEEmisiones
<ServiceContract()>
Public Interface IService

    <OperationContract()>
    Function obtenerDisponibilidadVuelos(ByVal oBEConsulta As BEConsultaDispo) As List(Of BEDisponibilidades)

    <OperationContract()>
    Function obtenerDatosReserva(ByVal oBE As BEReserva) As List(Of BEItinerario)

End Interface