using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Marina.Data;

namespace Marina
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Convert.ToBoolean(Session["IsAuthenticated"]))
            {
                Response.Redirect("Login.aspx");
            }

            using (var context = new MarinaData())
            {
                var slips = context.Slips;
                var leases = context.Leases;
                var leased = from slip
                             in slips
                             join lease 
                                in leases 
                                on slip.ID equals lease.SlipID
                             select slip;

                GridView1.AutoGenerateSelectButton = true;
                GridView1.DataSource = slips.Except(leased).ToList();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var slipID = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            var userID = int.Parse(Session["ID"].ToString());

            using (var context = new MarinaData())
            {
                var slip = (from s in context.Slips where s.ID == slipID select s).First();
                var user = (from c in context.Customers where c.ID == userID select c).First();



                context.Leases.Add(new Lease()
                {
                    CustomerID = user.ID,
                    SlipID = slip.ID
                });

                context.SaveChanges();
            }
        }
    }
}