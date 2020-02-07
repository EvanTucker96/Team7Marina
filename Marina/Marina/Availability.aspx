<%@ Page Title="Availability" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="Marina.Availability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container text-center">
        <h1>Available Slips</h1>
    </div>
    <div class="d-flex">
        <div class="m-auto">
            <form id="form1" class="text-center" runat="server">
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Slip ID: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Class="form-control">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Dock Name: "></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Width: "></asp:Label>
                    <asp:TextBox ID="txtWidth" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Length: "></asp:Label>
                    <asp:TextBox ID="txtLength" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Water Service: "></asp:Label>
                    <asp:CheckBox ID="water" runat="server" onclick="return false;" Class="form-control" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Electrical Service: "></asp:Label>
                    <asp:CheckBox ID="electric" runat="server" onclick="return false;" Class="form-control" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
