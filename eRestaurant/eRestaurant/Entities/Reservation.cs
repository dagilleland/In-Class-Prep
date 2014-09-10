using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace eRestaurant.Entities
{
    public class Reservation
    {
        // constants for valid reservation status values
        // B = Booked; C = Complete; N = No-show; X = Cancelled
        public const string Booked = "B";
        public const string Complete = "C";
        public const string NoShow = "N";
        public const string Cancelled = "X";

        public int ReservationID { get; set; }

        public string CustomerName { get; set; }
        public DateTime ReservationDate { get; set; }
        public int NumberInParty { get; set; }
        public string ContactPhone { get; set; }
        // TODO: Attribute to validate acceptable values (constants above)
        public string ReservationStatus { get; set; }
        public string EventCode { get; set; }

        public virtual SpecialEvent Event { get; set; }
        public virtual ICollection<Table> Tables { get; set; }
    }
}
