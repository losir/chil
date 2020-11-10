using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class order_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
       		MailMessage myMail= new MailMessage();
        MailMessage OtherMail = new MailMessage();

        myMail.From = new MailAddress("kgjurouu@gmail.com");
        myMail.To.Add(new MailAddress("kgjurouu@gmail.com"));
        myMail.Priority = MailPriority.Normal;
        myMail.IsBodyHtml = true;
        myMail.Subject = "謝謝您訂購，林媽媽剝皮辣椒";
        myMail.Body = "<font size=3><b><font size=5 color=green>您訂購的資料如下</font></b><hr /></font>";


        OtherMail.From = new MailAddress("kgjurouu@gmail.com");
        OtherMail.To.Add ( new MailAddress("kgjurouu@gmail.com"));
        OtherMail.Subject = "您有新的訂單";
        OtherMail.Body = "<font size=5>請到網站後台，查看客人訂了什麼產品與儘快聯絡客人訂購資料。連線到後台管理頁面。</font>";
        OtherMail.IsBodyHtml = true;

        SmtpClient smtpServer = new SmtpClient();
        smtpServer.Host = "ms25.hinet.net";
        smtpServer.Send(myMail);
        smtpServer.Send(OtherMail);

        Response.Redirect("thanks.aspx");
    }
}