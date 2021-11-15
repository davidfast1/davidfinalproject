using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace IMSI_Education_System
{
    public partial class HRPage : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=PC\\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True";

            QuestionsLabel.Visible = false;
            HideQuestionsAndAnswersButton.Visible = false;
            QuestionGridview.Visible = false;
            AnswersGridview.Visible = false;
            AnswersLabel.Visible = false;
            QuizGridView.Visible = false;
            QuizLabel.Visible = false;
            NewQuestionError.Visible = false;
            NewQuizError.Visible = false;
            NewAnswerError.Visible = false;
        }

        protected void ShowQuestionsAndAnswersButton_Click(object sender, EventArgs e)
        {
            QuestionsLabel.Visible = true;
            HideQuestionsAndAnswersButton.Visible = true;
            QuestionGridview.Visible = true;
            AnswersGridview.Visible = true;
            ShowQuestionsAndAnswersButton.Visible = false;
            AnswersLabel.Visible = true;
            QuizGridView.Visible = true;
            QuizLabel.Visible = true;
            NewQuestionError.Visible = false;
        }

        protected void HideQuestionsAndAnswersButton_Click(object sender, EventArgs e)
        {
            QuestionsLabel.Visible = false;
            HideQuestionsAndAnswersButton.Visible = false;
            QuestionGridview.Visible = false;
            AnswersGridview.Visible = false;
            ShowQuestionsAndAnswersButton.Visible = true;
            AnswersLabel.Visible = false;
            QuizGridView.Visible = false;
            QuizLabel.Visible = false;

        }

        protected void CreateNewQuizButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into Quiz" + "(QuizID, QuizName) values (@QuizID, @QuizName)", con);
            com.Parameters.AddWithValue("@QuizID", NewQuizIDTextbox.Text);
            com.Parameters.AddWithValue("@QuizName", NewQuizNameTextbox.Text);

            if (NewQuizIDTextbox.Text == "" || NewQuizNameTextbox.Text == "")
            {
                NewQuizError.Visible = true;
            } else
            {
                com.ExecuteNonQuery();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);

            }
        }

        protected void CreateNewQuestionTextbox_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into Question" + "(QuestionID, QuestionText, QuizID) values (@QuestionID, @QuestionText, @QuizID)", con);
            com.Parameters.AddWithValue("@QuestionID", NewQuestionIDTextbox.Text);
            com.Parameters.AddWithValue("@QuestionText", NewQuestionTextTextbox.Text);
            com.Parameters.AddWithValue("@QuizID", NewQuestionQuizIDTextbox.Text);

            if (NewQuestionIDTextbox.Text == "" || NewQuestionTextTextbox.Text == "" || NewQuestionQuizIDTextbox.Text == "")
            {
                NewQuestionError.Visible = true;
            } else
            {
                com.ExecuteNonQuery();

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }

        }

        protected void CreateNewAnswerButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into Answer" + "(AnswerID, AnswerText, QuestionID, IsTrue) values (@AnswerID, @AnswerText, @QuestionID, @IsTrue)", con);
            com.Parameters.AddWithValue("@AnswerID", NewAnswerIDTextbox.Text);
            com.Parameters.AddWithValue("@AnswerText", NewAnswerTextTextbox.Text);
            com.Parameters.AddWithValue("@QuestionID", NewAnswerQuestionIDTextbox.Text);
            com.Parameters.AddWithValue("@IsTrue", NewAnswerIsTrueTextbox.Text);

            if (NewAnswerIDTextbox.Text == "" || NewAnswerTextTextbox.Text == "" || NewAnswerQuestionIDTextbox.Text == "" || NewAnswerIsTrueTextbox.Text == "")
            {
                NewAnswerError.Visible = true;
            } else
            {
                com.ExecuteNonQuery();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);

            }

        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}