<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IMSI_Education_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #someFunction {
            width: 88px;
        }
        #Text1 {
            z-index: 1;
            left: 10px;
            top: 167px;
            position: absolute;
        }
        #form1 {
            height: 222px;
            width: 1381px;
        }
    </style>
</head>
<body>
    <form id="LoginForm" runat="server">
        <asp:TextBox ID="EmpPassTextbox" runat="server" TextMode="Password" style="z-index: 1; left: 192px; top: 140px; position: absolute; width: 80px; margin-top: 12px;"></asp:TextBox>
        <asp:TextBox ID="EmpIDTextbox" runat="server" style="z-index: 1; left: 192px; top: 100px; position: absolute; width: 80px; margin-top: 12px;"></asp:TextBox>
        <asp:Label ID="EmpLabel" runat="server" style="z-index: 1; left: 175px; top: 60px; position: absolute" Text="Employee Login"></asp:Label>
        <asp:Label ID="EmpPassLabel" runat="server" style="z-index: 1; left: 110px; top: 154px; position: absolute" Text="Password"></asp:Label>
        <asp:Label ID="EmpIDLabel" runat="server" style="z-index: 1; left: 110px; top: 110px; position: absolute; bottom: 120px;" Text="ID"></asp:Label>
        <asp:Button ID="EmpSubmit" runat="server" style="z-index: 1; left: 206px; top: 191px; position: absolute; right: 919px;" Text="Submit" OnClick="EmpSubmit_Click" />


        <asp:Label ID="ManIDLabel" runat="server" style="z-index: 1; left: 485px; top: 110px; position: absolute" Text="ID"></asp:Label>
        <asp:TextBox ID="ManIDTextbox" runat="server" style="z-index: 1; left: 545px; top: 110px; position: absolute; width: 80px"></asp:TextBox>
        <asp:Label ID="ManLabel" runat="server" style="z-index: 1; left: 540px; top: 60px; position: absolute" Text="Manager Login"></asp:Label>
        <asp:Label ID="ManPassLabel" runat="server" style="z-index: 1; left: 443px; top: 154px; position: absolute" Text="Password"></asp:Label>
        <asp:Button ID="ManSubmit" runat="server" style="z-index: 1; left: 558px; top: 191px; position: absolute" Text="Submit" OnClick="ManSubmit_Click" />
        <asp:TextBox ID="ManPassTextbox" runat="server" TextMode="Password" style="z-index: 1; left: 545px; top: 157px; position: absolute; width: 80px"></asp:TextBox>

        <asp:Label ID="HRIDLabel" runat="server" style="z-index: 1; left: 868px; top: 110px; position: absolute" Text="ID"></asp:Label>
        <asp:Button ID="HRSubmit" runat="server" style="z-index: 1; left: 939px; top: 192px; position: absolute; height: 25px;" Text="Submit" OnClick="HRSubmit_Click" />
        <asp:Label ID="HRPassLabel" runat="server" style="z-index: 1; left: 830px; top: 156px; position: absolute" Text="Password"></asp:Label>
        <asp:Label ID="HRLabel" runat="server" style="z-index: 1; left: 931px; top: 60px; position: absolute" Text="HR Login"></asp:Label>
        <asp:TextBox ID="HRIDTextbox" runat="server" style="z-index: 1; left: 923px; top: 110px; position: absolute; width: 80px"></asp:TextBox>
        <asp:TextBox ID="HRPassTextbox" runat="server" TextMode="Password" style="z-index: 1; left: 925px; top: 156px; position: absolute; width: 80px"></asp:TextBox>



 
        <asp:Label ID="AudLabel" runat="server" style="z-index: 1; left: 1240px; top: 60px; position: absolute" Text="Auditor Login"></asp:Label>
        <asp:Label ID="AudIDLabel" runat="server" style="z-index: 1; left: 1198px; top: 104px; position: absolute" Text="ID"></asp:Label>
        <asp:Label ID="AudPassLabel" runat="server" style="z-index: 1; left: 1162px; top: 162px; position: absolute" Text="Password"></asp:Label>
        <asp:TextBox ID="AudIDTextbox" runat="server" style="z-index: 1; left: 1250px; top: 110px; position: absolute; width: 80px"></asp:TextBox>
        <asp:TextBox ID="AudPassTextbox" runat="server" TextMode="Password" style="z-index: 1; left: 1252px; top: 162px; position: absolute; width: 80px"></asp:TextBox>
        <asp:Button ID="AudSubmit" runat="server" style="z-index: 1; left: 1263px; top: 200px; position: absolute" Text="Submit" OnClick="AudSubmit_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <p>
        <asp:Label ID="WrongCredsLabel" runat="server" style="z-index: 1; left: 679px; top: 233px; position: absolute" Text="Wrong Credentials; Try Again"></asp:Label>
        </p>
            <asp:Button ID="ViewEncouragement" runat="server" style="z-index: 1; left: 1400px; top: 50px; position: absolute" Text="Encouragement Page" OnClick="ViewEncouragement_Click" />

    </form>
</body>
</html>
