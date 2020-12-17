<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medical_Staff.aspx.cs" Inherits="Final_Project.Medical_Staff" %>

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
                <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True"></asp:Label>
            </div>

            <div style="text-align:center">
                <p><em>Please enter your details</em></p>
                <p>
                    <asp:Label ID="sessionExpired" runat="server"></asp:Label>
                </p>
                <div style="width:65%; margin: 0 auto">
                    <table style="width: 100%">
                        <tr>
                            <td><asp:Label ID="userName" runat="server" Text="Staff ID:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="staffID" runat="server" ></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="staffID" ErrorMessage="* required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="userName0" runat="server" Text="Password:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="staffPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="staffPassword" ErrorMessage="* required" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <asp:Label ID="staffDataValidation" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" Height="45px" Width="145px" />    
            </div>
            <p style="text-align: center"><a href="Medical_Staff_SignUp"><i>Click here to Sign Up instead</i></a></p>
        </div>
    </form>
</body>
</html>
