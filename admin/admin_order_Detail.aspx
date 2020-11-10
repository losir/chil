<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/myAdmin.master" AutoEventWireup="true" CodeFile="admin_order_Detail.aspx.cs" Inherits="admin_admin_order_Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <img src="images/admin_order.png" 
            style="width: 810px; height: 45px; margin-right: 0px;" /><br />

        <asp:FormView ID="FormView3" runat="server" DataKeyNames="no" 
            DataSourceID="orderDetail" EnableModelValidation="True" Width="98%">
            <EditItemTemplate>
                <table border="1" width="95%">
                    <tr>
                        <th align="left" colspan="4" scope="row" style="width: 64%" width="51%">
                            <table border="1" width="90%">
                                <tr>
                                    <th colspan="2" scope="row">
                                        訂單資料</th>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂單編號</th>
                                    <td width="82%">
                                        <asp:Label ID="noLabel1" runat="server" Text='<%# Eval("no") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%; height: 22px;">
                                        訂購時間</th>
                                    <td style="height: 22px" width="82%">
                                        <asp:TextBox ID="buytimeTextBox" runat="server" Enabled="False" 
                                            Text='<%# Bind("buytime") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂購人姓名</th>
                                    <td>
                                        <asp:TextBox ID="buynameTextBox" runat="server" Text='<%# Bind("buyname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂購人電話</th>
                                    <td>
                                        <asp:TextBox ID="buytelTextBox" runat="server" Text='<%# Bind("buytel") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        收件地址</th>
                                    <td>
                                        <asp:TextBox ID="buyaddrTextBox" runat="server" Text='<%# Bind("buyaddr") %>' 
                                            Width="300px" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        電子郵件</th>
                                    <td>
                                        <asp:TextBox ID="buyemailTextBox" runat="server" 
                                            Text='<%# Bind("buyemail") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        付款方式</th>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("pay") %>'>
                                            <asp:ListItem>貨到付款</asp:ListItem>
                                            <asp:ListItem>銀行匯款</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        到貨時間</th>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("gotime") %>'>
                                            <asp:ListItem Selected="True">早上9-12點</asp:ListItem>
                                            <asp:ListItem>中午12-5點</asp:ListItem>
                                            <asp:ListItem>下午5-8點</asp:ListItem>
                                            <asp:ListItem>中午1點以前</asp:ListItem>
                                            <asp:ListItem Value="下午2-6點"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        備註</th>
                                    <td>
                                        <asp:TextBox ID="memoTextBox" runat="server" Height="60px" 
                                            Text='<%# Bind("memo") %>' TextMode="MultiLine" Width="450px" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        回覆處理</th>
                                    <td>
                                        <asp:CheckBox ID="recallCheckBox" runat="server" 
                                            Checked='<%# Bind("recall") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        管理人留言</th>
                                    <td>
                                        <asp:TextBox ID="rememoTextBox" runat="server" Height="60px" 
                                            Text='<%# Bind("rememo") %>' TextMode="MultiLine" Width="450px" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="no" 
                                            DataSourceID="orderSum" EnableModelValidation="True">
                                            <EditItemTemplate>
                                                no:
                                                <asp:Label ID="noLabel2" runat="server" Text='<%# Eval("no") %>' />
                                                <br />
                                                自製合計:
                                                <asp:TextBox ID="自製合計TextBox" runat="server" Text='<%# Bind("自製合計") %>' />
                                                <br />
                                                其他合計:
                                                <asp:TextBox ID="其他合計TextBox" runat="server" Text='<%# Bind("其他合計") %>' />
                                                <br />
                                                總計:
                                                <asp:TextBox ID="總計TextBox" runat="server" Text='<%# Bind("總計") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="更新" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                自製合計:
                                                <asp:TextBox ID="自製合計TextBox0" runat="server" Text='<%# Bind("自製合計") %>' />
                                                <br />
                                                其他合計:
                                                <asp:TextBox ID="其他合計TextBox0" runat="server" Text='<%# Bind("其他合計") %>' />
                                                <br />
                                                總計:
                                                <asp:TextBox ID="總計TextBox0" runat="server" Text='<%# Bind("總計") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="插入" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                自製商品合計:
                                                <asp:Label ID="自製合計Label" runat="server" style="color: #0000FF" 
                                                    Text='<%# Bind("自製合計", "{0:N0}") %>' />
                                                <br />
                                                其他商品合計:
                                                <asp:Label ID="其他合計Label" runat="server" style="color: #006600" 
                                                    Text='<%# Bind("其他合計", "{0:N0}") %>' />
                                                <br />
                                                總計:
                                                <asp:Label ID="總計Label" runat="server" style="color: #FF0000" 
                                                    Text='<%# Bind("總計", "{0:N0}") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="更新" />
                                        &nbsp;
                                        <asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="取消" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </th>
                    </tr>
                    <tr>
                        <th align="left" bgcolor="#99CC99" scope="row" width="51%">
                            產品名稱</th>
                        <td align="center" bgcolor="#99CC99" class="style5" style="width: 181px">
                            <strong>金額/重量/單位</strong></td>
                        <td align="center" bgcolor="#99CC99" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            120元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:TextBox ID="A01_1TextBox" runat="server" Text='<%# Bind("A01_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A01-2 - (脆)剝皮辣椒-中辣</td>
                        <td align="center" class="style5" style="width: 181px">
                            120元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:TextBox ID="A01_2TextBox" runat="server" Text='<%# Bind("A01_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A01-3 - (脆)剝皮辣椒-小辣<strong> (秋.冬季才有)</strong></td>
                        <td align="center" class="style5" style="width: 181px">
                            120元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:TextBox ID="A01_3TextBox" runat="server" Text='<%# Bind("A01_3") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A02-1 - 紅剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 181px">
                            200元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:TextBox ID="A02_1TextBox" runat="server" Text='<%# Bind("A02_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A02-2 - 紅小魚乾剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 181px">
                            200元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:TextBox ID="A02_2TextBox" runat="server" Text='<%# Bind("A02_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A03-1 - 山豬皮剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 181px">
                            170元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            250元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            150元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            350 元/450g/盒</td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            700 元/450g/盒 
                        </td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            1400 元 /450g/盒</td>
                        <td align="center" class="color01" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            200元瓶</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            200 元/瓶 
                        </td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            200 元/瓶</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_1TextBox" runat="server" Text='<%# Bind("A07_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A07-2 - 朝天辣椒(蒜蓉)</td>
                        <td align="center" class="style5" style="width: 181px">
                            150元/390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            150元/390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_3TextBox" runat="server" Text='<%# Bind("A07_3") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A07-4 - 朝天辣椒(小魚干)</td>
                        <td align="center" class="style5" style="width: 181px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_4TextBox" runat="server" Text='<%# Bind("A07_4") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A07-5 - 朝天辣椒(豆鼓)</td>
                        <td align="center" class="style5" style="width: 181px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_5TextBox" runat="server" Text='<%# Bind("A07_5") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A07-6- 朝天辣椒(小魚干)
                        </td>
                        <td align="center" class="style5" style="width: 181px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_6TextBox" runat="server" Text='<%# Bind("A07_6") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A07-7 - 朝天辣椒(豆鼓)</td>
                        <td align="center" class="style5" style="width: 181px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A07_8TextBox" runat="server" Text='<%# Bind("A07_8") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A08-1 - 脆剝皮辣椒(大罐)</td>
                        <td align="center" class="style5" style="width: 181px">
                            150 元/650g/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A08_1TextBox" runat="server" Text='<%# Bind("A08_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A08-2 - 脆剝皮辣椒(小罐)</td>
                        <td align="center" class="style5" style="width: 181px">
                            120 元/450g/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A08_2TextBox" runat="server" Text='<%# Bind("A08_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A09-1 - 純干貝醬</td>
                        <td align="center" class="style5" style="width: 181px">
                            200 元/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A09_1TextBox" runat="server" Text='<%# Bind("A09_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A09-2 -干貝醬小魚乾</td>
                        <td align="center" class="style5" style="width: 181px">
                            350 元/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A09_2TextBox" runat="server" Text='<%# Bind("A09_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A10-1 - 麻糬(傳統)</td>
                        <td align="center" class="style5" style="width: 181px">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A10_1TextBox" runat="server" Text='<%# Bind("A10_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="height: 26px;">
                            A10-2 - 綜合小麻糬</td>
                        <td align="center" class="style5" style="width: 181px; height: 26px;">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px; height: 26px;">
                            常溫</td>
                        <td align="center" style="height: 26px">
                            <asp:TextBox ID="A10_2TextBox" runat="server" Text='<%# Bind("A10_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A11-1 - 奶油酥條(原味)</td>
                        <td align="center" class="style5" style="width: 181px">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A11_1TextBox" runat="server" Text='<%# Bind("A11_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A11-2 - 奶油酥條(蒜味)</td>
                        <td align="center" class="style5" style="width: 181px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A11_2TextBox" runat="server" Text='<%# Bind("A11_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A11-3 - 奶油酥條(巧克力)</td>
                        <td align="center" class="style5" style="width: 181px">
                            200元/包</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            120元/包(6條)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A12_1TextBox" runat="server" Text='<%# Bind("A12_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A12-2 - 廣盛堂羊羮</td>
                        <td align="center" class="style5" style="width: 181px">
                            120元/包(6條)</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A13_1TextBox" runat="server" Text='<%# Bind("A13_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A13-2 - 寒天小丸子(咖啡)</td>
                        <td align="center" class="style5" style="width: 181px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A13_2TextBox" runat="server" Text='<%# Bind("A13_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A14-1 - 牛軋糖(原味)</td>
                        <td align="center" class="style5" style="width: 181px">
                            200 元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style5" style="width: 181px">
                            200 元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A14_2TextBox" runat="server" Text='<%# Bind("A14_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A15-1 - 沙琪瑪(原味)</td>
                        <td align="center" class="style5" style="width: 181px">
                            120 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A15_1TextBox" runat="server" Text='<%# Bind("A15_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A15-2 - 沙琪瑪(黑糖)</td>
                        <td align="center" class="style5" style="width: 181px">
                            120 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A15_2TextBox" runat="server" Text='<%# Bind("A15_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A16-1 - 土鳳梨原味</td>
                        <td align="center" class="style5" style="width: 181px">
                            380元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A16_1TextBox" runat="server" Text='<%# Bind("A16_1") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A16-2 - 蔓越莓原果</td>
                        <td align="center" class="style5" style="width: 181px">
                            380元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A16_2TextBox" runat="server" Text='<%# Bind("A16_2") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="height: 26px;">
                            A16-3 - 莉綠茶葉</td>
                        <td align="center" class="style5" style="width: 181px; height: 26px;">
                            380元/盒</td>
                        <td align="center" class="style6" style="width: 98px; height: 26px;">
                            常溫</td>
                        <td align="center" style="height: 26px">
                            <asp:TextBox ID="A16_3TextBox" runat="server" Text='<%# Bind("A16_3") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="height: 26px;">
                            A16-4 - 墨西哥辣椒</td>
                        <td align="center" class="style5" style="width: 181px; height: 26px;">
                            380元/盒</td>
                        <td align="center" class="style6" style="width: 98px; height: 26px;">
                            常溫</td>
                        <td align="center" style="height: 26px">
                            <asp:TextBox ID="A16_4TextBox" runat="server" Text='<%# Bind("A16_4") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A16-5 - 檸檬起司&nbsp;&nbsp;</td>
                        <td align="center" class="style5" style="width: 181px">
                            380元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:TextBox ID="A16_5TextBox" runat="server" Text='<%# Bind("A16_5") %>' 
                                Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row">
                            A16-6 - 經典鳳凰酥</td>
                        <td align="center" class="style5" style="width: 181px">
                            400元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
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
                        <td align="center" class="style9" colspan="4" scope="row">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table border="1" width="95%">
                    <tr>
                        <th align="left" colspan="4" scope="row" style="width: 64%" width="51%">
                            <table border="1" width="90%">
                                <tr>
                                    <th colspan="2" scope="row">
                                        訂單資料</th>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂單編號</th>
                                    <td width="82%">
                                        <asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%; height: 22px;">
                                        訂購時間</th>
                                    <td style="height: 22px" width="82%">
                                        <asp:Label ID="buytimeLabel" runat="server" Text='<%# Bind("buytime") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂購人姓名</th>
                                    <td>
                                        <asp:Label ID="buynameLabel" runat="server" Text='<%# Bind("buyname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        訂購人電話</th>
                                    <td>
                                        <asp:Label ID="buytelLabel" runat="server" Text='<%# Bind("buytel") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        收件地址</th>
                                    <td>
                                        <asp:Label ID="buyaddrLabel" runat="server" Text='<%# Bind("buyaddr") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        電子郵件</th>
                                    <td>
                                        <asp:Label ID="buyemailLabel" runat="server" Text='<%# Bind("buyemail") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        付款方式</th>
                                    <td>
                                        <asp:Label ID="payLabel" runat="server" Text='<%# Bind("pay") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        到貨時間</th>
                                    <td>
                                        <asp:Label ID="gotimeLabel" runat="server" Text='<%# Bind("gotime") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        備註</th>
                                    <td>
                                        <asp:Label ID="memoLabel" runat="server" Text='<%# Bind("memo") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        回覆處理</th>
                                    <td>
                                        <asp:CheckBox ID="recallCheckBox" runat="server" 
                                            Checked='<%# Bind("recall") %>' Enabled="false" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        管理人留言</th>
                                    <td>
                                        <asp:Label ID="rememoLabel" runat="server" Text='<%# Bind("rememo") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="no" 
                                            DataSourceID="orderSum" EnableModelValidation="True">
                                            <EditItemTemplate>
                                                no:
                                                <asp:Label ID="noLabel1" runat="server" Text='<%# Eval("no") %>' />
                                                <br />
                                                自製合計:
                                                <asp:TextBox ID="自製合計TextBox" runat="server" Text='<%# Bind("自製合計") %>' />
                                                <br />
                                                其他合計:
                                                <asp:TextBox ID="其他合計TextBox" runat="server" Text='<%# Bind("其他合計") %>' />
                                                <br />
                                                總計:
                                                <asp:TextBox ID="總計TextBox" runat="server" Text='<%# Bind("總計") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="更新" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                自製合計:
                                                <asp:TextBox ID="自製合計TextBox0" runat="server" Text='<%# Bind("自製合計") %>' />
                                                <br />
                                                其他合計:
                                                <asp:TextBox ID="其他合計TextBox0" runat="server" Text='<%# Bind("其他合計") %>' />
                                                <br />
                                                總計:
                                                <asp:TextBox ID="總計TextBox0" runat="server" Text='<%# Bind("總計") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="插入" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                自製商品合計:
                                                <asp:Label ID="自製合計Label" runat="server" style="color: #0000FF" 
                                                    Text='<%# Bind("自製合計", "{0:N0}") %>' />
                                                <br />
                                                其他商品合計:
                                                <asp:Label ID="其他合計Label" runat="server" style="color: #006600" 
                                                    Text='<%# Bind("其他合計", "{0:N0}") %>' />
                                                <br />
                                                總計:
                                                <asp:Label ID="總計Label" runat="server" style="color: #FF0000" 
                                                    Text='<%# Bind("總計", "{0:N0}") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        <asp:LinkButton ID="EditButton0" runat="server" CausesValidation="False" 
                                            CommandName="Edit" Text="編輯" />
                                        &nbsp;
                                        <asp:LinkButton ID="DeleteButton0" runat="server" CausesValidation="False" 
                                            CommandName="Delete" onclientclick="retrun confirm(&quot;您確定要刪除?&quot;)" 
                                            Text="刪除" />
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="width: 19%">
                                        &nbsp;</th>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </th>
                    </tr>
                    <tr>
                        <th align="left" bgcolor="#99CC99" scope="row" style="width: 52%">
                            產品名稱</th>
                        <td align="center" bgcolor="#99CC99" class="style5" style="width: 184px">
                            <strong>金額/重量/單位</strong></td>
                        <td align="center" bgcolor="#99CC99" class="style6" style="width: 98px">
                            <strong>配送方式</strong></td>
                        <td align="center" bgcolor="#99CC99" width="13%">
                            數量</td>
                    </tr>
                    <tr>
                        <td class="fontcolorsize" colspan="4" scope="row">
                            林媽媽剝皮辣椒-冷凍商品</td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A01-1 - (脆)剝皮辣椒-大辣</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A01_1Label" runat="server" Text='<%# Bind("A01_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A01-2 - (脆)剝皮辣椒-中辣</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A01_2Label" runat="server" Text='<%# Bind("A01_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A01-3 - (脆)剝皮辣椒-小辣<strong> (秋.冬季才有)</strong></td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A01_3Label" runat="server" Text='<%# Bind("A01_3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A02-1 - 紅剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A02_1Label" runat="server" Text='<%# Bind("A02_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A02-2 - 紅小魚乾剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A02_2Label" runat="server" Text='<%# Bind("A02_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%; height: 26px;">
                            A03-1 - 山豬皮剝皮辣椒</td>
                        <td align="center" class="style5" style="width: 184px; height: 26px;">
                            170元/罐</td>
                        <td align="center" class="color01" style="width: 98px; height: 26px;">
                            冷凍</td>
                        <td align="center" style="height: 26px">
                            <asp:Label ID="A03_1Label" runat="server" Text='<%# Bind("A03_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A03-2 - 純山豬皮 
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            250元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A03_2Label" runat="server" Text='<%# Bind("A03_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A04-1 - 自製小魚干 
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/罐</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A04_1Label" runat="server" Text='<%# Bind("A04_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A05-1 - 禮盒(3 瓶裝)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            350 元/450g/盒</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A05_1Label" runat="server" Text='<%# Bind("A05_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A05-2 - 禮盒(6 瓶裝)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            900 元/450g/盒 
                        </td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A05_2Label" runat="server" Text='<%# Bind("A05_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A05-3 - 禮盒(12 瓶裝)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            1600 元 /450g/盒</td>
                        <td align="center" class="color01" style="width: 98px">
                            冷凍</td>
                        <td align="center">
                            <asp:Label ID="A05_3Label" runat="server" Text='<%# Bind("A05_3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" colspan="4">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A06-1 - 雞心椒(小)</td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/瓶</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A06_1Label" runat="server" Text='<%# Bind("A06_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A06-2 - 雞心椒(紅)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            200 元/瓶 
                        </td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A06_2Label" runat="server" Text='<%# Bind("A06_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A06-3 - 雞心椒(綠)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            200 元/瓶</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A06_3Label" runat="server" Text='<%# Bind("A06_3") %>' />
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
                        <td scope="row" style="width: 52%">
                            A07-1 - 朝天辣椒(原味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_1Label" runat="server" Text='<%# Bind("A07_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-2 - 朝天辣椒(蒜味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_2Label" runat="server" Text='<%# Bind("A07_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-3 - 朝天辣椒(金鈎蝦)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_3Label" runat="server" Text='<%# Bind("A07_3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-4 - 朝天辣椒(小魚干)</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_4Label" runat="server" Text='<%# Bind("A07_4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-5 - 朝天辣椒(豆鼓)</td>
                        <td align="center" class="style5" style="width: 184px">
                            150元/ 390g/罐(小)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_5Label" runat="server" Text='<%# Bind("A07_5") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-6 - 朝天辣椒(小魚干)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_6Label" runat="server" Text='<%# Bind("A07_6") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-7 - 朝天辣椒(豆鼓)</td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_7Label" runat="server" Text='<%# Bind("A07_7") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A07-8- 朝天辣椒(蒜味)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/650g/罐(大)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A07_8Label" runat="server" Text='<%# Bind("A07_8") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A08-1 - 脆剝皮辣椒(大罐)</td>
                        <td align="center" class="style5" style="width: 184px">
                            150 元/650g/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A08_1Label" runat="server" Text='<%# Bind("A08_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A08-2 - 脆剝皮辣椒(小罐)</td>
                        <td align="center" class="style5" style="width: 184px">
                            120 元/450g/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A08_2Label" runat="server" Text='<%# Bind("A08_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A09-1 - 純干貝醬</td>
                        <td align="center" class="style5" style="width: 184px">
                            200 元/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A09_1Label" runat="server" Text='<%# Bind("A09_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A09-2 -干貝醬小魚乾</td>
                        <td align="center" class="style5" style="width: 184px">
                            350 元/罐</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A09_2Label" runat="server" Text='<%# Bind("A09_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A10-1 - 麻糬(傳統)</td>
                        <td align="center" class="style5" style="width: 184px">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A10_1Label" runat="server" Text='<%# Bind("A10_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A10-2 - 綜合小麻糬</td>
                        <td align="center" class="style5" style="width: 184px">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A10_2Label" runat="server" Text='<%# Bind("A10_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A11-1 - 奶油酥條(原味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            100元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A11_1Label" runat="server" Text='<%# Bind("A11_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A11-2 - 奶油酥條(蒜味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A11_2Label" runat="server" Text='<%# Bind("A11_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A11-3 - 奶油酥條(巧克力)</td>
                        <td align="center" class="style5" style="width: 184px">
                            200元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A11_3Label" runat="server" Text='<%# Bind("A11_3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A12-1 - 玉里羊羮 
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            120元/包(6條)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A12_1Label" runat="server" Text='<%# Bind("A12_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A12-2 - 廣盛堂羊羮</td>
                        <td align="center" class="style5" style="width: 184px">
                            120元/包(6條)</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A12_2Label" runat="server" Text='<%# Bind("A12_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A13-1 - 寒天小丸子(黑糖)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A13_1Label" runat="server" Text='<%# Bind("A13_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A13-2 - 寒天小丸子(咖啡)</td>
                        <td align="center" class="style5" style="width: 184px">
                            120元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A13_2Label" runat="server" Text='<%# Bind("A13_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A14-1 - 牛軋糖(原味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            200 元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A14_1Label" runat="server" Text='<%# Bind("A14_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A14-2 - 牛軋糖(蔓越莓)
                        </td>
                        <td align="center" class="style5" style="width: 184px">
                            200 元/盒</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A14_2Label" runat="server" Text='<%# Bind("A14_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A15-1 - 沙琪瑪(原味)</td>
                        <td align="center" class="style5" style="width: 184px">
                            120 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A15_1Label" runat="server" Text='<%# Bind("A15_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A15-2 - 沙琪瑪(黑糖)</td>
                        <td align="center" class="style5" style="width: 184px">
                            120 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A15_2Label" runat="server" Text='<%# Bind("A15_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-1 - 土鳳梨原味</td>
                        <td align="center" class="style5" style="width: 184px">
                            380 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_1Label" runat="server" Text='<%# Bind("A16_1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-2 - 蔓越莓原果</td>
                        <td align="center" class="style5" style="width: 184px">
                            380 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_2Label" runat="server" Text='<%# Bind("A16_2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-3 - 莉綠茶葉</td>
                        <td align="center" class="style5" style="width: 184px">
                            380 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_3Label" runat="server" Text='<%# Bind("A16_3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-4 - 墨西哥辣椒</td>
                        <td align="center" class="style5" style="width: 184px">
                            380 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_4Label" runat="server" Text='<%# Bind("A16_4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-5 - 檸檬起司</td>
                        <td align="center" class="style5" style="width: 184px">
                            380 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_5Label" runat="server" Text='<%# Bind("A16_5") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td scope="row" style="width: 52%">
                            A16-6 - 經典鳳凰酥</td>
                        <td align="center" class="style5" style="width: 184px">
                            400 元/包</td>
                        <td align="center" class="style6" style="width: 98px">
                            常溫</td>
                        <td align="center">
                            <asp:Label ID="A16_6Label" runat="server" Text='<%# Bind("A16_6") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" height="18" scope="row">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style9" colspan="4" scope="row">
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="刪除" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>

    <p>
        &nbsp;</p>
    <p>
        <asp:AccessDataSource ID="orderDetail" runat="server" 
            DataFile="~/App_Data/lin.mdb" 
            DeleteCommand="DELETE FROM [ordergoods] WHERE [no] = ?" 
            InsertCommand="INSERT INTO ordergoods([no], A01_1, A01_2, A01_3, A02_1, A02_2, A03_1, A03_2, A04_1, A05_1, A05_2, A05_3, A06_1, A06_2, A06_3, A07_1, A07_2, A07_3, A07_4, A07_5, A07_6, A07_7, A07_8, A08_1, A08_2, A09_1, A09_2, A10_1, A10_2, A11_1, A11_2, A11_3, A12_1, A12_2, A13_1, A13_2, A14_1, A14_2, A15_1, A15_2, A16_1, A16_2, A16_3, A16_4, A16_5, A16_6, buyname, buytel, buyaddr, buyemail, pay, gotime, [memo], recall, rememo, buytime, posttime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [ordergoods] WHERE ([no] = ?)" 
            
            
            
            
            
            UpdateCommand="UPDATE ordergoods SET A01_1 = ?, A01_2 = ?, A01_3 = ?, A02_1 = ?, A02_2 = ?, A03_1 = ?, A03_2 = ?, A04_1 = ?, A05_1 = ?, A05_2 = ?, A05_3 = ?, A06_1 = ?, A06_2 = ?, A06_3 = ?, A07_1 = ?, A07_2 = ?, A07_3 = ?, A07_4 = ?, A07_5 = ?, A07_6 = ?, A07_7 = ?, A07_8 = ?, A08_1 = ?, A08_2 = ?, A09_1 = ?, A09_2 = ?, A10_1 = ?, A10_2 = ?, A11_1 = ?, A11_2 = ?, A11_3 = ?, A12_1 = ?, A12_2 = ?, A13_1 = ?, A13_2 = ?, A14_1 = ?, A14_2 = ?, A15_1 = ?, A15_2 = ?, A16_1 = ?, A16_2 = ?, A16_3 = ?, A16_4 = ?, A16_5 = ?, A16_6 = ?, buyname = ?, buytel = ?, buyaddr = ?, buyemail = ?, pay = ?, gotime = ?, [memo] = ?, recall = ?, rememo = ?, buytime = ?, posttime = ? WHERE ([no] = ?)">
            <DeleteParameters>
                <asp:Parameter Name="no" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="no" Type="Int32" />
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
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="no" QueryStringField="no" Type="Int32" />
            </SelectParameters>
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
        <asp:AccessDataSource ID="orderSum" runat="server" 
            DataFile="~/App_Data/lin.mdb" 
            SelectCommand="SELECT * FROM [orderSum] WHERE ([no] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="FormView3" Name="no" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

