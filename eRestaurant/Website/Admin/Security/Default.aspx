<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Security_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row jumbotron">
        <h1>Site Administration</h1>
    </div>
    <div class="row">
        <div class="col-md-9">
            <h2>Users</h2>
            <asp:ListView ID="UserListView" runat="server"
                ItemType="eRestaurant.Entities.Security.ApplicationUser"
                OnItemCommand="UserListView_ItemCommand">
<%--
    //     DateTime in UTC when lockout ends, any time in the past is considered not
    //     locked out.
    public virtual DateTime? LockoutEndDateUtc { get; set; }

    //     The salted/hashed form of the user password
    public virtual string PasswordHash { get; set; }

    //     A random value that should change whenever a users credentials have changed
    //     (password changed, login removed)
    public virtual string SecurityStamp { get; set; }
--%>
                <EditItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:LinkButton runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox ID="UserNameTextBox" runat="server"
                                ToolTip="User name"
                                Text='<%# BindItem.UserName %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="TwoFactorEnabledCheckBox" runat="server"
                                ToolTip="Is two factor enabled for the user"
                                Text='<%# BindItem.TwoFactorEnabled %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server"
                                ToolTip="Email"
                                Text='<%# BindItem.Email %>' />
                            <br />
                            <asp:TextBox ID="EmailConfirmedTextBox" runat="server"
                                ToolTip="Confirm the Email" />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneNumberTextBox" runat="server"
                                ToolTip="PhoneNumber for the user"
                                Text='<%# BindItem.PhoneNumber %>' />
                            <br />
                            <asp:TextBox ID="PhoneNumberConfirmedTextBox" runat="server"
                                ToolTip="Confirm PhoneNumber for the user" />
                        </td>
                        <td>
                            <asp:CheckBox ID="LockoutEnabledTextBox" runat="server"
                                ToolTip="Is lockout enabled for this user"
                                Checked='<%# BindItem.LockoutEnabled %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AccessFailedCountTextBox" runat="server"
                                ToolTip="Used to record failures for the purposes of lockout"
                                Text='<%# BindItem.AccessFailedCount %>' />
                        </td>
                        <td>
                            <asp:DropDownList ID="WaiterIDDropDown" runat="server"
                                AppendDataBoundItems="true" SelectedValue='<%# BindItem.WaiterID %>'>
                                <asp:ListItem Value="0">[Select an Waiter]</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="IdTextBox" runat="server"
                                ToolTip="User ID (Primary Key)"
                                Text='<%# BindItem.Id %>' />
                        </td>
                        <td>
                            List of Roles
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server">
                        <tr>
                            <td>
                                No users in this site.
                                <asp:LinkButton runat="server" CommandName="AddWaiters" Text="Add Waiters as users" ID="AddWaitersButton" />
                            </td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:LinkButton runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox ID="UserNameTextBox" runat="server"
                                ToolTip="User name"
                                Text='<%# BindItem.UserName %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="TwoFactorEnabledCheckBox" runat="server"
                                ToolTip="Is two factor enabled for the user"
                                Text='<%# BindItem.TwoFactorEnabled %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server"
                                ToolTip="Email"
                                Text='<%# BindItem.Email %>' />
                            <br />
                            <asp:TextBox ID="EmailConfirmedTextBox" runat="server"
                                ToolTip="Confirm the Email" />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneNumberTextBox" runat="server"
                                ToolTip="PhoneNumber for the user"
                                Text='<%# BindItem.PhoneNumber %>' />
                            <br />
                            <asp:TextBox ID="PhoneNumberConfirmedTextBox" runat="server"
                                ToolTip="Confirm PhoneNumber for the user" />
                        </td>
                        <td>
                            <asp:CheckBox ID="LockoutEnabledTextBox" runat="server"
                                ToolTip="Is lockout enabled for this user"
                                Checked='<%# BindItem.LockoutEnabled %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AccessFailedCountTextBox" runat="server"
                                ToolTip="Used to record failures for the purposes of lockout"
                                Text='<%# BindItem.AccessFailedCount %>' />
                        </td>
                        <td>
                            <asp:DropDownList ID="WaiterIDDropDown" runat="server"
                                AppendDataBoundItems="true" SelectedValue='<%# BindItem.WaiterID %>'>
                                <asp:ListItem Value="0">[Select an Waiter]</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="IdTextBox" runat="server"
                                ToolTip="User ID (Primary Key)"
                                Text='<%# BindItem.Id %>' />
                        </td>
                        <td>
                            List of Roles
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                            <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        </td>
                        <td><asp:Label Text='<%# Item.UserName %>' runat="server" ID="UserNameLabel" /></td>
                        <td><asp:Label Text='<%# Item.TwoFactorEnabled %>' runat="server" ID="TwoFactorEnabledLabel" /></td>
                        <td><asp:Label Text='<%# Item.Email %>' runat="server" ID="EmailLabel" /></td>
                        <td><asp:Label Text='<%# Item.PhoneNumber %>' runat="server" ID="PhoneNumberLabel" /></td>
                        <td><asp:Label Text='<%# Item.LockoutEnabled %>' runat="server" ID="LockoutEnabledLabel" /></td>
                        <td><asp:Label Text='<%# Item.AccessFailedCount %>' runat="server" ID="AccessFailedCountLabel" /></td>
                        <td><asp:Label Text='<%# Item.WaiterID %>' runat="server" ID="WaiterIDLabel" /></td>
                        <td><asp:Label Text='<%# Item.Id %>' runat="server" ID="IdLabel" /></td>
                        <td><asp:Label Text='<%# Item.Roles.Count %>' runat="server" ID="RolesCountLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer"
                                    class="table table-condensed table-hover table-striped">
                                    <tr runat="server">
                                        <th runat="server">Action</th>
                                        <th runat="server">User Name</th>
                                        <th runat="server">Two Factor</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">Phone</th>
                                        <th runat="server">Lockout Enabled</th>
                                        <th runat="server">Access Failed Count</th>
                                        <th runat="server">Waiter</th>
                                        <th runat="server">Id</th>
                                        <th runat="server">Roles</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>

        <div class="col-md-3">
            <h2>Roles</h2>
            <asp:ListView ID="RoleListView" runat="server"
                ItemType="Microsoft.AspNet.Identity.EntityFramework.IdentityRole"
                OnItemCommand="RoleListView_ItemCommand">
                <EditItemTemplate>
                    <tr>
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server"
                                ToolTip="Name for security role"
                                Text='<%# BindItem.Name %>' />
                        </td>
                        <td>
                            <asp:Label ID="UserCountTextBox" runat="server"
                                ToolTip="Name for security role"
                                TextMode="Number" Text='<%# BindItem.Users.Count %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server">
                        <tr>
                            <td>
                                No roles in this site.
                                <asp:LinkButton runat="server" CommandName="AddDefaultRoles" Text="Add default security roles" ID="AddDefaultRolesButton" />
                            </td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server"
                                ToolTip="Name for security role"
                                Text='<%# BindItem.Name %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UserCountTextBox" runat="server"
                                ToolTip="Name for security role"
                                TextMode="Number" Text='<%# BindItem.Users.Count %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                            <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        </td>
                        <td><asp:Label Text='<%# Item.Name %>' runat="server" ID="NameLabel" /></td>
                        <td><asp:Label Text='<%# Item.Users.Count %>' runat="server" ID="UsersCountLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer"
                                    class="table table-condensed table-hover table-striped">
                                    <tr runat="server">
                                        <th runat="server">Action</th>
                                        <th runat="server">Role Name</th>
                                        <th runat="server">Users</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server">
                                <asp:DataPager runat="server" ID="DataPager2">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
<%--                <EmptyDataTemplate>No roles in this site</EmptyDataTemplate>--%>
    </div></asp:Content>

