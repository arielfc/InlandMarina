using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using BusinessLayer;

namespace InlandMarina
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* 20190517 yy For Test only
            Customer ct = new Customer();
            string un = "SaraWilliams";
            if ((ct = CustomerDB.GetCustomer(un)) != null)
            {
                Label1.Text = ct.FirstName+ct.LastName;
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}