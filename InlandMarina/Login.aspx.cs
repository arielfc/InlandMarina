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
			string username = TextBox5.Text;
			string hashpwd = CustomerDB.Md5Encrypt32(TextBox6.Text);
			Customer customer = CustomerDB.GetCustomer(username);
			if (customer.UserName == username && hashpwd==customer.PassWord)
			{
			// If both usemname and password match database, set session["ID"] and redirect to home page
			//	Response.Write("<script>alert('Match!')</script>");
				Session["ID"] = customer.ID;
				Response.Redirect("Home.aspx");
			}
			else
			{
			// If neither username nor password match record, pop up error message.
				string message="Incorrect username or password. Please try again.";
				Response.Write("<script>alert('" + message + "')</script>");
			}
		}
	}
}