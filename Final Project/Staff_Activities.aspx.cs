using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Project
{
    public partial class Staff_Activities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["staffName"] != null)
            { 
                welcomeUser.Text = "Welcome " + Session["staffName"].ToString();
            }
            else
            {
                Session["sessionExpired"] = "Expired";

                Response.Redirect("Medical_Staff.aspx");
            }
        }

        protected void admitPatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Patient.aspx");
        }

        protected void dismissPatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dismiss_Patient");
        }

        protected void viewPatients_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Patient");
        }

        protected void xRayRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Xray_Patient");
        }
    }
}