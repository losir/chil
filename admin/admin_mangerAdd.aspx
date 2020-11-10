<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/myAdmin.master" AutoEventWireup="true" CodeFile="admin_mangerAdd.aspx.cs" Inherits="admin_admin_mangerAdd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <img src="images/admin_List_add.png" style="width: 810px; height: 45px" /><br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="編號" 
            DataSourceID="adminMan" DefaultMode="Insert" EnableModelValidation="True" 
            Width="98%" oniteminserted="FormView1_ItemInserted">
            <EditItemTemplate>
                <table border="1" style="width: 100%; border-style: solid; border-width: 1px">
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>編號</b></td>
                        <td>
                            <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>姓名</b></td>
                        <td>
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>帳號</b></td>
                        <td>
                            <asp:TextBox ID="帳號TextBox" runat="server" Text='<%# Bind("帳號") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>密碼</b></td>
                        <td>
                            &nbsp;<asp:TextBox ID="密碼TextBox" runat="server" Text='<%# Bind("密碼") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            &nbsp;</td>
                        <td>
                            &nbsp;
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table border="1" style="width: 100%; border-style: solid; border-width: 1px">
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>姓名</b></td>
                        <td>
                            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>帳號</b></td>
                        <td>
                            <asp:TextBox ID="帳號TextBox" runat="server" Text='<%# Bind("帳號") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>密碼</b></td>
                        <td>
                            <asp:TextBox ID="密碼TextBox" runat="server" Text='<%# Bind("密碼") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            &nbsp;</td>
                        <td>
                            &nbsp;
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="送出" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <table border="1" style="width: 100%; border-style: solid; border-width: 1px">
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>編號</b></td>
                        <td>
                            <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>姓名</b></td>
                        <td>
                            <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>帳號</b></td>
                        <td>
                            <asp:Label ID="帳號Label" runat="server" Text='<%# Bind("帳號") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; text-align: center">
                            <b>密碼</b></td>
                        <td>
                            &nbsp;<asp:Label ID="密碼Label" runat="server" Text='<%# Bind("密碼") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                CommandName="New" Text="新增" />
                            &nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="刪除" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>

    <p>
        <asp:AccessDataSource ID="adminMan" runat="server" 
            DataFile="~/App_Data/lin.mdb" 
            DeleteCommand="DELETE FROM [admin] WHERE [編號] = ?" 
            InsertCommand="INSERT INTO [admin] ([姓名], [帳號], [密碼]) VALUES (?, ?, ?)" 
            SelectCommand="SELECT * FROM [admin] ORDER BY [編號] DESC" 
            UpdateCommand="UPDATE [admin] SET [姓名] = ?, [帳號] = ?, [密碼] = ?, [寫入時間] = ? WHERE [編號] = ?">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>

                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="帳號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />

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

