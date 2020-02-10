<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="MarinaRemake.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-a m-auto">
                <div class="m-3"></div>
                <asp:Button CssClass="btn btn-outline-danger float-right" Text="Logout" runat="server" OnClick="Unnamed1_Click" /><br />
                <div class="card m-3 mt-4">
                    <div class="card-body">
                        <h4>Leased Slips</h4>
                        <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CellPadding="4" GridLines="None" AutoGenerateColumns="False" Width="400px">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="Width" HeaderText="Width" ReadOnly="True" SortExpression="Width" />
                                <asp:BoundField DataField="Length" HeaderText="Length" ReadOnly="True" SortExpression="Length" />
                                <asp:CommandField ShowSelectButton="True" SelectText="Remove" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-a m-auto">
                <div class="m-3"></div>
                <div class="card m-3 mt-4">
                    <div class="card-body">
                        <h4>Available Slips</h4>
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" GridLines="None" AutoGenerateColumns="False" Width="400px">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="Width" HeaderText="Width" ReadOnly="True" SortExpression="Width" />
                                <asp:BoundField DataField="Length" HeaderText="Length" ReadOnly="True" SortExpression="Length" />
                                <asp:CommandField ShowSelectButton="True" SelectText="Reserve" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <asp:EntityDataSource ID="MarinaSource" runat="server" ConnectionString="name=MarinaEntities" DefaultContainerName="MarinaEntities" EnableFlattening="False" EntitySetName="Slips" Select="it.[Width], it.[Length], it.[ID]"></asp:EntityDataSource>
</asp:Content>
