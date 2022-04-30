using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace project
{
    public partial class yourresult : Form
    {
        public yourresult()
        {
            InitializeComponent();
            displaydata();
        }
        SqlConnection con = new SqlConnection(@"Data Source=onlineexaminationdbserver.database.windows.net;Initial Catalog=OnlineExamination;Persist Security Info=True;User ID=AlaaDyab;Password=none_none00");

        private void displaydata()
        {
            try
            {
                con.Open();
                string query = "select [dbo].[course].crs_id ,[dbo].[course].crs_name , [dbo].[student].st_id,[dbo].[student].st_name, [dbo].[student_exam_result].result from[dbo].[student] inner join[dbo].[student_exam_result] on[dbo].[student_exam_result].st_id =[dbo].[student].st_id inner join[dbo].[course] on[dbo].[course].crs_id =[dbo].[student_exam_result].crs_id where[dbo].[student].st_name ='" + login.username + "'";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                SqlCommandBuilder builder = new SqlCommandBuilder(sda);
                var ds = new DataSet();
                sda.Fill(ds);
                dataGridView1.DataSource = ds.Tables[0];
                con.Close();
            }
            catch (Exception e) {
                MessageBox.Show(e.Message);
            }

        }
        private void yourresult_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            studentpage spage = new studentpage();
            spage.Show();
            this.Hide();
        }
    }
}
