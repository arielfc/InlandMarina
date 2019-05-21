﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using DataLayer;

namespace InlandMarina
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            CustomerDB.AddCustomer(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = TextBox5.Text;
            string hashpwd = CustomerDB.Md5Encrypt32(TextBox6.Text);
            Customer customer = CustomerDB.GetCustomer(username);
            if (customer.UserName == username && hashpwd == customer.PassWord)
            {
                // If both usemname and password match database, set session["ID"] and redirect to home page
                //	Response.Write("<script>alert('Match!')</script>");
                Session["ID"] = customer.ID;
                Response.Redirect("Home.aspx");
            }
            else
            {
                // If neither username nor password match record, pop up error message.
                string message = "Incorrect username or password. Please try again.";
                Response.Write("<script>alert('" + message + "')</script>");
            }
        }
    }
}