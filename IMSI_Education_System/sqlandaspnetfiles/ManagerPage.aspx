<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerPage.aspx.cs" Inherits="IMSI_Education_System.ManagerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="UpdateDiv" runat="server">
            <asp:TextBox ID="EmployeeIDTextbox" runat="server" style="z-index: 1; left: 392px; top: 194px; position: absolute"></asp:TextBox>
            <asp:Label ID="QuizIDLabel" runat="server" style="z-index: 1; left: 282px; top: 261px; position: absolute" Text="QuizID"></asp:Label>
            <asp:Label ID="DateConfirmedLabel" runat="server" style="z-index: 1; left: 113px; top: 324px; position: absolute" Text="Date Confirmed (YYYY-DD-MM)"></asp:Label>
            <asp:TextBox ID="DateConfirmedTextbox" runat="server" style="z-index: 1; left: 391px; top: 331px; position: absolute"></asp:TextBox>
            <asp:Label ID="EmployeeIDLabel" runat="server" style="z-index: 1; left: 253px; top: 196px; position: absolute" Text="EmployeeID"></asp:Label>
            <asp:TextBox ID="QuizIDTextbox" runat="server" style="z-index: 1; left: 394px; top: 255px; position: absolute"></asp:TextBox>
            <asp:Button ID="ConfirmButton" runat="server" style="z-index: 1; left: 434px; top: 389px; position: absolute" Text="Confirm" OnClick="ConfirmButton_Click" />
            <asp:Label ID="EnterFieldsLabel" runat="server" style="z-index: 1; left: 398px; top: 132px; position: absolute" Text="Enter These Fields"></asp:Label>

</div>
        <div id="AssignmentsDiv" runat="server">
            <asp:GridView ID="AssignmentsGridView" runat="server" style="z-index: 1; left: 739px; top: 174px; position: absolute; height: 133px; width: 187px" DataSourceID="CurrentEmpInfo">
            </asp:GridView>
            <asp:Label ID="AssignmentsLabel" runat="server" style="z-index: 1; left: 820px; top: 103px; position: absolute" Text="Assignments"></asp:Label>

        </div>
            <asp:SqlDataSource ID="CurrentEmpInfo" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="select Assignment.EmployeeID, Assignment.QuizID, Employee.FirstName, Employee.LastName, Quiz.QuizName, Assignment.Completion, Assignment.ManagerConfirm
from Employee, Quiz, Assignment
where Assignment.EmployeeID = Employee.EmployeeID and Assignment.QuizID = Quiz.QuizID"></asp:SqlDataSource>
            <asp:Button ID="EmployeeTaskStatusButton" runat="server" style="z-index: 1; left: 390px; top: 46px; position: absolute" Text="Check on Employees task status" OnClick="ViewUpdateControlsButton_Click" />


    </form>
</body>
</html>
