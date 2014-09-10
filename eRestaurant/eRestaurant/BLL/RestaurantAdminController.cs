using eRestaurant.DAL;
using eRestaurant.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurant.BLL
{
    public class RestaurantAdminController
    {
        #region Manage Tables
        public List<Table> ListAllTables()
        {
            using (RestaurantContext context = new RestaurantContext())
            {
                return context.Tables.ToList();
            }
        }
        #endregion
    }
}
