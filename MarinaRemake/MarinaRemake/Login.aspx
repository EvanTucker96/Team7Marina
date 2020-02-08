<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MarinaRemake.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="d-flex p-3">
        <div class="card m-auto">
            <div class="card-body">
                <div class="card-title">
                    <h3>Login</h3>
                </div>

                <div class="form-group">
                    Name
                        <asp:TextBox ID="TextBox_Name" CssClass="form-control" runat="server"></asp:TextBox>
                    Password
                        <asp:TextBox ID="TextBox_Password" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Button_Submit" CssClass="btn btn-primary" Text="Login" runat="server" OnClick="Button_Submit_Click" />
                <asp:Button ID="Button_Register" CssClass="btn btn-outline-secondary float-right" Text="Register" runat="server" OnClick="Button_Register_Click" />

                <!-- Marina Entity Data Source -->
                <asp:EntityDataSource ID="MarinaSource" runat="server" ConnectionString="name=MarinaEntities" DefaultContainerName="MarinaEntities" EnableFlattening="False" EntitySetName="Customers" Select="it.[FirstName], it.[Password]"></asp:EntityDataSource>
            </div>
        </div>
    </div>
</asp:Content>
