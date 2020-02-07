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

        List<Slip> listSlips;

        protected void Page_Load(object sender, EventArgs e)
        {
            listSlips = marina.Slips.ToList();
            PopulateDropDown();
        }

        private void PopulateDropDown()
        {
            foreach (Slip s in listSlips)
                DropDownList1.Items.Add(s.ID.ToString());
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int temp = DropDownList1.SelectedIndex;
            Slip slippy = marina.Slips.Find(temp);
            txtWidth.Text = slippy.Width.ToString();
            txtLength.Text = slippy.Length.ToString();
            txtDockID.Text = slippy.DockID.ToString();
        }
    }
}