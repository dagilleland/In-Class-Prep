<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageMenuItems.aspx.cs" Inherits="Admin_ManageMenuItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="MenuItemDataSource" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <span style="">ItemID:
                <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /><br />
                Description:
                <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                CurrentPrice:
                <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /><br />
                CurrentCost:
                <asp:Label Text='<%# Eval("CurrentCost") %>' runat="server" ID="CurrentCostLabel" /><br />
                <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" Text="Active" /><br />
                Calories:
                <asp:Label Text='<%# Eval("Calories") %>' runat="server" ID="CaloriesLabel" /><br />
                Comment:
                <asp:Label Text='<%# Eval("Comment") %>' runat="server" ID="CommentLabel" /><br />
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">ItemID:
                <asp:TextBox Text='<%# Bind("ItemID") %>' runat="server" ID="ItemIDTextBox" /><br />
                Description:
                <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
                CurrentPrice:
                <asp:TextBox Text='<%# Bind("CurrentPrice") %>' runat="server" ID="CurrentPriceTextBox" /><br />
                CurrentCost:
                <asp:TextBox Text='<%# Bind("CurrentCost") %>' runat="server" ID="CurrentCostTextBox" /><br />
                <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" Text="Active" /><br />
                Calories:
                <asp:TextBox Text='<%# Bind("Calories") %>' runat="server" ID="CaloriesTextBox" /><br />
                Comment:
                <asp:TextBox Text='<%# Bind("Comment") %>' runat="server" ID="CommentTextBox" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
                <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">ItemID:
                <asp:TextBox Text='<%# Bind("ItemID") %>' runat="server" ID="ItemIDTextBox" /><br />
                Description:
                <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
                CurrentPrice:
                <asp:TextBox Text='<%# Bind("CurrentPrice") %>' runat="server" ID="CurrentPriceTextBox" /><br />
                CurrentCost:
                <asp:TextBox Text='<%# Bind("CurrentCost") %>' runat="server" ID="CurrentCostTextBox" /><br />
                <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" Text="Active" /><br />
                Calories:
                <asp:TextBox Text='<%# Bind("Calories") %>' runat="server" ID="CaloriesTextBox" /><br />
                Comment:
                <asp:TextBox Text='<%# Bind("Comment") %>' runat="server" ID="CommentTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">ItemID:
                <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /><br />
                Description:
                <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                CurrentPrice:
                <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /><br />
                CurrentCost:
                <asp:Label Text='<%# Eval("CurrentCost") %>' runat="server" ID="CurrentCostLabel" /><br />
                <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" Text="Active" /><br />
                Calories:
                <asp:Label Text='<%# Eval("Calories") %>' runat="server" ID="CaloriesLabel" /><br />
                Comment:
                <asp:Label Text='<%# Eval("Comment") %>' runat="server" ID="CommentLabel" /><br />
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">ItemID:
                <asp:Label Text='<%# Eval("ItemID") %>' runat="server" ID="ItemIDLabel" /><br />
                Description:
                <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                CurrentPrice:
                <asp:Label Text='<%# Eval("CurrentPrice") %>' runat="server" ID="CurrentPriceLabel" /><br />
                CurrentCost:
                <asp:Label Text='<%# Eval("CurrentCost") %>' runat="server" ID="CurrentCostLabel" /><br />
                <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" Text="Active" /><br />
                Calories:
                <asp:Label Text='<%# Eval("Calories") %>' runat="server" ID="CaloriesLabel" /><br />
                Comment:
                <asp:Label Text='<%# Eval("Comment") %>' runat="server" ID="CommentLabel" /><br />
                <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource runat="server" ID="MenuItemDataSource" DataObjectTypeName="eRestaurant.Entities.Item" DeleteMethod="DeleteItem" InsertMethod="AddItem" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllItems" TypeName="eRestaurant.BLL.RestaurantAdminController" UpdateMethod="UpdateItem"></asp:ObjectDataSource>
</asp:Content>

