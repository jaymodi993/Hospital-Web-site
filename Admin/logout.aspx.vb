Public Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Session("u_name") = ""
            Session.Clear()
            Session.Abandon()
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
            Response.Cache.SetNoStore()
            Session.RemoveAll()
            Response.Redirect("Login.aspx")
        Catch ex As Exception
            Session("u_name") = ""
            Session.Clear()
            Session.Abandon()
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
            Response.Cache.SetNoStore()
            Session.RemoveAll()
            Response.Redirect("Login.aspx")
        End Try
    End Sub

End Class