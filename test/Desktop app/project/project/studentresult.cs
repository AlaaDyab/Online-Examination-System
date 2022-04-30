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
    public partial class studentresult : Form
    {
        public studentresult()
        {
            InitializeComponent();
            displaydata();
        }
        SqlConnection con = new SqlConnection(@"Data Source=onlineexaminationdbserver.database.windows.net;Initial Catalog=OnlineExamination;Persist Security Info=True;User ID=AlaaDyab;Password=none_none00");

        private void displaydata()
        {
            con.Open();
            string query = "select * from [dbo].[student_exam_result]";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlCommandBuilder builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            con.Close();

        }

        private void studentresult_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
