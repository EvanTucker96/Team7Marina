﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace Marina
{

    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           // lblFailed.Visible = false;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
           /* var name = (FindControl("tbFirstName") as TextBox).Text;

            Session["FirstName"] = name;
            bool result = false;
            if (Session["FirstName"] != null)
            {
                result = true;
            }
            else
            {

                lblFailed.Visible = true;
                Session["IsAuthenticated"] = result;
            }
            */
        }
        public static byte[] HashPassword(string password)
        {
            var provider = new SHA1CryptoServiceProvider();
            var encoding = new UnicodeEncoding();
            return provider.ComputeHash(encoding.GetBytes(password));
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            
            try
            {
                bool result = false;


                string pass;
                string name = TextBox1.Text;

                var x = HashPassword(TextBox2.Text);

                pass = Encoding.UTF8.GetString(x, 0, x.Length);

                con.Open();

                string qry = "select * from Customer where FirstName='" + name + "' and Passwords='" + pass  + "'";

                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Label4.Text = "Login Sucessful";
                    Session["FirstName"] = name;
                    result = true;
                    Session["IsAuthenticated"] = result;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label4.Text = "Name & Password Is not correct Try again";
                    result = false;
                    Session["IsAuthenticated"] = result;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    }
