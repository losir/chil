<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_List.aspx.vb" Inherits="admin_admin_List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <meta name="description" content="林媽媽剝皮辣椒原本只是一間自助餐店，因為夏季天氣又悶又熱，林媽媽為了讓店內客人吃得下飯，決定自製辣椒讓客人食用。沒想到客人一吃就上癮，嚷嚷著要林媽媽販售，因而引起花蓮剝皮辣椒的風潮">
<meta name="keywords" content="林媽媽, 剝皮辣椒, 崇德自助餐店, 崇德林媽媽, 崇德剝皮辣椒, 自助餐, 辣椒, 食物的天然原則">
<title>林媽媽剝皮辣椒</title>
<link href="../css/01_screen.css" rel="stylesheet" type="text/css" media="screen">
</head>

<body>
<div id="wrp">
    <div id="Aamin_header"><a href="#" title="回首頁">林媽媽剝皮辣椒</a></div>
    <div id="content">
      <div id="sub_menu">
        <ul>
            <li><a href="../admin/admin_List.aspx" title="回管理頁">回管理頁</a></li>
            <li><a href="../admin/admin_mangerList.aspx" title="管理員清單">管理員清單</a></li>
            <li><a href="../admin/admin_mangerAdd.aspx" target="_blank" title="新增管理員">新增管理員</a></li>
            <li><a href="../admin/admin_orderList.aspx" title="客戶訂單列表">客戶訂單列表</a></li>
            <li><a href="../admin/admin_Order_ProcessOK.aspx" title="已處理訂單列表">已處理訂單列表</a></li>
            <li><a href="../admin/admin_Order_ProcessNO.aspx" title="未處理訂單列表">未處理訂單列表</a></li>
            <li><a href="../admin/01help.html" title="後台使用說明">後台使用說明</a>
        </li>
      </ul>
     </div>

        <div id="sub_detail">
        <form id="form1" runat="server">
        您登錄的帳號是『<asp:Label ID="ad_username" runat="server"></asp:Label>
          』，『<asp:Label ID="ad_nameNick" runat="server"></asp:Label>
          』您好，歡迎您使用『後台管理系統』<asp:LinkButton ID="LinkButton1" runat="server">登出</asp:LinkButton>
          <br />
          <br />
          <br />
          <br />
          <br />

          </form>
        </div>
      
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