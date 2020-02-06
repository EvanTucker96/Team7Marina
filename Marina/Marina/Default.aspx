<%@ Page Title="Marina | Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Marina.Default" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <!-- HEAD -->
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <!-- CONTENT -->

    <div class="container py-2">
        <div class="jumbotron m-0 py-5 bg-transparent">
            <h1 class="display-5">Buy our boat stalls.</h1>
            <p class="lead">
                Welcome to Inland Marina located on the south shore Inland Lake, just a small commute from major centers in the south west.
            </p>
            <p class="lead">
                <a class="btn btn-outline-secondary btn" href="#about" role="button">Learn more</a>
            </p>
        </div>
    </div>

    <hr />

    <div class="container py-2">
        <asp:Image ID="Image1" Class="rounded" runat="server" ImageUrl=".\Image\banner.jpg" Width="100%" />
    </div>

    <hr />

    <div id="about" class="container py-2">
        <div class="row">
            <div class="col d-flex">
                <div class="m-auto text-center">
                    <i class="fas fa-ship anchor-thing text-warning pb-2"></i>
                    <i class="fas fa-anchor anchor-thing text-danger pb-2"></i>
                    <i class="fas fa-water anchor-thing text-success"></i>
                </div>
            </div>
            <div class="col-8">
                <h4>About us</h4>
                <p>
                    Inland Marina was established in the 1967 shortly after Inland Lake was created as a result of the South West damn. From 
                    its humble beginnings, it has grown to be the largest marina on Inland Lake. Due to the warm climate that extends 
                    year-round, Inland Lake has become a popular tourist destination in the south west. 
                    <hr /> Boat owners from California, Arizona, Nevada, and Utah are attracted to the area. Inland Marina has 90 slips 
                    ranging in size from 16 to 32 feet in length. Dock services include electrical and fresh water.
                </p>
                <a href="#" class="btn btn-primary">Book now</a>
                <small><mark>> And all your dreams will come true.</mark></small>
            </div>
        </div>
    </div>

</asp:Content>
