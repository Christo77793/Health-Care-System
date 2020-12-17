<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff_Activities.aspx.cs" Inherits="Final_Project.Staff_Activities" %>

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

        .auto-style1 {
            width: 295px;
            height: 249px;
        }
        .auto-style2 {
            width: 295px;
            height: 249px;
        }

        .auto-style3 {
            height: 25px;
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
                <p style="text-align: right">
                    <asp:Label ID="welcomeUser" runat="server" Text=""></asp:Label>
                </p>
                <asp:Label ID="Label1" runat="server" Text="Staff Activities" Font-Bold="True"></asp:Label>
            </div>

            <div style="text-align:center">
                <asp:Button ID="admitPatient" runat="server" Text="Admit Patients" Height="45px" Width="145px" OnClick="admitPatient_Click" />
            &nbsp;&nbsp;&nbsp;

                <asp:Button ID="dismissPatient" runat="server" Text="Dismiss Patients" Height="45px" Width="145px" OnClick="dismissPatient_Click" />
            &nbsp;&nbsp;&nbsp;

                <asp:Button ID="viewPatients" runat="server" Text="View Patients" Height="45px" Width="145px" OnClick="viewPatients_Click" />
                
                <br />
                <br />
                <img src="https://i.pinimg.com/736x/d7/30/de/d730de0bd616b148e40dbb0052e69187.jpg" alt="ad_1" class="auto-style1" />
            &nbsp;&nbsp;&nbsp;
                <img src="https://pbs.twimg.com/media/DoNpUHZV4AAhuK9.jpg" alt="ad_2" class="auto-style2" />
                <br />
                <br />

                <asp:Button ID="xRayRequest" runat="server" Text="X-Ray Request" Height="45px" Width="145px" OnClick="xRayRequest_Click" />
            </div>
        </div>
    </form>
</body>
</html>
