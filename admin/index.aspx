<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="admin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="description" content="林媽媽剝皮辣椒原本只是一間自助餐店，因為夏季天氣又悶又熱，林媽媽為了讓店內客人吃得下飯，決定自製辣椒讓客人食用。沒想到客人一吃就上癮，嚷嚷著要林媽媽販售，因而引起花蓮剝皮辣椒的風潮">
<meta name="keywords" content="林媽媽, 剝皮辣椒, 崇德自助餐店, 崇德林媽媽, 崇德剝皮辣椒, 自助餐, 辣椒, 食物的天然原則">
<title>林媽媽剝皮辣椒</title>
<link href="../css/01_screen.css" rel="stylesheet" type="text/css" media="screen">
</head>

<body>
<div id="wrp">
    <div id="Aamin_header"></div>
    <div id="content">
        <br /><br />
       <form id="form1" runat="server">
       <table width="50%" border="0" align="center">
      <tr>
        <td height="26" align="center" class="bold_w">帳號:</td>
        <td>
                     <asp:TextBox ID="username" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="username" Display="Dynamic" ErrorMessage="您忘了輸入帳號了。" 
             ForeColor="Maroon"></asp:RequiredFieldValidator>
                 </td>
      </tr>
      <tr>
        <td height="27" align="center" class="bold_w">密碼:</td>
        <td>
                     <asp:TextBox ID="passwrd" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="passwrd" Display="Dynamic" ErrorMessage="您忘了輸入密碼了。" 
             ForeColor="Maroon"></asp:RequiredFieldValidator>
                 </td>
      </tr>
      <tr>
        <td height="29" align="center" class="bold_w">驗証碼:</td>
        <td> 
            <asp:TextBox ID="valid" runat="server"></asp:TextBox>
          &nbsp;<span class="style1"> (請用大寫)</span></td>
      </tr>
      <tr>
        <td height="29"></td>
        <td><img src="loginV.aspx" alt="驗証碼" border="1" /></td>
      </tr>
      <tr>
        <td height="29">&nbsp;</td>
        <td>
                     <asp:Button ID="Button2" runat="server" Text="登入" style="height: 21px" />
                     &nbsp;<asp:Button ID="Button3" runat="server" Text="取消" />
                 </td>
      </tr>
      <tr>
        <td height="28">&nbsp;</td>
        <td>
                     <asp:Label ID="msg_err" runat="server" ForeColor="#FF3300"></asp:Label>
                 </td>
      </tr>
    </table>
    <br />
       </form>
      
  </div>
  <div id="footer">
  <div id="copyright">
    <p>林媽媽剝皮辣椒版權所有。 &copy;2015 copyright All Rights Reserved.</p>
    <p>訂購專線：03-8359866 / 0916393951 　店址：花蓮市大禹街1號。</p>
  </div>
  <div id="showTime">
  <span class="hd">營業時間</span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;星期一到星期四  早上10點 ~ 晚上 10點 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  星期五到星期日  早上10點 ~ 晚上 11點 </div>
  </div><strong></strong>
</div>
</body>
</html>
