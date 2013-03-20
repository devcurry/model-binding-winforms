using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;

namespace NorthwindModelBinding
{
    public partial class OrdersView : System.Web.UI.Page
    {
        NorthwindEntities dataContext = new NorthwindEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<NorthwindModelBinding.Order> OrdersView_GetData([QueryString("CustomerID")]string CustomerID)
        {
            var query = from orders in dataContext.Orders
                        where orders.CustomerID == CustomerID
                        select orders;
            return query;
        }
    }
}