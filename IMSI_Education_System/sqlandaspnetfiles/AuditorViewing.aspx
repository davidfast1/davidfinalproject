<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuditorViewing.aspx.cs" Inherits="IMSI_Education_System.AuditorViewing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="QuestionsLabel" runat="server" style="z-index: 1; left: 1182px; top: 118px; position: absolute" Text="Questions"></asp:Label>
        <asp:Label ID="AnswersLabel" runat="server" style="z-index: 1; left: 1605px; top: 120px; position: absolute" Text="Answers"></asp:Label>
        <asp:Label ID="LogIDLabel" runat="server" style="z-index: 1; left: 176px; top: 185px; position: absolute" Text="LogID"></asp:Label>
        <asp:Label ID="LogDateLabel" runat="server" style="z-index: 1; left: 38px; top: 234px; position: absolute; width: 184px;" Text="Log Date (YYYY-DD-MM)"></asp:Label>
        <asp:Label ID="ConclusionLabel" runat="server" style="z-index: 1; left: 151px; top: 341px; position: absolute; bottom: 143px;" Text="Conclusion"></asp:Label>
        <asp:Label ID="AssignmentsLabel" runat="server" style="z-index: 1; left: 731px; top: 103px; position: absolute" Text="Assignments"></asp:Label>
        <br />
        <asp:SqlDataSource ID="QuestionsConnection" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Question]"></asp:SqlDataSource>
        <asp:GridView ID="AuditLogGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="LogID" DataSourceID="AuditLogConnection" style="z-index: 1; left: 137px; top: 567px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="LogID" HeaderText="LogID" ReadOnly="True" SortExpression="LogID" />
                <asp:BoundField DataField="LogDate" HeaderText="LogDate" SortExpression="LogDate" />
                <asp:BoundField DataField="AuditorID" HeaderText="AuditorID" SortExpression="AuditorID" />
                <asp:BoundField DataField="Conclusion" HeaderText="Conclusion" SortExpression="Conclusion" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="AuditorIDLabel" runat="server" style="z-index: 1; left: 146px; top: 290px; position: absolute; bottom: 191px;" Text="AuditorID"></asp:Label>
        <asp:TextBox ID="ConclusionTextbox" runat="server" style="z-index: 1; left: 258px; top: 337px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="LogIDTextbox" runat="server" style="z-index: 1; left: 260px; top: 178px; position: absolute"></asp:TextBox>
        <asp:GridView ID="QuestionGrid" runat="server" DataSourceID="QuestionsConnection" style="z-index: 1; left: 1103px; top: 160px; position: absolute; height: 133px; width: 187px">
        </asp:GridView>
        <asp:SqlDataSource ID="AnswerConnection" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Answer]"></asp:SqlDataSource>
        <asp:GridView ID="AnswerGrid" runat="server" style="z-index: 1; left: 1500px; top: 173px; position: absolute; height: 133px; width: 187px" DataSourceID="AnswerConnection">
        </asp:GridView>
        <asp:SqlDataSource ID="AssignmentConnection" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Assignment]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="AuditLogConnection" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [AuditLog]"></asp:SqlDataSource>
        <br />
        <asp:TextBox ID="LogDateTextbox" runat="server" style="z-index: 1; left: 259px; top: 231px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="AuditorIDTextbox" runat="server" style="z-index: 1; left: 261px; position: absolute; top: 285px; height: 14px"></asp:TextBox>
        <asp:GridView ID="AssignmentGrid" runat="server" AutoGenerateColumns="False" DataSourceID="AssignmentConnection" style="z-index: 1; left: 612px; top: 150px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="QuizID" HeaderText="QuizID" SortExpression="QuizID" />
                <asp:BoundField DataField="Completion" HeaderText="Completion" SortExpression="Completion" />
                <asp:BoundField DataField="ManagerConfirm" HeaderText="ManagerConfirm" SortExpression="ManagerConfirm" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="AuditLogLabel" runat="server" style="z-index: 1; left: 210px; top: 504px; position: absolute; width: 95px;" Text="Audit Log"></asp:Label>
        <asp:Button ID="NewLogButton" runat="server" style="z-index: 1; left: 230px; top: 404px; position: absolute" Text="Create New Log" OnClick="NewLogButton_Click" />
    </form>
    <script type="text/javascript">

    </script>
</body>
</html>
