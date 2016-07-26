using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Welp.Models
{
    public class Picture
    {
        // properties
        public int PictureID { get; set; }
        public string PictureURL { get; set; }
        public int UserID { get; set; }
        public int BusinessID { get; set; }

        // navigation properties
        public virtual User User { get; set; }
        public virtual Business Businesses { get; set; }
    }
}