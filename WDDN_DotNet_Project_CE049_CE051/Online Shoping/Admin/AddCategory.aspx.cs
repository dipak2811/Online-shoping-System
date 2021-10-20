using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shoping.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CBFashionCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    //BindingGridview();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into CateMst(CName) values(@CName)", con);
            if (con.State == ConnectionState.Closed)
            {

                con.Open();
            }
            cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Added success');</script>");
            //BindingGridview();
            txtCategory.Text = string.Empty;
            txtCategory.Focus();
        }

        private void BindingGridview()
        {
            SqlCommand cmd = new SqlCommand("select * from CateMst", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

            }
        }
    }
}