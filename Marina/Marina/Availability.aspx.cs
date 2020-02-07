using Marina.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marina
{
    public partial class Availability : System.Web.UI.Page
    {

        MarinaData marina = new MarinaData(); // entity framework data object

        List<Slip> listSlips; // list of slip objects for accessing the data

        string temp; // used to get the id value for searching slip objects

        Slip slippy; // slip object used to display data in the textboxes when an id is selected

        // fill the list of slips with entity, populate the drop down, and fill the data for first id by default
        protected void Page_Load(object sender, EventArgs e)
        {
            listSlips = marina.Slips.ToList();
            PopulateDropDown();
            
            // get the first slip ID item and fill the text boxes with data
            temp = DropDownList1.SelectedItem.ToString();
            slippy = marina.Slips.Find(Convert.ToInt32(temp));
            txtWidth.Text = slippy.Width.ToString();
            txtLength.Text = slippy.Length.ToString();
            txtDockID.Text = slippy.DockID.ToString();
        }

        // fill the drop down with all of the slip id's using the list of slips
        private void PopulateDropDown()
        {
            foreach (Slip s in listSlips)
                DropDownList1.Items.Add(s.ID.ToString());
        }

        // when a selected index is changed get the slippy object for the slip id chosen and display
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            temp = DropDownList1.SelectedItem.ToString();
            slippy = marina.Slips.Find(Convert.ToInt32(temp));
            txtWidth.Text = slippy.Width.ToString();
            txtLength.Text = slippy.Length.ToString();
            txtDockID.Text = slippy.DockID.ToString();
        }
    }
}