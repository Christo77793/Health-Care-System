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
    public partial class Medical_Staff_SignUp : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }

            connect.Open();
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand command = connect.CreateCommand();
                command.CommandType = CommandType.Text;

                command.CommandText = "Insert into MedicalStaff(" +
                        "StaffId, " +
                        "StaffFirstName, " +
                        "StaffLastName, " +
                        "StaffEmail, " +
                        "StaffPassword, " +
                        "StaffRole " +
                        ") " +
                        "values('" +
                        staffID.Text + "', '" +
                        firstName.Text + "', '" +
                        lastName.Text + "', '" +
                        staffEmail.Text + "', '" +
                        staffPassword.Text + "', '" +
                        staffRole.Text + "')";

                command.ExecuteNonQuery();

                Response.Redirect("Medical_Staff.aspx");
            }
        }
    }
}