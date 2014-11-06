<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Security_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row col-md-12">
        <h2>Manage your external logins.</h2>
        <asp:GridView ID="UserGridView" runat="server">
        </asp:GridView>
        <asp:GridView ID="RoleGridView" runat="server">
        </asp:GridView>
    </div>
</asp:Content>

