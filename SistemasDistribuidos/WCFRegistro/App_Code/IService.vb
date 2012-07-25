' NOTE: You can use the "Rename" command on the context menu to change the interface name "IService" in both code and config file together.
<ServiceContract()>
Public Interface IService

    <OperationContract()>
    Function registrarReserva(ByVal oBE As BEEmisiones.BEReserva) As Boolean

    <OperationContract()>
    Function registrarTickets(ByVal oBEReserva As BEEmisiones.BEReserva) As String


End Interface 
