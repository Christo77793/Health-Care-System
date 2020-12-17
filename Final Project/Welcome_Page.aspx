<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome_Page.aspx.cs" Inherits="Final_Project.WebForm1" %>

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

        .middle{
            display: flex;
            flex-direction: column;
            background-color: #C7DAFA;
            margin: 25px 25px 15px 25px;
            padding: 5px 15px 5px 15px;
        }

        .middle > div{
            background-color: white;
            padding: 15px 20px 15px 20px;
            margin: 10px 25px 10px 25px;
        }

        ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333333;
            height: 51px;
            
        }

        li{
            float: left;
            height: 60px;
            width: 127px;
        }

        li a{
            display: block;
            color: white;
            text-align: center;
            padding: 16px;
            text-decoration: none;
        }

        li a:hover{
            background-color: #111111;
        }

        .auto-style2 {
            width: 375px;
            height: 415px;
        }

        .auto-style3 {
            width: 100%;
            height: 187px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">    
        <header>
            <div style="text-align: right">            
                <asp:Button ID="Button4" runat="server" Text="Login" Width="110px" Font-Size="Small" BackColor="#00CC66" Font-Bold="True" ForeColor="White" OnClick="login_btn_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Text="Sign Up" Width="110px" Font-Size="Small" BackColor="#00CC66" Font-Bold="True" ForeColor="White" OnClick="signup_btn_Click" />
            </div>

            <h1 style="text-align: center"><b>Welcome to the Health Information System</b></h1>

        </header>

        <div class="middle">
            <ul>
                <li><a href="Welcome_Page.aspx">Home</a></li>
                <li><a href="Welcome_About.aspx">About</a></li>
            </ul>
            
            <div style="text-align:center">
                <a href="https://www.moh.gov.sa/en/HealthAwareness/EducationalContent/PublicHealth/Pages/corona.aspx">
                    <img src="https://www.moh.gov.sa/en/PublishingImages/2020-03-03-0001.jpg" alt="covid_banner" class="auto-style3" />
                </a>
                <br />
                <br />
                <a href="https://newjersey.jeffersonhealth.org/mydoc">
                    <img src="https://www.gabrielleshirdan.com/wp-content/uploads/2015/10/print-2.jpg" alt="ad_2" class="auto-style2" />
                </a>
            </div>
        </div>
    
    </form>
</body>
</html>
