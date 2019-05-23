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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int customerID;
            try
            {
                /*
                GridViewDock0.DataSource = DockDB.GetDocks();
                GridViewDock0.DataBind();
                20190517 commented because these are setting up on page
                */
                
                GridViewSlip_Available();
                if (HttpContext.Current.Session["ID"] != null)
                {
                    customerID = Convert.ToInt32(HttpContext.Current.Session["ID"]);
                    LblCustomerName.Text =
                    CustomerDB.GetCustomer(customerID).FirstName
                    + " " + CustomerDB.GetCustomer(customerID).LastName;
                    GridViewCurrentLease.DataSource = LeaseDB.GetLeasesByCustomerID(customerID);
                    GridViewCurrentLease.DataBind();
                }
                

            }
            catch (Exception ex)
            {
                LblDockWarning.Visible = true;
                LblDockWarning.Text = "Dock"+ " "+ex.Message;
                // more ...
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewSlip_Available();
        }
        protected void GridViewSlip_Available()
        {
            GridViewRow dock = GridViewDock0.SelectedRow;
            LblSelectedDock.Text = dock.Cells[1].Text;

            List<Slip> slip_CurrentDock = SlipDB.GetSlips(Convert.ToInt32(dock.Cells[0].Text));
            List<Lease> lease_CurrentLeased = LeaseDB.GetLeases();
            List<Slip> slip_Available = new List<Slip>();
            bool aFlag = true;

            foreach (var i in slip_CurrentDock)
            {
                aFlag = true;
                foreach (var j in lease_CurrentLeased)
                {
                    if (i.ID == j.SlipID)
                    {
                        aFlag = false;
                        break;
                    }
                }
                if (aFlag)
                {
                    slip_Available.Add(i);
                }
            }

            GridViewSlip0.DataSource = slip_Available;
            GridViewSlip0.DataBind();
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            ;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["ID"] != null)
            {
                GridViewRow dock = GridViewSlip0.SelectedRow;
                LeaseDB.AddLease(Convert.ToInt32(dock.Cells[0].Text), 
                    Convert.ToInt32(HttpContext.Current.Session["ID"]));

                GridViewCurrentLease.DataSource = LeaseDB.GetLeasesByCustomerID(
                    Convert.ToInt32(HttpContext.Current.Session["ID"]));
                GridViewCurrentLease.DataBind();
                GridViewSlip_Available();
            }
            else
            {
                LblPromptSignIn.Visible = true;
            }
        }

        protected void GridViewSlip0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}