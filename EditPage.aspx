<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditPage.aspx.cs" Inherits="EditPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2><asp:Label ID="Label2" runat="server" Text="Editing"></asp:Label></h2> </div>
       <div> <h4><asp:Label ID="Label3" runat="server" Text="You can change the category name and total amount in here."></asp:Label></h4> </div>
    <table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 259px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 259px">Category Name:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 259px">Amount:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 259px">&nbsp;</td>
        <td style="margin-left: 40px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 259px">&nbsp;</td>
        <td style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" Text="Update" Width="125px" Height="32px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

