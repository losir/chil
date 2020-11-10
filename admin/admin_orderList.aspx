<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/myAdmin.master" AutoEventWireup="true" CodeFile="admin_orderList.aspx.cs" Inherits="admin_admin_orderList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <img src="images/admin_order.png" style="width: 810px; height: 45px" /></p>

        姓名：<asp:TextBox ID="TextBox1" runat="server" Width="80px"></asp:TextBox>
&nbsp;&nbsp; 電話：<asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="搜尋" Width="80px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="order_list" EnableModelValidation="True" ForeColor="#333333" 
            GridLines="None" style="font-size: small" Width="98%" DataKeyNames="no">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField InsertVisible="False" SortExpression="no">
                    <ItemTemplate>
                        <img src="../images/icon/06006154.gif" 
    style="width: 20px; height: 20px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("no") %>'></asp:Label>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="no" 
                    DataNavigateUrlFormatString="admin_order_Detail.aspx?no={0}" 
                    DataTextField="buyname" HeaderText="姓名">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="buytel" HeaderText="電話" 
                    SortExpression="buytel" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="buyaddr" HeaderText="地址" SortExpression="buyaddr" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="buyemail" HeaderText="電子郵件" 
                    SortExpression="buyemail" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="pay" HeaderText="付款方式" SortExpression="pay" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="gotime" HeaderText="下單時間" 
                    SortExpression="gotime" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="recall" HeaderText="是否回覆" 
                    SortExpression="recall" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:CheckBoxField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                目前沒有訂資料。
            </EmptyDataTemplate>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
    </p>
    <p>
        <asp:AccessDataSource ID="order_list" runat="server" 
            DataFile="~/App_Data/lin.mdb" 
            
            SelectCommand="SELECT [no], [buyname], [buytel], [buyaddr], [buyemail], [pay], [gotime], [recall] FROM [ordergoods] WHERE (([buyname] LIKE '%' + ? + '%') AND ([buytel] LIKE '%' + ? + '%')) ORDER BY [no] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="buyname" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" DefaultValue="%" Name="buyaddr" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

