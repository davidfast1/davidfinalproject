<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="IMSI_Education_System.EmployeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:SqlDataSource ID="AllAssignmentsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="select Employee.FirstName, Employee.LastName, Assignment.Completion, Quiz.QuizID, Quiz.QuizName
from Quiz, Assignment, Employee
where Quiz.QuizID = Assignment.QuizID and Employee.EmployeeID = Assignment.EmployeeID"></asp:SqlDataSource>
        <asp:GridView ID="CompAssignmentsGridview" runat="server" AutoGenerateColumns="false" style="z-index: 1; left: 476px; top: 178px; position: absolute; height: 133px; width: 187px">
            <Columns>
                
                <asp:BoundField HeaderText="Quiz ID" DataField="QuizID" />
                <asp:BoundField HeaderText="Quiz Name" DataField="QuizName" />

            </Columns>
        </asp:GridView>
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 165px; top: 171px; position: absolute; height: 133px; width: 187px">
            <Columns>
                
                <asp:BoundField HeaderText="Quiz ID" DataField="QuizID" />
                <asp:BoundField HeaderText="Quiz Name" DataField="QuizName" />

            </Columns>
        </asp:GridView>

        <asp:Button ID="LogoutButton" runat="server" style="z-index: 1; left: 869px; top: 600px; position: absolute; width: 90px;" Text="Logout" OnClick="LogoutButton_Click" />

        <asp:Label ID="EmpIDLabel" runat="server" style="z-index: 1; left: 337px; top: 39px; position: absolute" Text=""></asp:Label>

        <asp:Button ID="CompAssignmentsButton" runat="server" style="z-index: 1; left: 466px; top: 63px; position: absolute; width: 197px; height: 33px;" Text="Show completed assignments" OnClick="CompAssignmentsButton_Click" />

        <asp:Label ID="UncompAssignmentsLabel" runat="server" style="z-index: 1; left: 187px; top: 121px; position: absolute" Text="Uncompleted Assignments"></asp:Label>

        <asp:Label ID="CompAssignmentsLabel" runat="server" style="z-index: 1; left: 494px; top: 129px; position: absolute" Text="Completed Assignments"></asp:Label>

        <asp:Button ID="BackButton" runat="server" style="z-index: 1; left: 869px; top: 236px; position: absolute; width: 241px;" Text="Back to Uncompleted Assignments" OnClick="BackButton_Click" />
    </form>
</body>
</html>
