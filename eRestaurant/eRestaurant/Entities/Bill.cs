using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;

namespace eRestaurant.Entities
{
    public class Bill
    {
        public int BillID { get; set; }
        public DateTime BillDate { get; set; }
        public TimeSpan? OrderPlaced { get; set; }
        public TimeSpan? OrderReady { get; set; }
        public TimeSpan? OrderServed { get; set; }
        public TimeSpan? OrderPaid { get; set; }
        public int NumberInParty { get; set; }
        public bool PaidStatus { get; set; }
        public int WaiterID { get; set; }
        public int? TableID { get; set; }
        public int? ReservationID { get; set; }
        public string Comment { get; set; }

        // Navigation Properties
        public virtual ICollection<BillItem> Items { get; set; }
        public virtual Reservation Reservation { get; set; }
        public virtual Waiter Waiter { get; set; }
        public virtual Table Table { get; set; }

        public Bill()
        {
            BillDate = DateTime.Now;
        }
    }
}
