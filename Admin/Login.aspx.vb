Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Try
            Dim d As New daoclass
            Dim ds As New Data.DataSet
            Dim p(1) As String
            p(0) = "@u_name"
            p(1) = "@u_pass"
            Dim v(1) As String
            v(0) = uname.Value
            v(1) = upass.Value
            ds = d.Load_data(p, v, "select * from login where u_name=@u_name and u_pass=@u_pass")
            If ds.Tables(0).Rows.Count > 0 Then
                Label1.Text = ""
                Session.Add("uname", uname.Value)
                Session.Add("upic", ds.Tables(0).Rows(0).Item("u_img"))
                Session.Add("utype", ds.Tables(0).Rows(0).Item("u_type"))
                Response.Redirect("Default.aspx")
            Else
                Label1.Text = "Invalid User Name And Password"
            End If
        Catch ex As Exception
        End Try
    End Sub
End Class