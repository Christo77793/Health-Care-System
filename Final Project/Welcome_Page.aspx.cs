using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medical_Staff_SignUp.aspx");
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medical_Staff.aspx");
        }
    }
}