using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindModelBinding
{
    public partial class CustomersView : System.Web.UI.Page
    {
        NorthwindEntities dataContext = new NorthwindEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<NorthwindModelBinding.Customer> CustomersView_GetData()
        {
            
            var query = from customers in dataContext.Customers
                        select customers;
            return query.AsEnumerable();
        }
    }
}