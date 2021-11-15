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
    public partial class ManagerPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=PC\\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True";
            UpdateDiv.Visible = false;
            AssignmentsDiv.Visible = false;
            Reminder.Visible = false;
            //Reminder.Visible = false;
        }

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Update Assignment set ManagerConfirm = @ManagerConfirm where EmployeeID = @EmployeeID and QuizID = @QuizID", con);
            com.Parameters.AddWithValue("@ManagerConfirm", DateConfirmedTextbox.Text);
            com.Parameters.AddWithValue("@EmployeeID", EmployeeIDTextbox.Text);
            com.Parameters.AddWithValue("@QuizID", QuizIDTextbox.Text);

            if (DateConfirmedTextbox.Text == "" || EmployeeIDTextbox.Text == "" || QuizIDTextbox.Text == "")
            {
                Reminder.Visible = true;
            }
            else
            {
                com.ExecuteNonQuery();

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }

        protected void ViewUpdateControlsButton_Click(object sender, EventArgs e)
        {
            UpdateDiv.Visible = true;
            AssignmentsDiv.Visible = true;
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}