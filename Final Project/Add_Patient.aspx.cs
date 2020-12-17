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
    public partial class Add_Patient : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(connect.State == ConnectionState.Open)
            {
                connect.Close();
            }

            connect.Open();

            patientSex.Items.FindByValue("0").Attributes.Add("disabled", "disabled");
            patientUrgency.Items.FindByValue("0").Attributes.Add("disabled", "disabled");
            patientStatus.Items.FindByValue("0").Attributes.Add("disabled", "disabled");
        }

        protected void addPatientDetails_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    SqlCommand command = connect.CreateCommand();
                    command.CommandType = CommandType.Text;

                    command.CommandText = "Insert into PatientDetails(" +
                        "PatientId, " +
                        "PatientName, " +
                        "PatientIssue, " +
                        "PatientCardNumber, " +
                        "PatientAge, " +
                        "PatientSex, " +
                        "PatientNationality, " +
                        "PatientAddress, " +
                        "PatientMobileNumber, " +
                        "PatientUrgency, " +
                        "PatientStatus" +
                        ") " +
                        "values('" +
                        patientID.Text + "', '" +
                        patientName.Text + "', '" +
                        patientIssue.Text + "', '" +
                        patientCardNumber.Text + "', '" +
                        patientAge.Text + "', '" +
                        patientSex.SelectedItem.Text + "', '" +
                        patientNationality.Text + "', '" +
                        patientAddress.Text + "', '" +
                        patientNumber.Text + "', '" +
                        patientUrgency.SelectedItem.Text + "', '" +
                        patientStatus.SelectedItem.Text + "')";

                    command.ExecuteNonQuery();

                    admissionOutcome.Text = "Patient record added!";
                    admissionOutcome.ForeColor = Color.Green;
                }
                catch
                {
                    admissionOutcome.Text = "Patient record not added!";
                    admissionOutcome.ForeColor = Color.Red;
                }
            }
            else
            {
                admissionOutcome.Text = "";
            }
        }

        protected void clearDetails_Click(object sender, EventArgs e)
        {
            patientID.Text = "";
            patientName.Text = "";
            patientIssue.Text = "";
            patientCardNumber.Text = "";
            patientAge.Text = "";
            patientSex.SelectedIndex = 0;
            patientNationality.Text = "";
            patientAddress.Text = "";
            patientNumber.Text = "";
            patientUrgency.SelectedIndex = 0;
            patientStatus.SelectedIndex = 0;

            admissionOutcome.Text = "";
        }
    }
}