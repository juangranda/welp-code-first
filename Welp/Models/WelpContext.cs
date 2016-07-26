using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Welp.Models
{
    public class WelpContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Business> Businesses { get; set; }
        public DbSet<Rating> Ratings { get; set; }
        public DbSet<BusinessType> BusinessTypes { get; set; }
    }
}