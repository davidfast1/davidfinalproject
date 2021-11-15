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
    public partial class EmployeePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=PC\\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True";

            EmpIDLabel.Text = (string)Session["EmployeeID"];
            EmpIDLabel.Visible = false;
            CompAssignmentsLabel.Visible = false;
            con.Open();
            BackButton.Visible = false;

            string cmd = "select Quiz.QuizID as QuizID, Quiz.QuizName as QuizName from Quiz, Assignment, Employee where Quiz.QuizID = Assignment.QuizID and Assignment.Completion is null and Employee.EmployeeID = Assignment.EmployeeID and Employee.EmployeeID = " + EmpIDLabel.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();
        }

        protected void CompAssignmentsButton_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            UncompAssignmentsLabel.Visible = false;
            CompAssignmentsLabel.Visible = true;
            con.Open();
            string cmd = "select Quiz.QuizID as QuizID, Quiz.QuizName as QuizName from Quiz, Assignment, Employee where Quiz.QuizID = Assignment.QuizID and Assignment.Completion is not null and Employee.EmployeeID = Assignment.EmployeeID and Employee.EmployeeID = " + EmpIDLabel.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            CompAssignmentsGridview.DataSource = ds.Tables[0];
            CompAssignmentsGridview.DataBind();
            con.Close();
            BackButton.Visible = true;
            CompAssignmentsButton.Visible = false;
            CompAssignmentsGridview.Visible = true;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            BackButton.Visible = false;
            CompAssignmentsButton.Visible = true;
            GridView1.Visible = true;
            CompAssignmentsGridview.Visible = false;
            CompAssignmentsLabel.Visible = false;
            UncompAssignmentsLabel.Visible = true;
        }
    }
}