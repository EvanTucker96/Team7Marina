<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="MarinaRemake.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-6">
                <div class="text-center">
                    <h1>Available Slips</h1>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Slip ID: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Class="text-center form-control">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Dock Name: "></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" Class="text-center form-control" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Width: "></asp:Label>
                    <asp:TextBox ID="txtWidth" runat="server" Class="text-center form-control" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Length: "></asp:Label>
                    <asp:TextBox ID="txtLength" runat="server" Class="text-center form-control" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Water Service: "></asp:Label>
                    <asp:CheckBox ID="water" runat="server" onclick="return false;" Class="text-center form-control" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Electrical Service: "></asp:Label>
                    <asp:CheckBox ID="electric" runat="server" onclick="return false;" Class="text-center form-control" />
                </div>
            </div>

            <div class="col-6">
                <div class="text-center">
                    <h1>Dock Services</h1>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Dock Name: "></asp:Label>
                    <asp:TextBox ID="txtDockName2" runat="server" Class="text-center form-control" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Water Services: "></asp:Label>
                    <asp:CheckBox ID="water2" runat="server" onclick="return false;" Class="text-center form-control" />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" Text="Electrical Services: "></asp:Label>
                    <asp:CheckBox ID="electric2" runat="server" onclick="return false;" Class="text-center form-control" />
                </div>
            </div>

        </div>
    </div>

</asp:Content>
