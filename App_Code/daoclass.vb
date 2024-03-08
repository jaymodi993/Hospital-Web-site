Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Security.Cryptography
Imports System.IO
Imports System.Net
Imports System.Web.Mail
Imports System.Xml


Public Class daoclass
    Private conn As New SqlConnection

    Public Sub New()
        conn.ConnectionString = "Data Source=DESKTOP-7M04P4M\SQLEXPRESS;Initial Catalog=Hospital;Integrated Security=True"
    End Sub
    Public Function Load_data(ByVal p() As String, ByVal v() As String, ByVal qry As String)
        Dim da As New SqlDataAdapter
        Dim ds As New Data.DataSet
        da.SelectCommand = New SqlCommand(qry, conn)
        For i = 0 To p.Length - 1
            da.SelectCommand.Parameters.AddWithValue(p(i), v(i))
        Next
        conn.Open()
        da.SelectCommand.ExecuteReader()
        conn.Close()
        da.Fill(ds)
        Return ds
    End Function

    Dim from1 As String = "geeetahospital@gmail.com"
    Dim ps As String = "geeta1234"

    Public Function sendMail(ByVal [to] As String, ByVal cc As String, ByVal bcc As String, ByVal subject As String, ByVal body As String, Optional ByVal att As String = "NA") As String
        Try
            ' Mail initialization
            Dim mailMsg As New MailMessage()

            mailMsg.From = "Geeta Hospital" & "<" & from1 & ">"

            mailMsg.[To] = [to]

            mailMsg.Subject = subject
            mailMsg.BodyFormat = MailFormat.Html
            mailMsg.Body = body

            mailMsg.Priority = System.Web.Mail.MailPriority.High


            mailMsg.Cc = cc
            mailMsg.Bcc = bcc


            ' Smtp configuration
            SmtpMail.SmtpServer = "smtp.gmail.com"
            'SmtpMail.SmtpServer = "smtpout.asia.secureserver.net"
            ' - smtp.gmail.com use smtp authentication
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1")
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", from1)
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", ps)
            ' - smtp.gmail.com use port 465 or 587
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465")
            ' smtp.gmail.com use STARTTLS (some call this SSL)
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true")
            ' try to send Mail

            If att <> "NA" Then
                Dim attachment As System.Web.Mail.MailAttachment
                attachment = New System.Web.Mail.MailAttachment(HttpContext.Current.Server.MapPath(att))
                mailMsg.Attachments.Add(attachment)
            End If

            Dim msg As String = ""

            mailMsg.Headers.Add("ReplyTo", "info@tims.ac.in")

            SmtpMail.Send(mailMsg)
            msg = "sent"

            Return msg

        Catch ex As Exception
            Return ex.Message
        End Try

    End Function

    Public Function load_dashboard(ByVal str As String) As String
        Dim result As String
        Dim cmd As New SqlCommand(str, conn)
        conn.Open()
        result = cmd.ExecuteScalar

        conn.Close()
        Return result
    End Function
    'Public Function getrandom_number() As String
    '    Dim rnum As String = ""
    '    Dim allowedChars As String = ""
    '    allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?"
    '    Dim sep As Char() = {","c}
    '    Dim arr As String() = allowedChars.Split(sep)
    '    Dim passwordString As String = ""
    '    Dim temp As String = ""
    '    Dim rand As Random = New Random()

    '    For i As Integer = 0 To Convert.ToInt32(10) - 1
    '        temp = arr(rand.[Next](0, arr.Length))
    '        passwordString += temp
    '    Next

    '    rnum = passwordString
    '    Return rnum
    'End Function

End Class
