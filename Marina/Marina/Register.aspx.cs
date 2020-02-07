using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using Marina.Data;



namespace Marina
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static byte[] HashPassword(string password)
        {
            var provider = new SHA1CryptoServiceProvider();
            var encoding = new UnicodeEncoding();
            return provider.ComputeHash(encoding.GetBytes(password));
        }
        protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
        {
            var customer = (Marina.Data.Customer)e.Entity;
            var x = HashPassword(customer.Passwords);
            customer.Passwords = Encoding.UTF8.GetString(x, 0, x.Length);
            Session["Customer"] = customer;
        }

        protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
        {
            var customer = (Customer)Session["Customer"];
            var name = (FormView1.FindControl("FirstNameTextBox") as TextBox).Text;
            

            Session["FirstName"] = name;
            if (Session[customer.FirstName] == null)
            {
                Response.Redirect("Login.aspx");
            }else
            {
                Session["IsAuthenticated"] = true;
            }
                
            
        }
    }
}