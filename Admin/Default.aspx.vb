Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim d As New daoclass
        Dim doc As String = d.load_dashboard("select count(*) from doctor_master")
        Label1.Text = doc

        Dim apo As String = d.load_dashboard("select count(*) from apo_master")
        Label2.Text = apo

        Dim dep As String = d.load_dashboard("select count(*) from dep_master")
        Label3.Text = dep

        Dim sev As String = d.load_dashboard("select count(*) from sev_master")
        Label4.Text = sev
    End Sub

End Class