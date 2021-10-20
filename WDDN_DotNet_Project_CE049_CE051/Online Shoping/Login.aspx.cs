using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shoping
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
                try
                {

                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CBFashionCon"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.Connection = con;
                        cmd1.CommandText = "SELECT Email,Password FROM tblUserMaster WHERE Email ='" + txtuserid.Text + "'";
                        SqlDataReader rdr = cmd1.ExecuteReader();
                        if (rdr.Read())
                        {
                            string p1 = Convert.ToString((rdr["Password"]));
                            string p2 = Convert.ToString(txtpass.Text);
                            p1 = p1.Trim();
                            p2 = p2.Trim();
                            if (p1 == p2)
                            {
                               // Response.Write("<script>alert('Success')</script>");
                                  Response.Write("You are in!");

                                 Response.Redirect("User/Home.aspx");
                            }
                            else
                            {
                                Response.Write("Incorrect Password");
                            }
                        }
                        else
                        {
                            Response.Write("Invalid Email Address!!");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("error: " + ex.ToString());
                }
            }
        }
    }
    