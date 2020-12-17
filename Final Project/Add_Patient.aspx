﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Patient.aspx.cs" Inherits="Final_Project.Add_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <style>
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
                <asp:Label ID="Label1" runat="server" Text="Fill In Patient Details" Font-Bold="True"></asp:Label>
            </div>

            <div style="text-align:center">
                
                <table style="width: 100%">
                    <tr>
                        <td class="input_text">Patient ID:</td>
                        <td>
                            <asp:TextBox ID="patientID" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Patient Name:</td>
                        <td>
                            <asp:TextBox ID="patientName" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Patient Issue:</td>
                        <td>
                            <asp:TextBox ID="patientIssue" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Card Number:</td>
                        <td>
                            <asp:TextBox ID="patientCardNumber" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Patient Age:</td>
                        <td>
                            <asp:TextBox ID="patientAge" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="input_text">Patient Sex:</td>
                        <td>
                            <asp:DropDownList ID="patientSex" runat="server">
                                <asp:ListItem Value="0" Text="--Choose--" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Male"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Patient Nationality:</td>
                        <td>
                            <asp:TextBox ID="patientNationality" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Patient Address:</td>
                        <td>
                            <asp:TextBox ID="patientAddress" runat="server"></asp:TextBox>
                        </td>
                        <td class="input_text">Mobile Number:</td>
                        <td>
                            <asp:TextBox ID="patientNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input_text">Urgency Level:</td>
                        <td>
                            <asp:DropDownList ID="patientUrgency" runat="server">
                                <asp:ListItem Value="0" Text="--Choose--" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Mild"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Severe"></asp:ListItem>
                                <asp:ListItem Value="3" Text="Emergency"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="input_text">Employment Status:</td>
                        <td>
                            <asp:DropDownList ID="patientStatus" runat="server">
                                <asp:ListItem Value="0" Text="--Choose--" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Working"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Not Working"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>

                <div class="add_buttons">
                    <br />

                    <asp:Button ID="addPatientDetails" runat="server" Text="Add Patient" Height="37px" Width="125px" OnClick="addPatientDetails_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="clearDetails" runat="server" Text="Clear" Height="37px" Width="125px" OnClick="clearDetails_Click" />
                    <br />
                    <br />
                    <asp:Label ID="admissionOutcome" runat="server"></asp:Label>
                </div>

                <div class="check_requirements" id="valid" runat="server">
                    <br />

                    |

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Patient ID required" ControlToValidate="patientID" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;|

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Patient Name required" ControlToValidate="patientName" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;|

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Patient Issue required" ControlToValidate="patientIssue" Font-Italic="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;|

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Patient Urgency required" ControlToValidate="patientUrgency" Font-Italic="True" Font-Size="Medium" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                &nbsp;|

                </div>
            </div>
        </div>
    </form>
</body>
</html>
