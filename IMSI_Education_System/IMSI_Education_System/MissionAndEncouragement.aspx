<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MissionAndEncouragement.aspx.cs" Inherits="IMSI_Education_System.MissionAndEncouragement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">

        <asp:Label ID="MissionStatement" runat="server" style="z-index: 1; left: 50px; top: 10px; position: absolute; height: 19px;" Text="OUR MISSION: to work together to provide our clients with the best product possible at a reasonable price."></asp:Label>


        <asp:Button ID="ShowVerses" runat="server" style="z-index: 1; left: 266px; top: 70px; position: absolute; width: 200px;" Text="Show Verses And Reminders" OnClick="ShowVerses_Click" />

        <div id="WorkVerses" runat="server">
            <asp:Label ID="FirstVerse" runat="server" style="z-index: 1; left: 50px; top: 120px; position: absolute; height: 19px;" Text="Proverbs 10:4 (WEB) He becomes poor who works with a lazy hand, but the hand of the diligent brings wealth."></asp:Label>
            <asp:Label ID="SecondVerse" runat="server" style="z-index: 1; left: 50px; top: 150px; position: absolute; height: 19px;" Text="Proverbs 14:23 (WEB) In all hard work there is profit, but the talk of the lips leads only to poverty."></asp:Label>
            <asp:Label ID="ThirdVerse" runat="server" style="z-index: 1; left: 50px; top: 180px; position: absolute; height: 19px;" Text="Proverbs 12:24 (WEB) The hands of the diligent ones shall rule, but laziness ends in slave labor."></asp:Label>
            <asp:Label ID="FourthVerse" runat="server" style="z-index: 1; left: 50px; top: 210px; position: absolute; height: 19px;" Text="Proverbs 13:4 (WEB) The soul of the sluggard desires, and has nothing, but the desire of the diligent shall be fully satisfied."></asp:Label>
            <asp:Label ID="FifthVerse" runat="server" style="z-index: 1; left: 50px; top: 240px; position: absolute; height: 19px;" Text="Proverbs 21:5 (WEB) The plans of the diligent surely lead to profit; and everyone who is hasty surely rushes to poverty."></asp:Label>
        </div>

        

        <div id="Reminders" runat="server">
            <asp:Label ID="FirstReminder" runat="server" style="z-index: 1; left: 50px; top: 330px; position: absolute; height: 19px;" Text="Communicate with coworkers and supervisors"></asp:Label>
            <asp:Label ID="SecondReminder" runat="server" style="z-index: 1; left: 50px; top: 360px; position: absolute; height: 19px;" Text="Remember to change your password when necessary, and to keep it safe and confidential."></asp:Label>
            <asp:Label ID="ThirdReminder" runat="server" style="z-index: 1; left: 50px; top: 390px; position: absolute; height: 19px;" Text="Be respectful of others."></asp:Label>
            <asp:Label ID="FourthReminder" runat="server" style="z-index: 1; left: 50px; top: 420px; position: absolute; height: 19px;" Text="Request help when necessary, and always be a team player."></asp:Label>
            <asp:Label ID="FifthReminder" runat="server" style="z-index: 1; left: 50px; top: 450px; position: absolute; height: 19px;" Text="Complete the tasks assigned to you as best you can."></asp:Label>
        </div>
    </form>
</body>
</html>
