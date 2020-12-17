<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xray_Patient.aspx.cs" Inherits="Final_Project.Xray_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <style id="{">
        header{
            background-color: #0B5788;
            color: white;
            margin: 0px 25px 5px 25px;
            padding: 5px 15px 5px 15px;
        }
        
        .middle > div.inner-header{
            background-color: #9999FF;
            color: White;
        }

        .middle{
            display: flex;
            flex-direction: column;
            background-color: #C7DAFA;
            margin: 25px 25px 15px 25px;
            padding: 15px 15px 5px 15px;
        }

        .middle > div{
            background-color: white;
            padding: 15px 20px 15px 20px;
            margin: 10px 25px 10px 25px;
        }

        .TextBox{
            width: 100%;
            height: 100%;
        }

        .DropDownList{
            width: 100%;
            height: 100%;
        }
                
        #clinicalDescription{
            width: 85%;
            height: 55%;
        }

        #xrayReport{
            width: 85%;
            height: 55%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1 style="text-align: center"><b>ELECTRONIC HEALTH CARE SYSTEM</b></h1>
        </header>

        <div class="middle">
            <a href="Staff_Activities.aspx" style="text-align: left; color: darkblue"><i>Go back</i></a>
            <div class="inner-header" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="X-Ray Request" Font-Bold="True"></asp:Label>
            </div>

            <div style="text-align:center">
                
                <table style="width: 100%">
                    <tr>
                        <td class="input_text">Patient ID:</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="patientID" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Mobile Number:</td>
                        <td>
                            <asp:TextBox ID="patientNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Type of Rquest:</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="requestType" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Allergies:</td>
                        <td>
                            <asp:TextBox ID="patientAllergies" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">LMD:</td>
                        <td>
                            <asp:TextBox ID="patientLMD" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Pregnant:</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="patientPregnancyStatus" runat="server">
                                <asp:ListItem Value="0" Text="--Choose--" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="2" Text="No"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="input_text">Contraceptive Pill:</td>
                        <td>
                            <asp:TextBox ID="patientContraceptivePill" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Examination Request:</td>
                        <td>
                            <asp:TextBox ID="examinationRequest" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Diagnosis:</td>
                        <td>
                            <asp:TextBox ID="patientDiagnosis" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">X-Ray Date:</td>
                        <td>
                            <asp:TextBox ID="xrayDate" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">X-Ray Time:</td>
                        <td>
                            <asp:TextBox ID="xrayTime" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Next Appointment:</td>
                        <td>
                            <asp:TextBox ID="patientNextAppointment" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Physician Name:</td>
                        <td>
                            <asp:TextBox ID="physicianName" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Date Of Request:</td>
                        <td>
                            <asp:TextBox ID="patientD_O_R" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td class="input_text" >Brief clinical description:</td>
                        <td style="width: 100%">
                            <asp:TextBox ID="clinicalDescription" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        </td>
                    </tr>
                </table>

                <br />

                <asp:Label ID="Label2" runat="server" Text="For The X-Ray Office" BackColor="#9999FF" Font-Bold="True" ForeColor="White" Width="100%" Height="110%"></asp:Label>

                <br /><br />

                <table style="width: 100%">
                    <tr>
                        <td class="input_text">Radiographer Name:</td>
                        <td>
                            <asp:TextBox ID="radiographerName" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Screen Time:</td>
                        <td>
                            <asp:TextBox ID="screenTime" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">X-Ray Number:</td>
                        <td>
                            <asp:TextBox ID="xrayNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">X-Ray Position:</td>
                        <td>
                            <asp:TextBox ID="xrayPosition" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">X-Ray KV:</td>
                        <td>
                            <asp:TextBox ID="xrayKV" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">X-Ray Mass:</td>
                        <td>
                            <asp:TextBox ID="xrayMass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td class="input_text" >X-Ray Report:<br />
                        </td>
                        <td style="width: 100%">
                            <asp:TextBox ID="xrayReport" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        </td>
                    </tr>
                </table>

                <div class="add_buttons">
                    <br />

                    <asp:Button ID="sendRequestButton" runat="server" Text="Send Request" Height="37px" Width="125px" OnClick="sendRequestButton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="clearDetails" runat="server" Text="Clear" Height="37px" Width="125px" OnClick="clearDetails_Click" />
                    <br />
                    <br />
                    <asp:Label ID="requestOutcome" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
