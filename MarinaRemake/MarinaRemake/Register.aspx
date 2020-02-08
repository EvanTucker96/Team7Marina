<%@ Page Title="Marina | Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MarinaRemake.Views.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="d-flex">
        <!-- Register form -->
        <asp:FormView Class="m-auto" ID="FormView1" runat="server" DataSourceID="MarinaSource" DefaultMode="Insert" DataKeyNames="ID">
            <InsertItemTemplate>
                <div class="card m-3" style="min-width: 400px">

                    <div class="card-body">

                        <div class="card-title">
                            <h3>Register</h3>
                        </div>

                        First Name:
                        <br />
                        <asp:TextBox Class="form-control" ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />

                        Last Name:
                        <br />
                        <asp:TextBox Class="form-control" ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />

                        Phone:
                        <br />
                        <asp:TextBox Class="form-control" ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />

                        City:
                        <br />
                        <asp:TextBox Class="form-control" ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />

                        Password:
                        <br />
                        <asp:TextBox Class="form-control" ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />

                        <br />
                        <asp:LinkButton Class="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Register" />
                        &nbsp;
                        <a href="/Login.aspx" class="btn btn-outline-secondary float-right">Login</a>
                    </div>
                </div>
            </InsertItemTemplate>
        </asp:FormView>

        <!-- Marina Customer Data Source -->
        <asp:EntityDataSource ID="MarinaSource" runat="server" ConnectionString="name=MarinaEntities" DefaultContainerName="MarinaEntities" EnableFlattening="False" EntitySetName="Customers" EnableInsert="True" EntityTypeFilter="Customer" OnInserted="MarinaSource_Inserted" OnInserting="MarinaSource_Inserting"></asp:EntityDataSource>
    </div>
</asp:Content>
