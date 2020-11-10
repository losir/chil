
Partial Class admin_admin_List
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click
        Session("ssnad_username") = Nothing
        Session("ssnad_nickname") = Nothing
        Session.Remove("ssnad_username")
        Session.Remove("ssnad_nickname")
        Session.Abandon()
    End Sub

    Protected Sub LinkButton1_Load(sender As Object, e As System.EventArgs) Handles LinkButton1.Load
        If Session("ssnad_username") = "" Or Session("ssnad_password") = "" Then
            Response.Redirect("~/admin/index.aspx")
        End If

        Me.ad_username.Text = Session("ssnad_username")
        Me.ad_nameNick.Text = Session("ssnad_nickname")
    End Sub
End Class
