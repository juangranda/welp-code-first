using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Welp.Models
{
    public class BusinessType
    {
        // properties
        public int BusinessTypeID { get; set; }
        [MaxLength(50)]
        public string BusinessTypeName { get; set; }

        // navigation properties
        public virtual ICollection<Business> Businesses { get; set; }
    }
}