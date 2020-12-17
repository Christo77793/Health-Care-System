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
    public partial class Dismiss_Patient : System.Web.UI.Page
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

        public void displayData()
        {
            SqlCommand command = connect.CreateCommand();
            command.CommandType = CommandType.Text;

            command.CommandText = "Select * from PatientDetails where PatientId = " + patientIDInput.Text;

            SqlDataReader display_data = command.ExecuteReader();

            while (display_data.Read())
            {

                patientID.Text += display_data["PatientId"].ToString();

                patientName.Text += display_data["PatientName"].ToString();

                patientIssue.Text += display_data["PatientIssue"].ToString();

                patientCardNumber.Text += display_data["PatientCardNumber"].ToString();

                patientAge.Text += display_data["PatientAge"].ToString();

                patientNationality.Text += display_data["PatientNationality"].ToString();

                patientAddress.Text += display_data["PatientAddress"].ToString();

                if (display_data["PatientMobileNumber"].ToString() == "0")
                {
                    patientNumber.Text += "";
                }
                else
                {
                    patientNumber.Text += display_data["PatientMobileNumber"].ToString();
                }

                if (display_data["PatientSex"].ToString() == "Male")
                {
                    patientSex.SelectedIndex = 1;
                }
                else
                {
                    patientSex.SelectedIndex = 2;
                }

                if (display_data["PatientUrgency"].ToString() == "Mild")
                {
                    patientUrgency.SelectedIndex = 1;
                }
                else if (display_data["PatientUrgency"].ToString() == "Severe")
                {
                    patientUrgency.SelectedIndex = 2;
                }
                else
                {
                    patientUrgency.SelectedIndex = 3;
                }

                if (display_data["PatientStatus"].ToString() == "Working")
                {
                    patientStatus.SelectedIndex = 1;
                }
                else
                {
                    patientStatus.SelectedIndex = 2;
                }

                searchResult.Text = "Record Found!";
                searchResult.ForeColor = Color.Green;

                dismissPatientResult.Text = "";
                //searchResult.Text = "Record Not Found!";
                //searchResult.ForeColor = Color.Red;

            }
        }

        public void deleteData()
        {
            SqlCommand command = connect.CreateCommand();
            command.CommandType = CommandType.Text;

            command.CommandText = "Delete from PatientDetails where PatientId= '" + patientIDInput.Text + "'";

            command.ExecuteNonQuery();

            dismissPatientResult.Text = "Patient Dismissed";
            dismissPatientResult.ForeColor = Color.Green;

            searchResult.Text = "";
        }

        public void clearData()
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

            searchResult.Text = "";
            dismissPatientResult.Text = "";
        }

        protected void searchPatient_Click(object sender, EventArgs e)
        {
            clearData();

            displayData();
        }

        protected void clearDetails_Click(object sender, EventArgs e)
        {
            clearData();
        }

        protected void dismissPatientButton_Click(object sender, EventArgs e)
        {
            deleteData();
        }
    }
}