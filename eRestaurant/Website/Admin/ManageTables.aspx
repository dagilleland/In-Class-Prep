<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageTables.aspx.cs" Inherits="Admin_ManageTables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row col-md-12">
        <h1>Manage Tables</h1>
        <div data-style="bootstrap">
            <fieldset data-style="inline">
                <asp:Label ID="Label1" runat="server" Text="Select Table" AssociatedControlID="TablesDropDown" />
                <asp:DropDownList ID="TablesDropDown" runat="server"></asp:DropDownList>
                <asp:LinkButton ID="ShowTable" runat="server" Text="Show Table" />
            </fieldset>
        </div>
    </div>
</asp:Content>

