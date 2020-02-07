<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Marina.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="d-flex">
        <div class="m-auto">
            <form id="form1" runat="server">
                <div>

                    <table class="auto-style1">
                        <tr>
                            <td colspan="6" style="text-align: center; vertical-align: top">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Log In "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="text-align: center">
                                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="First Name: "></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="text-align: center">
                                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password: "></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td style="text-align: center">
                                <asp:Button CssClass="btn btn-secondary" ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="Button1_Click" Text="Log In" />
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>

                </div>
            </form>
        </div>
    </div>
</asp:Content>
