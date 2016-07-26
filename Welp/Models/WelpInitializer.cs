using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Welp.Models
{
    public class WelpInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<WelpContext>
    {
        protected override void Seed(WelpContext context)
        {
            base.Seed(context);
        }
    }
}