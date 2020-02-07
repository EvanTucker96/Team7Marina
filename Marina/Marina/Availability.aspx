<%@ Page Title="Availability" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="Marina.Availability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="d-flex">
        <div class="m-auto">
            <form id="form1" class="text-center" runat="server">
                <asp:Label ID="Label4" runat="server" Text="Slip ID: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Width: "></asp:Label>
                <asp:TextBox ID="txtWidth" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Length: "></asp:Label>
                <asp:TextBox ID="txtLength" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Dock ID: "></asp:Label>
                <asp:TextBox ID="txtDockID" runat="server"></asp:TextBox>
                <br />
            </form>
        </div>
    </div>
</asp:Content>
