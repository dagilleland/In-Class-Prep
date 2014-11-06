using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using eRestaurant.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using eRestaurant.Entities.Security;

namespace eRestaurant.DAL
{
    internal class ApplicationDbContext : IdentityDbContext<ApplicationUser, ApplicationRole, string, IdentityUserLogin, IdentityUserRole, IdentityUserClaim>
    {
        public ApplicationDbContext()
            : base("DefaultConnection")
        {
        }
    }
}
