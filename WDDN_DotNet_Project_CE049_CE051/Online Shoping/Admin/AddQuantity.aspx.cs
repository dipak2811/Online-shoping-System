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
    public partial class AddQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindItemName();
                    BindGridView();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["CBFashionCon"].ConnectionString;
        }

        private void BindItemName()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("select distinct IID,IName from ItemMst", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddlItemName.DataSource = dt;
                ddlItemName.DataTextField = "IName";
                ddlItemName.DataValueField = "IID";
                ddlItemName.DataBind();
            }
            else
            {
                ddlItemName.DataSource = null;
                ddlItemName.DataBind();

            }
        }
        protected void btnAddQuantity_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("update ItemMst set Qnt=Qnt+@Qnt where IID=@ID", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@Qnt", Convert.ToInt32(txtQty.Text));
            cmd.Parameters.AddWithValue("@ID", ddlItemName.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
            txtQty.Text = string.Empty;
            Response.Write("<script>alert('Quantity Added successfully');</script>");
            BindGridView();
        }

        private void BindGridView()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select IName,isnull(Qnt,0)as Qnt,isnull(AQnt,0)as AQnt ,ISNULL(SQnt,0)as SQnt  from ItemMst", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
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