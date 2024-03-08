Public Class index
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

    Private Sub feedbtn_Click(sender As Object, e As EventArgs) Handles feedbtn.Click
        feed.InsertParameters("uname").DefaultValue = feedname.Value
        feed.InsertParameters("uemail").DefaultValue = feedemail.Value
        feed.InsertParameters("sub").DefaultValue = feedsubject.Value
        feed.InsertParameters("mes").DefaultValue = feedmessage.Value
        feed.Insert()
        feed.DataBind()
        feedname.Value = ""
        feedemail.Value = ""
        feedsubject.Value = ""
        feedmessage.Value = ""
    End Sub

    Private Sub apo_Click(sender As Object, e As EventArgs) Handles apo.Click
        appoinment.InsertParameters("name").DefaultValue = fn.Value
        appoinment.InsertParameters("email").DefaultValue = em.Value
        appoinment.InsertParameters("phone").DefaultValue = ph.Value
        appoinment.InsertParameters("dob").DefaultValue = apodob.Value
        appoinment.InsertParameters("department").DefaultValue = DropDownList1.SelectedValue.ToString()
        appoinment.InsertParameters("doctor").DefaultValue = DropDownList2.SelectedValue.ToString()
        appoinment.InsertParameters("messege").DefaultValue = bio.Value
        appoinment.Insert()
        appoinment.DataBind()
        fn.Value = ""
        em.Value = ""
        ph.Value = ""
        apodob.Value = ""
        bio.Value = ""
    End Sub
End Class