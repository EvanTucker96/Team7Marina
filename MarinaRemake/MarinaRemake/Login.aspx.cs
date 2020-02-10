using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarinaRemake.Data;
using MarinaRemake.Utility;
/// <summary>
/// Login page created by Evan Tucker for Team 7's ASP.NET lab 2. This page takes in user input, then compares it to the information on the database.
/// </summary>
namespace MarinaRemake
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            Customer customer;

            // Textbox inputs
            var inputName = TextBox_Name.Text;
            var inputPassword = Util.Encrypt(TextBox_Password.Text);
            var inputLName = TextBox_LName.Text;

            // Create new marina context
            using (var context = new MarinaEntities())
            {
                // Query context to see is passwords match
                var query = from c
                            in context.Customers
                            where c.Password == inputPassword && c.FirstName == inputName && c.LastName == inputLName
                            select c;

                // First response is our guy
                if (query != null && query.First() != null)
                    customer = query.First();
                else 
                    return;

                // Reset form if failed
                if (customer == null)
                    Button_Register_Click(sender, e);

                // Authenticate user
                Session["IsAuthenticated"] = true;
                Session["CustomerID"] = customer.ID;
                Session["CustomerName"] = customer.FirstName + " " + customer.LastName;

                // Redirect to home
                Response.Redirect("/Default.aspx");
            }
        }

        protected void Button_Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Register.aspx");
        }
    }
}