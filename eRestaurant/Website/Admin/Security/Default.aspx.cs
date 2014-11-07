using eRestaurant.BLL.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Security_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Populate the Users Info
              UserGridView.DataSource = new UserManager().Users.ToList();
              UserGridView.DataBind();

            // Populate the Roles Info
              RoleGridView.DataSource = new RoleManager().Roles.ToList();
              RoleGridView.DataBind();
        }
    }
}