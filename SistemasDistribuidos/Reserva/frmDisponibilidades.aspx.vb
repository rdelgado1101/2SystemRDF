
Partial Class frmDisponibilidades
    Inherits System.Web.UI.Page

    Public loBEDisponibilidad As List(Of SRConnector.BEAvailabilityResponse)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            loBEDisponibilidad = Session("Vuelos")
        End If
    End Sub
End Class
