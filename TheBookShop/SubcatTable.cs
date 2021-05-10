using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheBookShop
{
    public class SubcatTable
    {
        public int subcat_id { get; set; }
        public int parent_id { get; set; }
        public string subcat_nm { get; set; }
    }
}
