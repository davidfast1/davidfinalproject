<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRPage.aspx.cs" Inherits="IMSI_Education_System.HRPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:SqlDataSource ID="QuestionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Question]"></asp:SqlDataSource>

        <asp:GridView ID="QuizGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="QuizID" DataSourceID="QuizDataSource" style="z-index: 1; left: 669px; top: 161px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="QuizID" HeaderText="QuizID" ReadOnly="True" SortExpression="QuizID" />
                <asp:BoundField DataField="QuizName" HeaderText="QuizName" SortExpression="QuizName" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="QuizDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Quiz]"></asp:SqlDataSource>

        <asp:GridView ID="QuestionGridview" runat="server" DataSourceID="QuestionDataSource" style="z-index: 1; left: 962px; top: 154px; position: absolute; height: 143px; width: 347px">
        </asp:GridView>

        <asp:SqlDataSource ID="AnswersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Capstone_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Answer]"></asp:SqlDataSource>

        <asp:Label ID="QuestionIDLabel" runat="server" style="z-index: 1; left: 133px; top: 265px; position: absolute" Text="QuestionID"></asp:Label>

        <asp:Label ID="QuizLabel" runat="server" style="z-index: 1; left: 736px; top: 107px; position: absolute" Text="Quizzes"></asp:Label>

        <asp:Label ID="NewQuizNameLabel" runat="server" style="z-index: 1; left: 129px; top: 86px; position: absolute" Text="New Quiz Name"></asp:Label>
        <asp:TextBox ID="NewQuestionTextTextbox" runat="server" style="z-index: 1; left: 279px; top: 310px; position: absolute; right: 1482px;"></asp:TextBox>
        <asp:Label ID="NewAnswerTextLabel" runat="server" style="z-index: 1; left: 195px; top: 463px; position: absolute; right: 752px" Text="New Answer Text"></asp:Label>
        <asp:TextBox ID="NewQuizNameTextbox" runat="server" style="z-index: 1; left: 63px; top: 128px; position: absolute; width: 182px"></asp:TextBox>

        <asp:GridView ID="AnswersGridview" runat="server" AutoGenerateColumns="False" DataKeyNames="AnswerID" DataSourceID="AnswersDataSource" style="z-index: 1; left: 1469px; top: 159px; position: absolute; height: 133px; width: 339px">
            <Columns>
                <asp:BoundField DataField="AnswerID" HeaderText="AnswerID" ReadOnly="True" SortExpression="AnswerID" />
                <asp:BoundField DataField="AnswerText" HeaderText="AnswerText" SortExpression="AnswerText" />
                <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" SortExpression="QuestionID" />
                <asp:CheckBoxField DataField="IsTrue" HeaderText="IsTrue" SortExpression="IsTrue" />
            </Columns>
        </asp:GridView>

        <asp:Label ID="QuestionsLabel" runat="server" style="z-index: 1; left: 1118px; top: 106px; position: absolute" Text="Questions"></asp:Label>

        <asp:Label ID="AnswersLabel" runat="server" style="z-index: 1; left: 1621px; top: 92px; position: absolute" Text="Answers"></asp:Label>

        <asp:Button ID="ShowQuestionsAndAnswersButton" runat="server" style="z-index: 1; left: 1297px; top: 60px; position: absolute; width: 202px;" Text="Show Questions and Answers" OnClick="ShowQuestionsAndAnswersButton_Click" />

        <asp:Button ID="HideQuestionsAndAnswersButton" runat="server" style="z-index: 1; left: 1294px; top: 58px; position: absolute; width: 206px;" Text="Hide Questions and Answers" OnClick="HideQuestionsAndAnswersButton_Click" />

        <asp:TextBox ID="NewQuizIDTextbox" runat="server" style="z-index: 1; left: 368px; top: 126px; position: absolute; width: 143px"></asp:TextBox>

        <asp:Label ID="NewQuizIDLabel" runat="server" style="z-index: 1; left: 367px; top: 79px; position: absolute" Text="New Quiz ID (int datatype)"></asp:Label>

        <asp:Button ID="CreateNewQuizButton" runat="server" style="z-index: 1; left: 257px; top: 176px; position: absolute; width: 118px;" Text="Create New Quiz" OnClick="CreateNewQuizButton_Click" />

        <asp:Label ID="QuestionTextLabel" runat="server" style="z-index: 1; left: 297px; top: 270px; position: absolute" Text="Question Text"></asp:Label>
        <asp:Label ID="QuestionQuizIDLabel" runat="server" style="z-index: 1; left: 504px; top: 269px; position: absolute" Text="Quiz ID"></asp:Label>

        <asp:TextBox ID="NewQuestionIDTextbox" runat="server" style="z-index: 1; left: 108px; top: 308px; position: absolute; width: 106px"></asp:TextBox>
        <asp:TextBox ID="NewQuestionQuizIDTextbox" runat="server" style="z-index: 1; left: 480px; top: 312px; position: absolute; width: 88px"></asp:TextBox>

        <asp:Button ID="CreateNewQuestionTextbox" runat="server" style="z-index: 1; left: 266px; top: 385px; position: absolute; width: 141px;" Text="Create New Question" OnClick="CreateNewQuestionTextbox_Click" />

        <asp:Label ID="NewAnswerQuestionID" runat="server" style="z-index: 1; left: 367px; top: 463px; position: absolute" Text="New Answer QuestionID"></asp:Label>
        <asp:Label ID="NewAnswerIDLabel" runat="server" style="z-index: 1; left: 52px; top: 462px; position: absolute" Text="New Answer ID"></asp:Label>
        <asp:Label ID="NewAnswerIsTrueLabel" runat="server" style="z-index: 1; left: 27px; top: 578px; position: absolute; height: 19px;" Text="New Answer IsTrue"></asp:Label>

        <asp:TextBox ID="NewAnswerTextTextbox" runat="server" style="z-index: 1; left: 189px; top: 504px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="NewAnswerIDTextbox" runat="server" style="z-index: 1; left: 35px; top: 507px; position: absolute; width: 114px"></asp:TextBox>
        <p>
            <asp:TextBox ID="NewAnswerQuestionIDTextbox" runat="server" style="z-index: 1; left: 370px; top: 500px; position: absolute"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="NewAnswerIsTrueTextbox" runat="server" style="z-index: 1; left: 15px; top: 616px; position: absolute"></asp:TextBox>
        </p>
        <asp:Button ID="CreateNewAnswerButton" runat="server" style="z-index: 1; left: 232px; top: 594px; position: absolute" Text="Create New Answer" OnClick="CreateNewAnswerButton_Click" />
        <asp:Button ID="LogoutButton" runat="server" style="z-index: 1; left: 30px; top: 50px; position: absolute; width: 90px;" Text="Logout" OnClick="LogoutButton_Click" />

        <p>
            <asp:Label ID="NewQuestionError" runat="server" style="z-index: 1; left: 500px; top: 35px; position: absolute; height: 19px;" Text="Enter all fields for a new question."></asp:Label>
            <asp:Label ID="NewQuizError" runat="server" style="z-index: 1; left: 500px; top: 35px; position: absolute; height: 19px;" Text="Enter all fields for the new quiz."></asp:Label>
            <asp:Label ID="NewAnswerError" runat="server" style="z-index: 1; left: 500px; top: 35px; position: absolute; height: 19px;" Text="Enter all fields for a new answer."></asp:Label>

        </p>
    </form>
</body>
</html>
