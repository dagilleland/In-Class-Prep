using eRestaurant.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageTables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var controller = new RestaurantAdminController();
            var data = controller.ListAllTables();
            TablesDropDown.DataSource = data;
            TablesDropDown.DataTextField = "TableNumber";
            TablesDropDown.DataValueField = "TableID";
            TablesDropDown.DataBind();
        }
    }
}