<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Marina.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="d-flex">
        <div class="m-auto">
            <div class="form-row">
                <label for="uname"><b>First Name: </b></label>
                <input type="text" class="form-control" placeholder="Enter Username" name="uname" required>
            </div>
            <br />
            <div class="form-row">
                <label for="psw"><b>Password: </b></label>
                <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>
            </div>
            <br />
            <button class="my-2 btn btn-secondary" type="submit">Login</button>
            <label>
                <input type="checkbox" checked="checked" name="remember">
                Remember me
            </label>
        </div>
    </div>
</asp:Content>
