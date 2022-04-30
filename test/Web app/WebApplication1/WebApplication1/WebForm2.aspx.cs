using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.Script.Serialization;


namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in Repeater1.Items)
            {
                string answer = string.Empty;

                HtmlTableCell atag = item.FindControl("Quest") as HtmlTableCell;

                RadioButton control1 = (RadioButton)item.FindControl("RadMCQOp1");
                RadioButton control2 = (RadioButton)item.FindControl("RadMCQOp2");
                RadioButton control3 = (RadioButton)item.FindControl("RadMCQOp3");
                RadioButton control4 = (RadioButton)item.FindControl("RadMCQOp4");

                string Question = atag.InnerHtml;

                if (control1.Checked)
                {
                    answer = control1.Text;
                }

                else if (control2.Checked)
                {
                    answer = control2.Text;
                }

                else if (control3.Checked)
                {
                    answer = control3.Text;
                }

                else
                {
                    answer = control4.Text;
                }

                if (!string.IsNullOrEmpty(answer))
                {
                    string OnlineExaminationSystemConnectionString = ConfigurationManager.ConnectionStrings["OnlineExaminationSystemConnectionString"].ConnectionString;
                    SqlConnection conn = new SqlConnection(OnlineExaminationSystemConnectionString);
                    conn.Open();
                    SqlCommand cmd3 = new SqlCommand("StudentAnswer", conn);
                    cmd3.CommandType = CommandType.StoredProcedure;
                    cmd3.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
                    cmd3.Parameters.AddWithValue("@StId", StudentIdTextBox.Text);
                    cmd3.Parameters.AddWithValue("@Answer", answer);
                    cmd3.Parameters.AddWithValue("@Qbody", Question);
                    cmd3.ExecuteNonQuery();
                    conn.Close();
                }
            }



            foreach (RepeaterItem item in Repeater2.Items)
            {
                string answer = string.Empty;

                HtmlTableCell atag = item.FindControl("Quest") as HtmlTableCell;

                RadioButton control5 = (RadioButton)item.FindControl("RadTFOp1");
                RadioButton control6 = (RadioButton)item.FindControl("RadTFOp2");

                string Question = atag.InnerHtml;

                if (control5.Checked)
                {
                    answer = control5.Text;
                }

                else
                {
                    answer = control6.Text;
                }


                if (!string.IsNullOrEmpty(answer))
                {
                    string OnlineExaminationSystemConnectionString = ConfigurationManager.ConnectionStrings["OnlineExaminationSystemConnectionString"].ConnectionString;
                    SqlConnection conn = new SqlConnection(OnlineExaminationSystemConnectionString);
                    conn.Open();
                    SqlCommand cmd3 = new SqlCommand("StudentAnswer", conn);
                    cmd3.CommandType = CommandType.StoredProcedure;
                    cmd3.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
                    cmd3.Parameters.AddWithValue("@StId", StudentIdTextBox.Text);
                    cmd3.Parameters.AddWithValue("@Answer", answer);
                    cmd3.Parameters.AddWithValue("@Qbody", Question);
                    cmd3.ExecuteNonQuery();
                    conn.Close();
                }
            }


            string OnlineExaminationSystemConnectionString2 = ConfigurationManager.ConnectionStrings["OnlineExaminationSystemConnectionString"].ConnectionString;
            SqlConnection con4 = new SqlConnection(OnlineExaminationSystemConnectionString2);
            con4.Open();
            SqlCommand cmd4 = new SqlCommand("ExamCorrection", con4);
            cmd4.CommandType = CommandType.StoredProcedure;
            cmd4.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
            cmd4.Parameters.AddWithValue("@StId", StudentIdTextBox.Text);
            cmd4.ExecuteNonQuery();

            SqlCommand cmd5 = new SqlCommand("ResultDisplay", con4);
            cmd5.CommandType = CommandType.StoredProcedure;
            cmd5.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
            cmd5.Parameters.AddWithValue("@StId", StudentIdTextBox.Text);
            SqlDataReader reader = cmd5.ExecuteReader();
            reader.Read();
            ResultLabel.Text = "your result is:"+" "+reader["result"].ToString();
            con4.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string OnlineExaminationSystemConnectionString = ConfigurationManager.ConnectionStrings["OnlineExaminationSystemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(OnlineExaminationSystemConnectionString))
            {
                SqlCommand cmd1 = new SqlCommand("ExamMCQDisplay", con);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
                SqlCommand cmd2 = new SqlCommand("ExamTFDisplay", con);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@CrsName", CourseTextBox.Text);
                con.Open();
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                sda1.Fill(dt1);
                sda2.Fill(dt2);
                Repeater1.DataSource = dt1;
                Repeater2.DataSource = dt2;
                Repeater1.DataBind();
                Repeater2.DataBind();
            }

        }
    }
}