using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string OnlineExaminationSystemConnectionString = ConfigurationManager.ConnectionStrings["OnlineExaminationSystemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(OnlineExaminationSystemConnectionString))
            {
                SqlCommand cmd = new SqlCommand("ExamGeneration", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ExamQnumber", NOQTextBox.Text);
                cmd.Parameters.AddWithValue("@CrsName", CrsNameTextBox.Text);
                cmd.Parameters.AddWithValue("@NOMCQ", NoMCQTextBox.Text);
                cmd.Parameters.AddWithValue("@NOTF", NoTFTextBox.Text);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }
        }
    }
}