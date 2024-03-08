Public Class doctormaster
    Inherits System.Web.UI.Page

    Private Sub doctormaster_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Add("bf", 0)
        End If
    End Sub
    Dim t As String
    Private Sub upload_Click(sender As Object, e As EventArgs) Handles upload.Click
        Try
            If Session("bf") = 0 Then
                If FileUpload1.HasFile Then
                    Dim fname As String = "Images/doctor/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    SqlDataSource2.InsertParameters("d_name").DefaultValue = text1.Text
                    SqlDataSource2.InsertParameters("d_image").DefaultValue = fname
                    SqlDataSource2.InsertParameters("d_desc").DefaultValue = TextArea1.Text
                    'SqlDataSource2.InsertParameters("d_department").DefaultValue = text2.Text
                    SqlDataSource2.InsertParameters("d_department").DefaultValue = DropDownList1.SelectedValue
                    SqlDataSource2.Insert()
                    SqlDataSource2.DataBind()
                    t = "Your Data Insrted"
                    ClientScript.RegisterClientScriptBlock([GetType](), "k", "swal('Success!', '" & t & "!', 'success');", True)
                    text1.Text = ""
                    TextArea1.Text = ""
                    t = ""
                    'text2.Text = ""
                End If
            Else
                Dim fname As String = ""
                If FileUpload1.HasFile Then
                    fname = "Images/doctor/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    If System.IO.File.Exists(Server.MapPath("~/" + lblimage.Text)) Then
                        System.IO.File.Delete(Server.MapPath("~/" + lblimage.Text))
                    End If
                Else
                    fname = lblimage.Text
                End If

                SqlDataSource2.UpdateParameters("d_name").DefaultValue = text1.Text
                SqlDataSource2.UpdateParameters("d_desc").DefaultValue = TextArea1.Text
                SqlDataSource2.UpdateParameters("d_image").DefaultValue = fname
                SqlDataSource2.UpdateParameters("d_department").DefaultValue = DropDownList1.SelectedValue
                SqlDataSource2.UpdateParameters("id").DefaultValue = lblid.Text
                SqlDataSource2.Update()
                SqlDataSource2.DataBind()
                t = "Your Data Updated"
                ClientScript.RegisterClientScriptBlock([GetType](), "k", "swal('Success!', '" & t & "!', 'success');", True)
                t = ""
                text1.Text = ""
                TextArea1.Text = ""
                lblimage.Text = ""
                'text2.Text = ""
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
            'text2.Text = GridView1.Rows(rindex).Cells(5).Text
            DropDownList1.SelectedValue = GridView1.Rows(rindex).Cells(5).Text
            text1.Focus()
            Session.Add("bf", 1)
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub btndelete_Click1(sender As Object, e As ImageClickEventArgs)

    End Sub
End Class