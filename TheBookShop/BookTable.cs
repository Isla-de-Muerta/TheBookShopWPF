using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheBookShop
{
    public class BookTable
    {
        public int b_id { get; set; }
        public string b_nm { get; set; }
        public string b_subcat { get; set; }
        public string b_desc { get; set; }
        public string b_publisher { get; set; }
        public string b_edition { get; set; }
        public string b_isbn { get; set; }
        public int b_page { get; set; }
        public int b_price { get; set; }
        public string b_img { get; set; }
        public string b_pdf { get; set; }
    }
}
