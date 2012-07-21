
Partial Class frmConfirmacion
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        If Not Page.IsPostBack Then
            Dim strPNR As String = Request.QueryString("pnr")
            Session("pnr") = strPNR
            If Not String.IsNullOrWhiteSpace(strPNR) Then
                lblPNR.Text = strPNR
            End If
        End If
    End Sub 
End Class
