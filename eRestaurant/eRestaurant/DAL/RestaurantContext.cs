using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using eRestaurant.Entities;

namespace eRestaurant.DAL
{
    internal class RestaurantContext : DbContext
    {
        public RestaurantContext() : base("name=EatIn") { }

        public DbSet<Table> Tables { get; set; }
        public DbSet<SpecialEvent> SpecialEvents { get; set; }
        public DbSet<Reservation> Reservations { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder
                .Entity<Reservation>().HasMany(r => r.Tables)
                .WithMany(t => t.Reservations)
                .Map(mapping =>
                {
                    mapping.ToTable("ReservationTables");
                    mapping.MapLeftKey("ReservationID");
                    mapping.MapRightKey("TableID");
                });
            base.OnModelCreating(modelBuilder);
        }
    }
}
