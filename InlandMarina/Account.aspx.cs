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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ID"] != null)
            {
                    int id = Convert.ToInt32(HttpContext.Current.Session["ID"]);
                    Customer customer = new Customer();
                    customer = CustomerDB.GetCustomer(id);
                    Label1.Text = customer.ID.ToString();
                    Label2.Text = customer.FirstName + " " + customer.LastName;
                    Label4.Text = customer.Phone;
                    Label5.Text = customer.City;
                    Label6.Text = customer.FirstName + " " + customer.LastName;

                
                    int customerID = Convert.ToInt32(HttpContext.Current.Session["ID"]);
                    
                    GridViewCurrentLease.DataSource = LeaseDB.GetLeasesByCustomerID(customerID);
                    GridViewCurrentLease.DataBind();
                
            }
        }
    }
}