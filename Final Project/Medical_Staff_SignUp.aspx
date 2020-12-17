<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medical_Staff_SignUp.aspx.cs" Inherits="Final_Project.Medical_Staff_SignUp" %>

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

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1 style="text-align: center"><b>ELECTRONIC HEALTH CARE SYSTEM</b></h1>
        </header>

        <div class="middle" >
            <div class="inner-header" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Sign Up" Font-Bold="True"></asp:Label>
            </div>

            <div style="text-align: center">
                <p><em>Please submit your details to create an account</em></p>

                <div style="width:65%; margin: 0 auto">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Staff ID:" Font-Underline="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="staffID" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="staffID" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="firstName" runat="server" placeholder="First Name:" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="firstName" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Last Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="lastName" runat="server" placeholder="Last Name:" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lastName" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="staffEmail" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="staffEmail" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="staffEmail" ErrorMessage=" * please enter it in the abc@xyz.com format" Font-Italic="True" Font-Size="Small" ForeColor="Red" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="staffPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="staffPassword" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>                    
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Confirm Password:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="confirmPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="staffPassword" ControlToValidate="confirmPassword" ErrorMessage=" * passwords don't match" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                    
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Staff Role:" Font-Underline="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="staffRole" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="staffRole" ErrorMessage=" * required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <asp:Button ID="signUp" runat="server" Text="Sign Up" Height="45px" Width="145px" OnClick="signUp_Click" />
            </div>
            <p style="text-align: center"><a href="Medical_Staff"><i>Login if you have an account</i></a></p>
        </div>
    </form>
</body>
</html>
