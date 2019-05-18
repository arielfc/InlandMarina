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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (Session["ID"] != null)
			{
				//	Response.Write("<Script>alert("+Session["ID"]+"'has logged in.') </Script>");
				//SortedList ids = (SortedList)Session["ID"];
				Customer cust = new Customer();
				cust = CustomerDB.GetCustomer((int)Session["ID"]);
				string name = CustomerDB.GetCustomer((int)Session["ID"]).UserName;
				//	CustomerDB.GetCustomer((int)Session["ID"]).UserName;
				Response.Write("<Script>alert('"+name+" has logged in.') </Script>");

		// If a useer has logged in, "LOG IN" need to be replaced with "LOG OUT" or UserName (such as "sarawilliam")
		// |Click-event "log out" need to be created with 'session.remove("ID");' and replace "logout" with "log in" 
			}


		}
    }
}