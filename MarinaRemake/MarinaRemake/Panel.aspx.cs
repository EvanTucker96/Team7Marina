// Nelson M

using MarinaRemake.Data;
using MarinaRemake.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarinaRemake
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        /// <summary>
        /// Check if user is authenticated, if they aren't send to login, if they are then load
        /// the available slips from the database.
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            // If user isn't authenticated, send to login screen
            if (!Util.IsAuthenticated(Session))
            {
                Response.Redirect("Login.aspx");
            }

            // Using entity framework
            using (var context = new MarinaEntities())
            {
                // grab slips and leases
                var slips = context.Slips;
                var leases = context.Leases;

                // grab userID from session
                var userID = int.Parse(Session["CustomerID"].ToString());

                // get leased slips list
                var leased = from slip
                             in slips
                             join lease
                                in leases
                                on slip.ID equals lease.SlipID
                             select slip;
                var customerLeased = from lease
                                     in leases
                                     where lease.CustomerID == userID
                                     select lease;
                var customerLeasedSlips = from slip
                                          in slips
                                          join lease
                                            in customerLeased
                                            on slip.ID equals lease.SlipID
                                          where lease.CustomerID == userID
                                          select slip;

                // set data source to slips except leased
                GridView1.DataSource = slips.Except(leased).ToList();
                GridView1.DataBind();

                GridView2.DataSource = customerLeasedSlips.ToList();
                GridView2.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // grab slipID from the slip ID column
            var slipID = int.Parse(GridView1.SelectedRow.Cells[0].Text);
            // grab userID from session
            var userID = int.Parse(Session["CustomerID"].ToString());

            // using entity framework
            using (var context = new MarinaEntities())
            {
                // grab the selected slip from context, as well as user
                var slip = (from s in context.Slips where s.ID == slipID select s).First();
                var user = (from c in context.Customers where c.ID == userID select c).First();

                // add new slip booking into leases table
                context.Leases.Add(new Lease()
                {
                    CustomerID = user.ID,
                    SlipID = slip.ID
                });

                context.SaveChanges();
            }

            Response.Redirect("Panel.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // grab slipID from the slip ID column
            var slipID = int.Parse(GridView2.SelectedRow.Cells[0].Text);
            // grab userID from session
            var userID = int.Parse(Session["CustomerID"].ToString());

            // using entity framework
            using (var context = new MarinaEntities())
            {
                // grab the selected slip from context, as well as user
                var lease = (from l in context.Leases where l.CustomerID == userID select l).First();
                var user = (from c in context.Customers where c.ID == userID select c).First();

                context.Leases.Remove(lease);
                context.SaveChanges();
            }

            Response.Redirect("Panel.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            // Logout user by clearing session data
            Session.Clear();
            Response.Redirect("Default.aspx");
        }

        
    }
}