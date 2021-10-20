using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Online_Shoping.Admin
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            

            lblMsg.ForeColor = Color.Green;

            Clear();

            lblMsg.Text = "Thank You for Your Inquiry";
        }
        private void Clear()

        {

            txtName.Text = string.Empty;

            txtSubject.Text = string.Empty;

            txtEmail.Text = string.Empty;

            txtInquiry.Text = string.Empty;



        }
    }
}