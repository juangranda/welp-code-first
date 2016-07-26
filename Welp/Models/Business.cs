using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Welp.Models
{
    public class Business
    {
        // properties
        public int BusinessID { get; set; }
        [MaxLength(100)]
        public string BusinessName { get; set; }
        public int BusinessTypeID { get; set; }
        [MaxLength(100)]
        public string Address { get; set; }
        [MaxLength(100)]
        public string Hours { get; set; }
        public int Phone { get; set; }
        public string Menu { get; set; }
        public int? UserID { get; set; }

        // navigation properties
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual ICollection<Picture> Pictures { get; set; }
        public virtual User User { get; set; }
        public virtual BusinessType BusinessType { get; set; }
    }
}