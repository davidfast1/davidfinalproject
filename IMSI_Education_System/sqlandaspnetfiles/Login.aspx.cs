using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace IMSI_Education_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WrongCredsLabel.Visible = false;
        }

        protected void EmpSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=PC\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Employee WHERE EmployeeID=@EmployeeID AND Password=@Password";
                SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                sqlCommand.Parameters.AddWithValue("@EmployeeID",EmpIDTextbox.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@Password",EmpPassTextbox.Text.Trim());
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (count == 1)
                {
                    Session["EmployeeID"] = EmpIDTextbox.Text.Trim();
                    Response.Redirect("EmployeePage.aspx");
                }
                else { WrongCredsLabel.Visible = true; }

                sqlCon.Close();
            }
        }

        protected void ManSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=PC\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Manager WHERE ManagerID=@ManagerID AND Password=@Password";
                SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                sqlCommand.Parameters.AddWithValue("@ManagerID", ManIDTextbox.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@Password", ManPassTextbox.Text.Trim());
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (count == 1)
                {
                    Session["ManagerID"] = ManIDTextbox.Text.Trim();
                    Response.Redirect("ManagerPage.aspx");
                }
                else { WrongCredsLabel.Visible = true; }

                sqlCon.Close();
            }
        }

        protected void HRSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=PC\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM HREmployee WHERE HREmpID=@HREmpID AND Password=@Password";
                SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                sqlCommand.Parameters.AddWithValue("@HREmpID", HRIDTextbox.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@Password", HRPassTextbox.Text.Trim());
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (count == 1)
                {
                    Session["HREmpID"] = HRIDTextbox.Text.Trim();
                    Response.Redirect("HRPage.aspx");
                }
                else { WrongCredsLabel.Visible = true; }

                sqlCon.Close();
            }
        }

        protected void AudSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=PC\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM GovAuditor WHERE AuditorID=@AuditorID AND Password=@Password";
                SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                sqlCommand.Parameters.AddWithValue("@AuditorID", AudIDTextbox.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@Password", AudPassTextbox.Text.Trim());
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (count == 1)
                {
                    Session["AuditorID"] = AudIDTextbox.Text.Trim();
                    Response.Redirect("AuditorViewing.aspx");
                }
                else { WrongCredsLabel.Visible = true; }

                sqlCon.Close();
            }
        }
    }
}