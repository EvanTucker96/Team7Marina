<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Marina.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row-1 text-center">
        <h1>Register Today!</h1>
    </div>
    <br />
    <div class="d-flex">
        <div class="m-auto">
            <form class="text-center" id="main" runat="server">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource1" DefaultMode="Insert">
                    <InsertItemTemplate>
                        First Name:
                <asp:TextBox CssClass="form-control" ID="FirstNameTextBox" required="true" runat="server" Text='<%# Bind("FirstName") %>' />
                <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="FirstNameTextBox" ErrorMessage="Please enter your First Name!" />
                        <br />
                        Last Name:
                <asp:TextBox CssClass="form-control" ID="LastNameTextBox" required="true" runat="server" Text='<%# Bind("LastName") %>' />
                <asp:RequiredFieldValidator runat="server" ID="ReqLName" ControlToValidate="LastNameTextBox" ErrorMessage="Please enter your Last Name!" />
                        <br />
                        Phone:
                <asp:TextBox CssClass="form-control" ID="PhoneTextBox" required="true" runat="server" Text='<%# Bind("Phone") %>' />
                <asp:RequiredFieldValidator runat="server" ID="reqPhone" ControlToValidate="PhoneTextBox" ErrorMessage="Please enter a Phone Number" />
                        <br />
                        City:
                <asp:TextBox CssClass="form-control" ID="CityTextBox" required="true" runat="server" Text='<%# Bind("City") %>' />
                <asp:RequiredFieldValidator runat="server" ID="reqCity" ControlToValidate="CityTextBox" ErrorMessage="Please enter a city" />
                        <br />
                        Password:
                <asp:TextBox CssClass="form-control" ID="PasswordTextBox" required="true" TextMode="Password" runat="server" Text='<%# Bind("Passwords") %>' />
                <asp:RequiredFieldValidator runat="server" ID="reqPassword" ControlToValidate="PasswordTextBox" ErrorMessage="Please enter a password" Display="None" />
                        <br />

                        <asp:LinkButton CssClass="my-2 btn btn-secondary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Submit" />
                        &nbsp;<asp:LinkButton CssClass="my-2 btn btn-primary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                </asp:FormView>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MarinaData" DefaultContainerName="MarinaData" EnableFlattening="False" EntitySetName="Customers" EnableInsert="True" EntityTypeFilter="Customer">
                </asp:EntityDataSource>
            </form>
        </div>
    </div>
</asp:Content>
