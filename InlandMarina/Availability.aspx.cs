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
        int customerID = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {/*
                GridViewDock0.DataSource = DockDB.GetDocks();
                GridViewDock0.DataBind();
                20190517 commented because these are setting up on page*/
                
                
                GridViewSlip_Available();
                LblCustomerName.Text =
                    CustomerDB.GetCustomer(customerID).FirstName
                    + " " + CustomerDB.GetCustomer(customerID).LastName;
                GridViewCurrentLease.DataSource = LeaseDB.GetLeasesByCustomerID(customerID);
                GridViewCurrentLease.DataBind();
                /*
                if (CustomerDB.UpdateCustomer(5, "Tom", "Hanks", "568", "Washington"))
                {
                    LblCustomerName.Text = "Good00";
                }
                20190517 for test only */
            }
            catch (Exception ex)
            {
                LblDockWarning.Visible = true;
                LblDockWarning.Text = ex.Message;
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
            GridViewRow dock = GridViewSlip0.SelectedRow;
            
            LeaseDB.AddLease(Convert.ToInt32(dock.Cells[0].Text), customerID);

            GridViewCurrentLease.DataSource = LeaseDB.GetLeasesByCustomerID(customerID);
            GridViewCurrentLease.DataBind();
            GridViewSlip_Available();
        }

        protected void GridViewSlip0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}