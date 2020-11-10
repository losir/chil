<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/myAdmin.master" AutoEventWireup="true" CodeFile="admin_mangerList.aspx.cs" Inherits="admin_admin_mangerList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <img src="images/admin_List.png" style="width: 810px; height: 45px" /><br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataKeyNames="編號" DataSourceID="admin" 
            EnableModelValidation="True" ForeColor="Black" GridLines="None" Width="98%">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField InsertVisible="False" SortExpression="編號">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("編號") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <img alt="" src="../images/icon/06006154.gif" 
    style="width: 20px; height: 20px" />
                    </ItemTemplate>
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名">
                <HeaderStyle HorizontalAlign="Left" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="帳號" HeaderText="帳號" SortExpression="帳號">
                <HeaderStyle HorizontalAlign="Left" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="編輯"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('您確定要刪除嗎');" Text="刪除"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Width="80px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
    <p>
        <asp:AccessDataSource ID="admin" runat="server" DataFile="~/App_Data/lin.mdb" 
            DeleteCommand="DELETE FROM [admin] WHERE [編號] = ?" 
            InsertCommand="INSERT INTO [admin] ([編號], [姓名], [帳號], [密碼], [寫入時間]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [admin] ORDER BY [編號] DESC" 
            UpdateCommand="UPDATE [admin] SET [姓名] = ?, [帳號] = ?, [密碼] = ?, [寫入時間] = ? WHERE [編號] = ?">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="編號" Type="Int32" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="帳號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter Name="寫入時間" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="帳號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter Name="寫入時間" Type="DateTime" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

