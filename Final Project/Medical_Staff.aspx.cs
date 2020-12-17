using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Final_Project
{
    public partial class Medical_Staff : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }

            connect.Open();

            if (Session["sessionExpired"] != null)
            {
                if(Session["sessionExpired"].ToString() == "Expired")
                {
                    sessionExpired.Text = "Session's over, please log in once again!";
                    sessionExpired.ForeColor = Color.Red;
                }
                else
                {
                    sessionExpired.Text = "";
                }
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand command = connect.CreateCommand();
                command.CommandType = CommandType.Text;

                command.CommandText = "Select * from MedicalStaff";

                SqlDataReader check_data = command.ExecuteReader();

                while (check_data.Read())
                {
                    if (check_data["StaffId"].ToString() == staffID.Text && check_data["StaffPassword"].ToString() == staffPassword.Text)
                    {
                        staffDataValidation.Text = "";

                        Session["staffName"] = check_data["StaffFirstName"].ToString();

                        Response.Redirect("Staff_Activities.aspx");
                    }
                    else
                    {
                        staffDataValidation.Text = "The ID or Password is Incorrect!";
                        staffDataValidation.ForeColor = Color.Red;
                    }
                }
            }
        }
    }
}