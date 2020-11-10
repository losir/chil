
Partial Class admin_index
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Dim cj_data As New AccessDataSource("~/app_data/lin.mdb", "")
        cj_data.SelectCommand = "SELECT * FROM admin " _
                            & "WHERE 帳號 = '" & Me.username.Text _
                            & "' AND 密碼 = '" & Me.passwrd.Text & "'"

        Dim dv As Data.DataView
        dv = cj_data.Select(New DataSourceSelectArguments)

        If dv.Count = 0 Then
            Me.msg_err.Text = "請確認您的帳號、密碼與確認碼是否正確！！"
            username.Text = ""
            Exit Sub
        End If

        Session("ssnad_username") = Me.username.Text
        Session("ssnad_password") = dv(0).Item("密碼")
        Session("ssnad_nickname") = dv(0).Item("姓名")

        If valid.Text = Session("ValidateCode") Then
            Response.Redirect("admin_List.aspx")
        Else
            Response.Redirect("index.aspx")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            '清除工作階段
            Session.Remove("帳號")
            Session.Remove("密碼")
            Session.Remove("姓名")
            'Session("confirm") = getConfirmCode()
        End If
    End Sub
End Class
