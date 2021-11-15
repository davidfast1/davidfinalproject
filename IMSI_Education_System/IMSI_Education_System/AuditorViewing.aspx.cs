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
    public partial class AuditorViewing : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=PC\\SQLEXPRESS;Initial Catalog=Capstone_Project;Integrated Security=True";
            NewLogError.Visible = false;
        }

        protected void NewLogButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into AuditLog" + "(LogID,LogDate,AuditorID,Conclusion) values (@LogID,@LogDate,@AuditorID,@Conclusion)", con);
            com.Parameters.AddWithValue("@LogID", LogIDTextbox.Text);
            com.Parameters.AddWithValue("@LogDate", LogDateTextbox.Text);
            com.Parameters.AddWithValue("@AuditorID", AuditorIDTextbox.Text);
            com.Parameters.AddWithValue("@Conclusion", ConclusionTextbox.Text);

            if (LogIDTextbox.Text == "" || LogDateTextbox.Text == "" || AuditorIDTextbox.Text == "" || ConclusionTextbox.Text == "")
            {
                NewLogError.Visible = true;
            } else
            {
                com.ExecuteNonQuery();

            }

        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }
    }
}