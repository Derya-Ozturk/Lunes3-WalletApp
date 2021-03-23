<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AmountAdd.aspx.cs" Inherits="CategoryEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2><asp:Label ID="Label2" runat="server" Text="Amount Add"></asp:Label></h2> </div>
       <div> <h4><asp:Label ID="Label3" runat="server" Text="You can add a new income or expense in here."></asp:Label></h4> </div>
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="text-align: inherit">
                <asp:Image ID="Image1" runat="server" Height="70px" Width="70px" />
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: justify; font-weight: bold; height: 20px; width: 208px;"></td>
            
        </tr>
        <tr>
            <td style="text-align: justify; font-weight: bold; width: 208px;">Total:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: justify; font-weight: bold; height: 20px; width: 208px;">Amount To Be Added:</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: justify; font-weight: bold; height: 20px; width: 208px;"></td>
            <td style="height: 20px">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Earnings" />
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Spendings" />
            </td>
        </tr>
        <tr>
            <td style="text-align: justify; font-weight: bold; width: 208px;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Save it" OnClick="Button2_Click" Height="33px" Width="80px" />
            </td>
            </tr>
    </table>
</asp:Content>

