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
    public partial class MissionAndEncouragement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WorkVerses.Visible = false;
            Reminders.Visible = false;
        }

        protected void ShowVerses_Click(object sender, EventArgs e)
        {
            WorkVerses.Visible = true;
            Reminders.Visible = true;
        }

    }
}