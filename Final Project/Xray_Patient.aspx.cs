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
    public partial class Xray_Patient : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }

            connect.Open();

            patientPregnancyStatus.Items.FindByValue("0").Attributes.Add("disabled", "disabled");
        }

        protected void clearDetails_Click(object sender, EventArgs e)
        {
            patientID.Text = "";
            patientNumber.Text = "";
            requestType.Text = "";
            patientAllergies.Text = "";
            patientLMD.Text = "";
            patientPregnancyStatus.SelectedIndex = 0;
            patientContraceptivePill.Text = "";
            examinationRequest.Text = "";
            patientDiagnosis.Text = "";
            xrayDate.Text = "";
            xrayTime.Text = "";
            patientNextAppointment.Text = "";
            physicianName.Text = "";
            patientD_O_R.Text = "";
            clinicalDescription.Text = "";
            radiographerName.Text = "";
            screenTime.Text = "";
            xrayNumber.Text = "";
            xrayPosition.Text = "";
            xrayKV.Text = "";
            xrayMass.Text = "";
            xrayReport.Text = "";

            requestOutcome.Text = "";
        }

        protected void sendRequestButton_Click(object sender, EventArgs e)
        {
            SqlCommand command = connect.CreateCommand();
            command.CommandType = CommandType.Text;

            command.CommandText = "Insert into XRayRequest(" +
                "PatientID, " +
                "PatientNumber, " +
                "RequestType, " +
                "PatientAllergies, " +
                "PatientLMD, " +
                "PatientPregnancyStatus, " +
                "PatientContraceptivePill, " +
                "ExaminationRequest, " +
                "PatientDiagnosis, " +
                "XRayDate, " +
                "XRayTime, " +
                "PatientNextAppointment, " +
                "PhysicianName, " +
                "PatientD_O_R, " +
                "ClinicalDescription, " +
                "RadiographerName, " +
                "ScreenTime, " +
                "XRayNumber, " +
                "XRayPosition, " +
                "XRayKV, " +
                "XRayReport, " +
                "XRayMass " +
                ") " +
                "values('" +
                patientID.Text + "', '" +
                patientNumber.Text + "', '" +
                requestType.Text + "', '" +
                patientAllergies.Text + "', '" +
                patientLMD.Text + "', '" +
                patientPregnancyStatus.SelectedItem.Text + "', '" +
                patientContraceptivePill.Text + "', '" +
                examinationRequest.Text + "', '" +
                patientDiagnosis.Text + "', '" +
                xrayDate.Text + "', '" +
                xrayTime.Text + "', '" +
                patientNextAppointment.Text + "', '" +
                physicianName.Text + "', '" +
                patientD_O_R.Text + "', '" +
                clinicalDescription.Text + "', '" +
                radiographerName.Text + "', '" +
                screenTime.Text + "', '" +
                xrayNumber.Text + "', '" +
                xrayPosition.Text + "', '" +
                xrayKV.Text + "', '" +
                xrayReport.Text + "', '" +
                xrayMass.Text + "')";

            command.ExecuteNonQuery();

            requestOutcome.Text = "Request Sent!";
            requestOutcome.ForeColor = Color.Green;
        }
    }
}