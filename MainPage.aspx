<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:Panel ID="Panel1" runat="server">--%>
        <table class="nav-justified">
            <tr>
                <td style="height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
        </table>
<%--</asp:Panel>--%>
    <div>
        <table class="nav-justified">
            <tr>
                <td style="font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif; width: 189px; height: 20px;">&nbsp; Category Name</td>
                <td style="font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif; width: 98px; height: 20px;">Amount</td>
                <td style="font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif; height: 20px; width: 58px;">Edit</td>
                <td style="font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif; height: 20px;">Reset Amount</td>
            </tr>
            <tr>
                <td style="width: 189px">&nbsp;</td>
                <td style="width: 98px">&nbsp;</td>
                <td style="width: 58px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        
        <table class="nav-justified" style="width: 104%">
         
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("Icon") %>' Width="50px" />
                </td>
                <td style="width: 33px">&nbsp;</td>
                <td style="width: 93px"><a href='AmountAdd.aspx?id=<%#Eval("id")%>' style="text-align: justify">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                    </a></td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                    $</td>
                <td>&nbsp;</td>
                <td style="width: 30px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 42px; margin-left: 200px"><a href='EditPage.aspx?id=<%#Eval("id")%>&amp;edit=edit'>
                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/edit.png" Width="29px" />
                    </a></td>
                <td style="width: 19px">&nbsp;</td>
                <td><a href='MainPage.aspx?id=<%#Eval("id")%>&amp;doing=delete' style="text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete_dustbin-512.png" Width="30px" />
                    </a></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    <div>&nbsp;&nbsp;&nbsp;
        </div>
    <div>
</div>
</asp:Content>

