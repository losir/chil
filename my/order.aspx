<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/inline.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 810px;
            height: 45px;
        }
        .style5
        {
            width: 24%;
        }
        .style6
        {
            width: 13%;
        }
        .style7
        {
            color: #FF0004;
            width: 13%;
        }
        .style3
        {
            width: 20%;
            height: 25px;
        }
        .style4
        {
            height: 25px;
        }
        .style2
        {
            width: 20%;
        }
        .style9
        {
            height: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <img class="style1" src="images/order_online.png" /></p>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="no" 
        DataSourceID="order" DefaultMode="Insert" EnableModelValidation="True" 
        Width="98%" oniteminserted="FormView1_ItemInserted">
        <EditItemTemplate>
            no:
            <asp:Label ID="noLabel1" runat="server" Text='<%# Eval("no") %>' />
            <br />
            A01_1:
            <asp:TextBox ID="A01_1TextBox" runat="server" Text='<%# Bind("A01_1") %>' />
            <br />
            A01_2:
            <asp:TextBox ID="A01_2TextBox" runat="server" Text='<%# Bind("A01_2") %>' />
            <br />
            A01_3:
            <asp:TextBox ID="A01_3TextBox" runat="server" Text='<%# Bind("A01_3") %>' />
            <br />
            A02_1:
            <asp:TextBox ID="A02_1TextBox" runat="server" Text='<%# Bind("A02_1") %>' />
            <br />
            A02_2:
            <asp:TextBox ID="A02_2TextBox" runat="server" Text='<%# Bind("A02_2") %>' />
            <br />
            A03_1:
            <asp:TextBox ID="A03_1TextBox" runat="server" Text='<%# Bind("A03_1") %>' />
            <br />
            A03_2:
            <asp:TextBox ID="A03_2TextBox" runat="server" Text='<%# Bind("A03_2") %>' />
            <br />
            A04_1:
            <asp:TextBox ID="A04_1TextBox" runat="server" Text='<%# Bind("A04_1") %>' />
            <br />
            A05_1:
            <asp:TextBox ID="A05_1TextBox" runat="server" Text='<%# Bind("A05_1") %>' />
            <br />
            A05_2:
            <asp:TextBox ID="A05_2TextBox" runat="server" Text='<%# Bind("A05_2") %>' />
            <br />
            A05_3:
            <asp:TextBox ID="A05_3TextBox" runat="server" Text='<%# Bind("A05_3") %>' />
            <br />
            A06_1:
            <asp:TextBox ID="A06_1TextBox" runat="server" Text='<%# Bind("A06_1") %>' />
            <br />
            A06_2:
            <asp:TextBox ID="A06_2TextBox" runat="server" Text='<%# Bind("A06_2") %>' />
            <br />
            A06_3:
            <asp:TextBox ID="A06_3TextBox" runat="server" Text='<%# Bind("A06_3") %>' />
            <br />
            A06_4:
            <asp:TextBox ID="A06_4TextBox" runat="server" Text='<%# Bind("A06_4") %>' />
            <br />
            A06_5:
            <asp:TextBox ID="A06_5TextBox" runat="server" Text='<%# Bind("A06_5") %>' />
            <br />
            A07_1:
            <asp:TextBox ID="A07_1TextBox" runat="server" Text='<%# Bind("A07_1") %>' />
            <br />
            A07_2:
            <asp:TextBox ID="A07_2TextBox" runat="server" Text='<%# Bind("A07_2") %>' />
            <br />
            A07_3:
            <asp:TextBox ID="A07_3TextBox" runat="server" Text='<%# Bind("A07_3") %>' />
            <br />
            A07_4:
            <asp:TextBox ID="A07_4TextBox" runat="server" Text='<%# Bind("A07_4") %>' />
            <br />
            A07_5:
            <asp:TextBox ID="A07_5TextBox" runat="server" Text='<%# Bind("A07_5") %>' />
            <br />
            A07_6:
            <asp:TextBox ID="A07_6TextBox" runat="server" Text='<%# Bind("A07_6") %>' />
            <br />
            A07_7:
            <asp:TextBox ID="A07_7TextBox" runat="server" Text='<%# Bind("A07_7") %>' />
            <br />
            A08_1:
            <asp:TextBox ID="A08_1TextBox" runat="server" Text='<%# Bind("A08_1") %>' />
            <br />
            A08_2:
            <asp:TextBox ID="A08_2TextBox" runat="server" Text='<%# Bind("A08_2") %>' />
            <br />
            A09_1:
            <asp:TextBox ID="A09_1TextBox" runat="server" Text='<%# Bind("A09_1") %>' />
            <br />
            A09_2:
            <asp:TextBox ID="A09_2TextBox" runat="server" Text='<%# Bind("A09_2") %>' />
            <br />
            A10_1:
            <asp:TextBox ID="A10_1TextBox" runat="server" Text='<%# Bind("A10_1") %>' />
            <br />
            A10_2:
            <asp:TextBox ID="A10_2TextBox" runat="server" Text='<%# Bind("A10_2") %>' />
            <br />
            A11_1:
            <asp:TextBox ID="A11_1TextBox" runat="server" Text='<%# Bind("A11_1") %>' />
            <br />
            A11_2:
            <asp:TextBox ID="A11_2TextBox" runat="server" Text='<%# Bind("A11_2") %>' />
            <br />
            A11_3:
            <asp:TextBox ID="A11_3TextBox" runat="server" Text='<%# Bind("A11_3") %>' />
            <br />
            A12_1:
            <asp:TextBox ID="A12_1TextBox" runat="server" Text='<%# Bind("A12_1") %>' />
            <br />
            A12_2:
            <asp:TextBox ID="A12_2TextBox" runat="server" Text='<%# Bind("A12_2") %>' />
            <br />
            A13_1:
            <asp:TextBox ID="A13_1TextBox" runat="server" Text='<%# Bind("A13_1") %>' />
            <br />
            A13_2:
            <asp:TextBox ID="A13_2TextBox" runat="server" Text='<%# Bind("A13_2") %>' />
            <br />
            A14_1:
            <asp:TextBox ID="A14_1TextBox" runat="server" Text='<%# Bind("A14_1") %>' />
            <br />
            A14_2:
            <asp:TextBox ID="A14_2TextBox" runat="server" Text='<%# Bind("A14_2") %>' />
            <br />
            A15_1:
            <asp:TextBox ID="A15_1TextBox" runat="server" Text='<%# Bind("A15_1") %>' />
            <br />
            A15_2:
            <asp:TextBox ID="A15_2TextBox" runat="server" Text='<%# Bind("A15_2") %>' />
            <br />
            buyname:
            <asp:TextBox ID="buynameTextBox" runat="server" Text='<%# Bind("buyname") %>' />
            <br />
            buytel:
            <asp:TextBox ID="buytelTextBox" runat="server" Text='<%# Bind("buytel") %>' />
            <br />
            buyaddr:
            <asp:TextBox ID="buyaddrTextBox" runat="server" Text='<%# Bind("buyaddr") %>' />
            <br />
            buyemail:
            <asp:TextBox ID="buyemailTextBox" runat="server" 
                Text='<%# Bind("buyemail") %>' />
            <br />
            pay:
            <asp:TextBox ID="payTextBox" runat="server" Text='<%# Bind("pay") %>' />
            <br />
            gotime:
            <asp:TextBox ID="gotimeTextBox" runat="server" Text='<%# Bind("gotime") %>' />
            <br />
            memo:
            <asp:TextBox ID="memoTextBox" runat="server" Text='<%# Bind("memo") %>' />
            <br />
            recall:
            <asp:CheckBox ID="recallCheckBox" runat="server" 
                Checked='<%# Bind("recall") %>' />
            <br />
            rememo:
            <asp:TextBox ID="rememoTextBox" runat="server" Text='<%# Bind("rememo") %>' />
            <br />
            buytime:
            <asp:TextBox ID="buytimeTextBox" runat="server" Text='<%# Bind("buytime") %>' />
            <br />
            posttime:
            <asp:TextBox ID="posttimeTextBox" runat="server" 
                Text='<%# Bind("posttime") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table border="1" width="95%">
                <tr>
                    <th align="left" bgcolor="#99CC99" scope="row" width="51%">
                        產品名稱</th>
                    <td align="center" bgcolor="#99CC99" class="style5">
                        <strong>金額/重量/單位</strong></td>
                    <td align="center" bgcolor="#99CC99" class="style6">
                        <strong>配送方式</strong></td>
                    <td align="center" bgcolor="#99CC99" width="13%">
                        數量</td>
                </tr>
                <tr>
                    <td class="fontcolorsize" colspan="4" scope="row">
                        林媽媽剝皮辣椒-冷凍商品</td>
                </tr>
                <tr>
                    <td scope="row">
                        A01-1 - (脆)剝皮辣椒-大辣</td>
                    <td align="center" class="style5">
                        120元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A01_1TextBox" runat="server" Text='<%# Bind("A01_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A01-2 - (脆)剝皮辣椒-中辣</td>
                    <td align="center" class="style5">
                        120元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A01_2TextBox" runat="server" Text='<%# Bind("A01_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A01-3 - (脆)剝皮辣椒-小辣<strong> (秋.冬季才有)</strong></td>
                    <td align="center" class="style5">
                        120元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A01_3TextBox" runat="server" Text='<%# Bind("A01_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A02-1 - 紅剝皮辣椒</td>
                    <td align="center" class="style5">
                        200元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A02_1TextBox" runat="server" Text='<%# Bind("A02_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A02-2 - 紅小魚乾剝皮辣椒</td>
                    <td align="center" class="style5">
                        200元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A02_2TextBox" runat="server" Text='<%# Bind("A02_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A03-1 - 山豬皮剝皮辣椒</td>
                    <td align="center" class="style5">
                        170元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A03_1TextBox" runat="server" Text='<%# Bind("A03_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A03-2 - 純山豬皮 
                    </td>
                    <td align="center" class="style5">
                        250元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A03_2TextBox" runat="server" Text='<%# Bind("A03_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A04-1 - 自製小魚干 
                    </td>
                    <td align="center" class="style5">
                        150元/罐</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A04_1TextBox" runat="server" Text='<%# Bind("A04_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A05-1 - 禮盒(3 瓶裝)
                    </td>
                    <td align="center" class="style5">
                        350 元/450g/盒</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A05_1TextBox" runat="server" Text='<%# Bind("A05_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A05-2 - 禮盒(6 瓶裝)
                    </td>
                    <td align="center" class="style5">
                        700 元/450g/盒 
                    </td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A05_2TextBox" runat="server" Text='<%# Bind("A05_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A05-3 - 禮盒(12 瓶裝)
                    </td>
                    <td align="center" class="style5">
                        1400 元 /450g/盒</td>
                    <td align="center" class="style7">
                        冷凍</td>
                    <td align="center">
                        <asp:TextBox ID="A05_3TextBox" runat="server" Text='<%# Bind("A05_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row" colspan="4">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A06-1 - 雞心椒(小)</td>
                    <td align="center" class="style5">
                        200元/瓶</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A06_1TextBox" runat="server" Text='<%# Bind("A06_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A06-2 - 雞心椒(紅)
                    </td>
                    <td align="center" class="style5">
                        200 元/瓶 
                    </td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A06_2TextBox" runat="server" Text='<%# Bind("A06_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A06-3 - 雞心椒(綠)
                    </td>
                    <td align="center" class="style5">
                        200 元/瓶</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A06_3TextBox" runat="server" Text='<%# Bind("A06_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" scope="row">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="fontcolorsize" colspan="4" scope="row">
                        常溫商品</td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-1 - 朝天辣椒(原味)</td>
                    <td align="center" class="style5">
                        150元/ 390g/罐(小)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_1TextBox" runat="server" Text='<%# Bind("A07_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-2 - 朝天辣椒(蒜蓉)</td>
                    <td align="center" class="style5">
                        150元/390g/罐(小)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_2TextBox" runat="server" Text='<%# Bind("A07_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-3 - 朝天辣椒(金鈎蝦)
                    </td>
                    <td align="center" class="style5">
                        150元/390g/罐(小)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_3TextBox" runat="server" Text='<%# Bind("A07_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-4 - 朝天辣椒(小魚干)</td>
                    <td align="center" class="style5">
                        150元/ 390g/罐(小)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_4TextBox" runat="server" Text='<%# Bind("A07_4") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-5 - 朝天辣椒(豆鼓)</td>
                    <td align="center" class="style5">
                        150元/ 390g/罐(小)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_5TextBox" runat="server" Text='<%# Bind("A07_5") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-6 - 朝天辣椒(小魚干) </td>
                    <td align="center" class="style5">
                        200元/650g/罐(大)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_6TextBox" runat="server" Text='<%# Bind("A07_6") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-7 - 朝天辣椒(豆鼓)</td>
                    <td align="center" class="style5">
                        200元/650g/罐(大)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_7TextBox" runat="server" Text='<%# Bind("A07_7") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A07-8 - 朝天辣椒(蒜味)
                    </td>
                    <td align="center" class="style5">
                        200元/650g/罐(大)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A07_8TextBox" runat="server" Text='<%# Bind("A07_8") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A08-1 - 脆剝皮辣椒(大罐)</td>
                    <td align="center" class="style5">
                        150 元/650g/罐</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A08_1TextBox" runat="server" Text='<%# Bind("A08_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A08-2 - 脆剝皮辣椒(小罐)</td>
                    <td align="center" class="style5">
                        120 元/450g/罐</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A08_2TextBox" runat="server" Text='<%# Bind("A08_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A09-1 - 純干貝醬</td>
                    <td align="center" class="style5">
                        200 元/罐</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A09_1TextBox" runat="server" Text='<%# Bind("A09_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A09-2 - 干貝醬小魚乾</td>
                    <td align="center" class="style5">
                        350 元/罐</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A09_2TextBox" runat="server" Text='<%# Bind("A09_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A10-1 - 麻糬(傳統)</td>
                    <td align="center" class="style5">
                        100元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A10_1TextBox" runat="server" Text='<%# Bind("A10_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A10-2 - 綜合小麻糬</td>
                    <td align="center" class="style5">
                        100元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A10_2TextBox" runat="server" Text='<%# Bind("A10_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A11-1 - 奶油酥條(原味)</td>
                    <td align="center" class="style5">
                        100元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A11_1TextBox" runat="server" Text='<%# Bind("A11_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A11-2 - 奶油酥條(蒜味)</td>
                    <td align="center" class="style5">
                        120元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A11_2TextBox" runat="server" Text='<%# Bind("A11_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A11-3 - 奶油酥條(巧克力)</td>
                    <td align="center" class="style5">
                        200元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A11_3TextBox" runat="server" Text='<%# Bind("A11_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A12-1 - 玉里羊羮 
                    </td>
                    <td align="center" class="style5">
                        120元/包(6條)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A12_1TextBox" runat="server" Text='<%# Bind("A12_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A12-2 - 廣盛堂羊羮</td>
                    <td align="center" class="style5">
                        120元/包(6條)</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A12_2TextBox" runat="server" Text='<%# Bind("A12_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A13-1 - 寒天小丸子(黑糖)
                    </td>
                    <td align="center" class="style5">
                        120元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A13_1TextBox" runat="server" Text='<%# Bind("A13_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A13-2 - 寒天小丸子(咖啡)</td>
                    <td align="center" class="style5">
                        120元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A13_2TextBox" runat="server" Text='<%# Bind("A13_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A14-1 - 牛軋糖(原味)</td>
                    <td align="center" class="style5">
                        200 元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A14_1TextBox" runat="server" Text='<%# Bind("A14_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A14-2 - 牛軋糖(蔓越莓)
                    </td>
                    <td align="center" class="style5">
                        200 元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A14_2TextBox" runat="server" Text='<%# Bind("A14_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A15-1 - 沙琪瑪(原味)</td>
                    <td align="center" class="style5">
                        120 元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A15_1TextBox" runat="server" Text='<%# Bind("A15_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A15-2 - 沙琪瑪(黑糖)</td>
                    <td align="center" class="style5">
                        120 元/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A15_2TextBox" runat="server" Text='<%# Bind("A15_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-1 - 土鳳梨原味</td>
                    <td align="center" class="style5">
                        &nbsp;&nbsp;380元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_1TextBox" runat="server" Text='<%# Bind("A16_1") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-2 - 蔓越莓原果</td>
                    <td align="center" class="style5">
                        380/包</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_2TextBox" runat="server" Text='<%# Bind("A16_2") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-3 - 莉綠茶葉</td>
                    <td align="center" class="style5">
                        380元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_3TextBox" runat="server" Text='<%# Bind("A16_3") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-4 - 墨西哥辣椒</td>
                    <td align="center" class="style5">
                        380元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_4TextBox" runat="server" Text='<%# Bind("A16_4") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-5 - 檸檬起司</td>
                    <td align="center" class="style5">
                        380元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_5TextBox" runat="server" Text='<%# Bind("A16_5") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td scope="row">
                        A16-6 - 經典鳳凰酥</td>
                    <td align="center" class="style5">
                        400元/盒</td>
                    <td align="center" class="style6">
                        常溫</td>
                    <td align="center">
                        <asp:TextBox ID="A16_6TextBox" runat="server" Text='<%# Bind("A16_6") %>' 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="18" scope="row">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" scope="row">
                        <table border="1" width="90%">
                            <tr>
                                <th colspan="2" scope="row">
                                    請確實填寫下列收件人資料，送出後我們將有專人為您處理訂單</th>
                            </tr>
                            <tr>
                                <th class="color01" colspan="2" scope="row" style="text-align: left">
                                    * 為必要項目，請確實填寫</th>
                            </tr>
                            <tr>
                                <th class="style3" scope="row">
                                    * 訂購人姓名</th>
                                <td class="style4">
                                    &nbsp;<asp:TextBox ID="buynameTextBox" runat="server" 
                                        Text='<%# Bind("buyname") %>' Width="100px" />
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="buynameTextBox" Display="Dynamic" ErrorMessage="請填寫訂購人姓名。"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    * 訂購人電話</th>
                                <td>
                                    &nbsp;<asp:TextBox ID="buytelTextBox" runat="server" Text='<%# Bind("buytel") %>' />
                                    &nbsp;手機、電話皆可。<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                        runat="server" ControlToValidate="buytelTextBox" Display="Dynamic" 
                                        ErrorMessage="請填寫訂購人電話。"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    * 收件地址</th>
                                <td>
                                    &nbsp;<asp:TextBox ID="buyaddrTextBox" runat="server" 
                                        Text='<%# Bind("buyaddr") %>' Width="300px" />
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="buyaddrTextBox" Display="Dynamic" ErrorMessage="請填寫訂購人地址。"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    電子郵件</th>
                                <td>
                                    &nbsp;<asp:TextBox ID="buyemailTextBox" runat="server" 
                                        Text='<%# Bind("buyemail") %>' />
                                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                        runat="server" ControlToValidate="buyemailTextBox" Display="Dynamic" 
                                        ErrorMessage="電子郵件格式不對。" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    * 付款方式</th>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("pay") %>'>
                                        <asp:ListItem Selected="True">貨到付款</asp:ListItem>
                                        <asp:ListItem>銀行匯款</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    * 到貨時間</th>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("gotime") %>'>
                                        <asp:ListItem Selected="True">早上9-12點</asp:ListItem>
                                        <asp:ListItem>中午12-5點</asp:ListItem>
                                        <asp:ListItem>下午5-8點</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    備註</th>
                                <td>
                                    <asp:TextBox ID="memoTextBox" runat="server" Text='<%# Bind("memo") %>' 
                                        Height="60px" TextMode="MultiLine" Width="450px" />
                                </td>
                            </tr>
                            <tr>
                                <th class="style2" scope="row">
                                    &nbsp;</th>
                                <td class="color01">
                                    若收件人與地址與訂購人不同，請將收件人資料填寫在『備註』欄上。</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style9" colspan="4" scope="row">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="送出" />
                        &nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="取消" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            no:
            <asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
            <br />
            A01_1:
            <asp:Label ID="A01_1Label" runat="server" Text='<%# Bind("A01_1") %>' />
            <br />
            A01_2:
            <asp:Label ID="A01_2Label" runat="server" Text='<%# Bind("A01_2") %>' />
            <br />
            A01_3:
            <asp:Label ID="A01_3Label" runat="server" Text='<%# Bind("A01_3") %>' />
            <br />
            A02_1:
            <asp:Label ID="A02_1Label" runat="server" Text='<%# Bind("A02_1") %>' />
            <br />
            A02_2:
            <asp:Label ID="A02_2Label" runat="server" Text='<%# Bind("A02_2") %>' />
            <br />
            A03_1:
            <asp:Label ID="A03_1Label" runat="server" Text='<%# Bind("A03_1") %>' />
            <br />
            A03_2:
            <asp:Label ID="A03_2Label" runat="server" Text='<%# Bind("A03_2") %>' />
            <br />
            A04_1:
            <asp:Label ID="A04_1Label" runat="server" Text='<%# Bind("A04_1") %>' />
            <br />
            A05_1:
            <asp:Label ID="A05_1Label" runat="server" Text='<%# Bind("A05_1") %>' />
            <br />
            A05_2:
            <asp:Label ID="A05_2Label" runat="server" Text='<%# Bind("A05_2") %>' />
            <br />
            A05_3:
            <asp:Label ID="A05_3Label" runat="server" Text='<%# Bind("A05_3") %>' />
            <br />
            A06_1:
            <asp:Label ID="A06_1Label" runat="server" Text='<%# Bind("A06_1") %>' />
            <br />
            A06_2:
            <asp:Label ID="A06_2Label" runat="server" Text='<%# Bind("A06_2") %>' />
            <br />
            A06_3:
            <asp:Label ID="A06_3Label" runat="server" Text='<%# Bind("A06_3") %>' />
            <br />
            A06_4:
            <asp:Label ID="A06_4Label" runat="server" Text='<%# Bind("A06_4") %>' />
            <br />
            A06_5:
            <asp:Label ID="A06_5Label" runat="server" Text='<%# Bind("A06_5") %>' />
            <br />
            A07_1:
            <asp:Label ID="A07_1Label" runat="server" Text='<%# Bind("A07_1") %>' />
            <br />
            A07_2:
            <asp:Label ID="A07_2Label" runat="server" Text='<%# Bind("A07_2") %>' />
            <br />
            A07_3:
            <asp:Label ID="A07_3Label" runat="server" Text='<%# Bind("A07_3") %>' />
            <br />
            A07_4:
            <asp:Label ID="A07_4Label" runat="server" Text='<%# Bind("A07_4") %>' />
            <br />
            A07_5:
            <asp:Label ID="A07_5Label" runat="server" Text='<%# Bind("A07_5") %>' />
            <br />
            A07_6:
            <asp:Label ID="A07_6Label" runat="server" Text='<%# Bind("A07_6") %>' />
            <br />
            A07_7:
            <asp:Label ID="A07_7Label" runat="server" Text='<%# Bind("A07_7") %>' />
            <br />
            A08_1:
            <asp:Label ID="A08_1Label" runat="server" Text='<%# Bind("A08_1") %>' />
            <br />
            A08_2:
            <asp:Label ID="A08_2Label" runat="server" Text='<%# Bind("A08_2") %>' />
            <br />
            A09_1:
            <asp:Label ID="A09_1Label" runat="server" Text='<%# Bind("A09_1") %>' />
            <br />
            A09_2:
            <asp:Label ID="A09_2Label" runat="server" Text='<%# Bind("A09_2") %>' />
            <br />
            A10_1:
            <asp:Label ID="A10_1Label" runat="server" Text='<%# Bind("A10_1") %>' />
            <br />
            A10_2:
            <asp:Label ID="A10_2Label" runat="server" Text='<%# Bind("A10_2") %>' />
            <br />
            A11_1:
            <asp:Label ID="A11_1Label" runat="server" Text='<%# Bind("A11_1") %>' />
            <br />
            A11_2:
            <asp:Label ID="A11_2Label" runat="server" Text='<%# Bind("A11_2") %>' />
            <br />
            A11_3:
            <asp:Label ID="A11_3Label" runat="server" Text='<%# Bind("A11_3") %>' />
            <br />
            A12_1:
            <asp:Label ID="A12_1Label" runat="server" Text='<%# Bind("A12_1") %>' />
            <br />
            A12_2:
            <asp:Label ID="A12_2Label" runat="server" Text='<%# Bind("A12_2") %>' />
            <br />
            A13_1:
            <asp:Label ID="A13_1Label" runat="server" Text='<%# Bind("A13_1") %>' />
            <br />
            A13_2:
            <asp:Label ID="A13_2Label" runat="server" Text='<%# Bind("A13_2") %>' />
            <br />
            A14_1:
            <asp:Label ID="A14_1Label" runat="server" Text='<%# Bind("A14_1") %>' />
            <br />
            A14_2:
            <asp:Label ID="A14_2Label" runat="server" Text='<%# Bind("A14_2") %>' />
            <br />
            A15_1:
            <asp:Label ID="A15_1Label" runat="server" Text='<%# Bind("A15_1") %>' />
            <br />
            A15_2:
            <asp:Label ID="A15_2Label" runat="server" Text='<%# Bind("A15_2") %>' />
            <br />
            buyname:
            <asp:Label ID="buynameLabel" runat="server" Text='<%# Bind("buyname") %>' />
            <br />
            buytel:
            <asp:Label ID="buytelLabel" runat="server" Text='<%# Bind("buytel") %>' />
            <br />
            buyaddr:
            <asp:Label ID="buyaddrLabel" runat="server" Text='<%# Bind("buyaddr") %>' />
            <br />
            buyemail:
            <asp:Label ID="buyemailLabel" runat="server" Text='<%# Bind("buyemail") %>' />
            <br />
            pay:
            <asp:Label ID="payLabel" runat="server" Text='<%# Bind("pay") %>' />
            <br />
            gotime:
            <asp:Label ID="gotimeLabel" runat="server" Text='<%# Bind("gotime") %>' />
            <br />
            memo:
            <asp:Label ID="memoLabel" runat="server" Text='<%# Bind("memo") %>' />
            <br />
            recall:
            <asp:CheckBox ID="recallCheckBox" runat="server" 
                Checked='<%# Bind("recall") %>' Enabled="false" />
            <br />
            rememo:
            <asp:Label ID="rememoLabel" runat="server" Text='<%# Bind("rememo") %>' />
            <br />
            buytime:
            <asp:Label ID="buytimeLabel" runat="server" Text='<%# Bind("buytime") %>' />
            <br />
            posttime:
            <asp:Label ID="posttimeLabel" runat="server" Text='<%# Bind("posttime") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
</p>
<p>
    <asp:AccessDataSource ID="order" runat="server" DataFile="~/App_Data/lin.mdb" 
        DeleteCommand="DELETE FROM [ordergoods] WHERE [no] = ?" 
        InsertCommand="INSERT INTO ordergoods(A01_1, A01_2, A01_3, A02_1, A02_2, A03_1, A03_2, A04_1, A05_1, A05_2, A05_3, A06_1, A06_2, A06_3, A07_1, A07_2, A07_3, A07_4, A07_5, A07_6, A07_7, A07_8, A08_1, A08_2, A09_1, A09_2, A10_1, A10_2, A11_1, A11_2, A11_3, A12_1, A12_2, A13_1, A13_2, A14_1, A14_2, A15_1, A15_2, A16_1, A16_2, A16_3, A16_4, A16_5, A16_6, buyname, buytel, buyaddr, buyemail, pay, gotime, [memo], recall, rememo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [no], A01_1, A01_2, A01_3, A02_1, A02_2, A03_1, A03_2, A04_1, A05_1, A05_2, A05_3, A06_1, A06_2, A06_3, A07_1, A07_2, A07_3, A07_4, A07_5, A07_6, A07_7, A07_8, A08_1, A08_2, A09_1, A09_2, A10_1, A10_2, A11_1, A11_2, A11_3, A12_1, A12_2, A13_1, A13_2, A14_1, A14_2, A15_1, A15_2, buyname, buytel, buyaddr, buyemail, pay, gotime, [memo], recall, rememo, buytime, posttime, A16_1, A16_2, A16_3, A16_4, A16_5, A16_6 FROM ordergoods" 
        
        
        
        UpdateCommand="UPDATE ordergoods SET A01_1 = ?, A01_2 = ?, A01_3 = ?, A02_1 = ?, A02_2 = ?, A03_1 = ?, A03_2 = ?, A04_1 = ?, A05_1 = ?, A05_2 = ?, A05_3 = ?, A06_1 = ?, A06_2 = ?, A06_3 = ?, A07_1 = ?, A07_2 = ?, A07_3 = ?, A07_4 = ?, A07_5 = ?, A07_6 = ?, A07_7 = ?, A07_8 = ?, A08_1 = ?, A08_2 = ?, A09_1 = ?, A09_2 = ?, A10_1 = ?, A10_2 = ?, A11_1 = ?, A11_2 = ?, A11_3 = ?, A12_1 = ?, A12_2 = ?, A13_1 = ?, A13_2 = ?, A14_1 = ?, A14_2 = ?, A15_1 = ?, A15_2 = ?, A16_1 = ?, A16_2 = ?, A16_3 = ?, A16_4 = ?, A16_5 = ?, A16_6 = ?, buyname = ?, buytel = ?, buyaddr = ?, buyemail = ?, pay = ?, gotime = ?, [memo] = ?, recall = ?, rememo = ?, buytime = ?, posttime = ? WHERE ([no] = ?)">
        <DeleteParameters>
            <asp:Parameter Name="no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="A01_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A01_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A01_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A02_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A02_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A03_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A03_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A04_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A05_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A05_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A05_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A06_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A06_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A06_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_4" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_5" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_6" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_7" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A07_8" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A08_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A08_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A09_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A09_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A10_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A10_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A11_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A11_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A11_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A12_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A12_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A13_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A13_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A14_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A14_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A15_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A15_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_1" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_2" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_3" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_4" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_5" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="A16_6" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="buyname" Type="String" />
            <asp:Parameter Name="buytel" Type="String" />
            <asp:Parameter Name="buyaddr" Type="String" />
            <asp:Parameter Name="buyemail" Type="String" />
            <asp:Parameter Name="pay" Type="String" />
            <asp:Parameter Name="gotime" Type="String" />
            <asp:Parameter Name="memo" Type="String" />
            <asp:Parameter Name="recall" Type="Boolean" />
            <asp:Parameter Name="rememo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="A01_1" Type="Int32" />
            <asp:Parameter Name="A01_2" Type="Int32" />
            <asp:Parameter Name="A01_3" Type="Int32" />
            <asp:Parameter Name="A02_1" Type="Int32" />
            <asp:Parameter Name="A02_2" Type="Int32" />
            <asp:Parameter Name="A03_1" Type="Int32" />
            <asp:Parameter Name="A03_2" Type="Int32" />
            <asp:Parameter Name="A04_1" Type="Int32" />
            <asp:Parameter Name="A05_1" Type="Int32" />
            <asp:Parameter Name="A05_2" Type="Int32" />
            <asp:Parameter Name="A05_3" Type="Int32" />
            <asp:Parameter Name="A06_1" Type="Int32" />
            <asp:Parameter Name="A06_2" Type="Int32" />
            <asp:Parameter Name="A06_3" Type="Int32" />
            <asp:Parameter Name="A07_1" Type="Int32" />
            <asp:Parameter Name="A07_2" Type="Int32" />
            <asp:Parameter Name="A07_3" Type="Int32" />
            <asp:Parameter Name="A07_4" Type="Int32" />
            <asp:Parameter Name="A07_5" Type="Int32" />
            <asp:Parameter Name="A07_6" Type="Int32" />
            <asp:Parameter Name="A07_7" Type="Int32" />
            <asp:Parameter Name="A07_8" Type="Int32" />
            <asp:Parameter Name="A08_1" Type="Int32" />
            <asp:Parameter Name="A08_2" Type="Int32" />
            <asp:Parameter Name="A09_1" Type="Int32" />
            <asp:Parameter Name="A09_2" Type="Int32" />
            <asp:Parameter Name="A10_1" Type="Int32" />
            <asp:Parameter Name="A10_2" Type="Int32" />
            <asp:Parameter Name="A11_1" Type="Int32" />
            <asp:Parameter Name="A11_2" Type="Int32" />
            <asp:Parameter Name="A11_3" Type="Int32" />
            <asp:Parameter Name="A12_1" Type="Int32" />
            <asp:Parameter Name="A12_2" Type="Int32" />
            <asp:Parameter Name="A13_1" Type="Int32" />
            <asp:Parameter Name="A13_2" Type="Int32" />
            <asp:Parameter Name="A14_1" Type="Int32" />
            <asp:Parameter Name="A14_2" Type="Int32" />
            <asp:Parameter Name="A15_1" Type="Int32" />
            <asp:Parameter Name="A15_2" Type="Int32" />
            <asp:Parameter Name="A16_1" Type="Int32" />
            <asp:Parameter Name="A16_2" Type="Int32" />
            <asp:Parameter Name="A16_3" Type="Int32" />
            <asp:Parameter Name="A16_4" Type="Int32" />
            <asp:Parameter Name="A16_5" Type="Int32" />
            <asp:Parameter Name="A16_6" Type="Int32" />
            <asp:Parameter Name="buyname" Type="String" />
            <asp:Parameter Name="buytel" Type="String" />
            <asp:Parameter Name="buyaddr" Type="String" />
            <asp:Parameter Name="buyemail" Type="String" />
            <asp:Parameter Name="pay" Type="String" />
            <asp:Parameter Name="gotime" Type="String" />
            <asp:Parameter Name="memo" Type="String" />
            <asp:Parameter Name="recall" Type="Boolean" />
            <asp:Parameter Name="rememo" Type="String" />
            <asp:Parameter Name="buytime" Type="DateTime" />
            <asp:Parameter Name="posttime" Type="DateTime" />
            <asp:Parameter Name="no" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</p>
</asp:Content>

