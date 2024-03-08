Public Class register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        Try
            label2.Text = ""
            Dim rnum As String = ""
            Dim allowedChars As String = ""
            allowedChars += "1,2,3,4,5,6,7,8,9,0"
            Dim sep As Char() = {","c}
            Dim arr As String() = allowedChars.Split(sep)
            Dim passwordString As String = ""
            Dim temp As String = ""
            Dim rand As Random = New Random()

            For i As Integer = 0 To Convert.ToInt32(6) - 1
                temp = arr(rand.[Next](0, arr.Length))
                passwordString += temp
            Next

            rnum = passwordString
            label2.Text = rnum

            Dim d As New daoclass
            Dim body As String = "<p style='font-size:20px;'>Respected sir /Madam we are ,<br/><span style='font-size: 40px;'>" + rnum + "</span ><br/> we are thankingful to have a association with us .check your email id for otp for verification account click here to verify your account<br/><br/><a href='http://localhost:49846/IR_admin/Login.aspx'>Verify</a> "
            Dim subject As String = "Verification OTP from Geeta HOspital "
            Dim p As String = "register.aspx"
            Dim s As String = d.sendMail(TextBox1.Text, "", "", subject, body)
            If s = "sent" Then
                Label1.Text = "Email sent sucessfully"
            End If

        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox2.Text = label2.Text Then
            Response.Redirect("Default.aspx")
        Else
            Label1.Text = "otp incorrescr"
        End If
    End Sub
End Class