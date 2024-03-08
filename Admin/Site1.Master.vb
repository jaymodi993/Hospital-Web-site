Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            u_name.Text = Session("user")
            uimg.Src = Session("upic")
        Else
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class