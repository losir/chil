using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;

public partial class loginV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         //Validate Code
        string[] Code ={ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
                         "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
                         "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
          string strRd = string.Empty;
          Random rd = new Random(unchecked((int)DateTime.Now.Ticks));
          Bitmap Bmp = new Bitmap(80, 25);  //建立實體圖檔並設定大小
          Graphics Gpi = Graphics.FromImage(Bmp);
          Font Font1 = new Font("Verdana", 14, FontStyle.Italic);

          for (int i = 0; i < 5; i++)       // 亂數產生驗證文字
          {
           strRd += Code[rd.Next(35)];
          }

           Pen PenLine = new Pen(Brushes.Red, 1);  //實體化筆刷並設定顏色、大小(畫X,Y軸用)
           Gpi.Clear(Color.White);    //設定背景顏色
           Gpi.DrawLine(PenLine, 0, rd.Next(80), 90, rd.Next(25));
           Gpi.DrawString(strRd, Font1, Brushes.Black, 0, 0);

           for (int i = 0; i <= 25; i++)            //亂數產生霧點，擾亂機器人辨別
           {
             int RandPixelX = rd.Next(0, 80);
             int RandPixelY = rd.Next(0, 25);
             Bmp.SetPixel(RandPixelX, RandPixelY, Color.Blue);
           }

           Session["ValidateCode"] = strRd;        //將驗證碼存入Session以便稍後進行驗證
           Bmp.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);
   }
}