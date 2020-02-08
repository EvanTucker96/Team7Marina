using MarinaRemake.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarinaRemake.Views
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Button_Login_Load(object sender, EventArgs e)
        {
            if (Util.IsAuthenticated(Session))
            {
                var name = Session["CustomerName"].ToString().Split(' ');

                Button_Login.Text = "@" + name[0] + ". " + name[1].Substring(0, 1);
                Button_Login.CssClass = "nav-link btn";
            }
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            if (Button_Login.Text == "Login")
                Response.Redirect("Login.aspx");
            else
                Response.Redirect("Panel.aspx");
        }
    }
}