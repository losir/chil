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
       // var client = new SmtpClient("smtp.gmail.com", 587);
        MailMessage myMail= new MailMessage();
        MailMessage OtherMail = new MailMessage();

       // myMail.From = new MailAddress("sun8359866@gmail.com");
        myMail.From = new MailAddress("sun8359866@gmail.com");
        myMail.To.Add(new MailAddress("sun8359866@gmail.com"));
        myMail.Priority = MailPriority.Normal;
        myMail.IsBodyHtml = true;
        myMail.Subject = "謝謝您訂購，林媽媽剝皮辣椒";
        myMail.Body = "<font size=3><b><font size=5 color=green>您訂購的資料如下</font></b><hr /></font>";


        OtherMail.From = new MailAddress("sun8359866@gmail.com");
        OtherMail.To.Add(new MailAddress("sun8359866@gmail.com"));
        OtherMail.Subject = "您有新的訂單";
        OtherMail.Body = "<font size=5>請到網站後台，查看客人訂了什麼產品與儘快聯絡客人訂購資料。連線到後台管理頁面。</font>";
        OtherMail.IsBodyHtml = true;

        SmtpClient smtpServer = new SmtpClient();
        
        //smtpServer.Credentials =
        //new System.Net.NetworkCredential("kgjurouu@gmail.com", "2oxxxixx");
        //smtpServer.Port = 587;
        smtpServer.Host = "msa.hinet.net";
       // smtpServer.EnableSsl = true;
        smtpServer.Send(myMail);
        smtpServer.Send(OtherMail);
       
        Response.Redirect("thanks.aspx");
    }
}