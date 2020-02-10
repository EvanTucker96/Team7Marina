using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarinaRemake.Data;

// Steven Hillman
// Availability page
// displays available slips based on ID and show dock services available for different docks
// Feb 2020

namespace MarinaRemake
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        MarinaEntities marina = new MarinaEntities(); // entity framework data object

        List<Slip> listSlips; // list of slip objects for accessing the data
        List<Lease> listLeases; // list of lease objects to create the slipIDsBooked list
        List<Dock> listDocks; // list of dock objects to create the dock services drop down
        List<int> slipIDsBooked = new List<int>(); // list of slipIDs that are booked

        string temp; // used to get the id value for searching slip objects

        Slip slippy; // slip object used to display data in the textboxes when an id is selected
        Dock dock; // dock object used to get dock table data

        // fill the list of slips, slipIDsBooked and leases
        // with entity, populate the drop down, and fill the data for first id by default
        protected void Page_Load(object sender, EventArgs e)
        {

            listSlips = marina.Slips.ToList();
            listLeases = marina.Leases.ToList();
            listDocks = marina.Docks.ToList();

            foreach (Lease l in listLeases)
            {
                slipIDsBooked.Add(l.SlipID);
            }

            PopulateSlipIDDropDown();

            // get the first slip ID item and fill the text boxes with data
            dock = marina.Docks.Find(1);
            slippy = marina.Slips.Find(1);
            txtName.Text = dock.Name.ToString();
            txtWidth.Text = slippy.Width.ToString() + " feet";
            txtLength.Text = slippy.Length.ToString() + " feet";
            water.Checked = dock.WaterService;
            electric.Checked = dock.ElectricalService;

            txtDockName2.Text = dock.Name.ToString();
            water2.Checked = dock.WaterService;
            electric2.Checked = dock.ElectricalService;
        }

        // fill the drop down with all of the slip id's that are available
        // the items that are available are the ones that do not exist in the lease.SlipID column
        private void PopulateSlipIDDropDown()
        {
            RemoveBooked();
            foreach (Slip s in listSlips)
            {
                DropDownList1.Items.Add(s.ID.ToString());
            }
        }

        // for every booked id loop through the list of slips and remove that id
        private void RemoveBooked()
        {
            foreach(int i in slipIDsBooked)
            {
                for(int increment = 0; increment < listSlips.Count(); increment++)
                {
                    if (i == listSlips[increment].ID)
                    {
                        listSlips.RemoveAt(increment);
                    }
                }               
            }
        }

        // when a selected index is changed get the slippy object for the slip id chosen and display
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            temp = DropDownList1.SelectedItem.ToString();
            slippy = marina.Slips.Find(Convert.ToInt32(temp));
            dock = marina.Docks.Find(slippy.DockID);
            txtName.Text = dock.Name.ToString();
            txtDockName2.Text = dock.Name.ToString();
            txtWidth.Text = slippy.Width.ToString() + " feet";
            txtLength.Text = slippy.Length.ToString() + " feet";
            water.Checked = dock.WaterService;
            electric.Checked = dock.ElectricalService;
            water2.Checked = dock.WaterService;
            electric2.Checked = dock.ElectricalService;
        }
    }
}