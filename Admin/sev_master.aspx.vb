Public Class sev_master
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Add("bf", 0)
        End If
    End Sub
    Dim t As String
    Private Sub upload_Click(sender As Object, e As EventArgs) Handles upload.Click
        Try
            If Session("bf") = 0 Then
                If FileUpload1.HasFile Then
                    Dim fname As String = "Images/Services/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    SqlDataSource1.InsertParameters("b_name").DefaultValue = text1.Text
                    SqlDataSource1.InsertParameters("b_image").DefaultValue = fname
                    SqlDataSource1.InsertParameters("b_desc").DefaultValue = TextArea1.Text
                    SqlDataSource1.Insert()
                    SqlDataSource1.DataBind()
                    t = "Your Data Insrted"
                    ClientScript.RegisterClientScriptBlock([GetType](), "k", "swal('Success!', '" & t & "!', 'success');", True)
                    text1.Text = ""
                    TextArea1.Text = ""
                    t = ""
                End If
            Else
                Dim fname As String = ""
                If FileUpload1.HasFile Then
                    fname = "Images/Services/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    If System.IO.File.Exists(Server.MapPath("~/" + lblimage.Text)) Then
                        System.IO.File.Delete(Server.MapPath("~/" + lblimage.Text))
                    End If
                Else
                    fname = lblimage.Text
                End If

                SqlDataSource1.UpdateParameters("b_name").DefaultValue = text1.Text
                SqlDataSource1.UpdateParameters("b_desc").DefaultValue = TextArea1.Text
                SqlDataSource1.UpdateParameters("b_image").DefaultValue = fname
                SqlDataSource1.UpdateParameters("id").DefaultValue = lblid.Text
                t = "Your Data Updated"
                ClientScript.RegisterClientScriptBlock([GetType](), "k", "swal('Success!', '" & t & "!', 'success');", True)
                t = ""
                SqlDataSource1.Update()
                SqlDataSource1.DataBind()
                text1.Text = ""
                TextArea1.Text = ""
                lblimage.Text = ""
                lblid.Text = ""
                Session("bf") = 0
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btndelete_Click(sender As Object, e As ImageClickEventArgs)
        Try
            Dim row As GridViewRow = CType(CType(sender, Control).Parent.Parent, GridViewRow)
            Dim rindex As Integer = row.RowIndex
            text1.Text = GridView1.Rows(rindex).Cells(2).Text
            lblid.Text = GridView1.Rows(rindex).Cells(1).Text                     'Edit Code
            lblimage.Text = GridView1.Rows(rindex).Cells(4).Text
            TextArea1.Text = GridView1.Rows(rindex).Cells(3).Text
            text1.Focus()
            Session.Add("bf", 1)
        Catch ex As Exception

        End Try
    End Sub

End Class