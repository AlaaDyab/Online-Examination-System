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
    public partial class questions : Form
    {
        public questions()
        {
            InitializeComponent();
            displaydata();
        }
        SqlConnection con = new SqlConnection(@"Data Source=onlineexaminationdbserver.database.windows.net;Initial Catalog=OnlineExamination;Persist Security Info=True;User ID=AlaaDyab;Password=none_none00");

        private void displaydata()
        {
            con.Open();
            string query = "select * from [dbo].[questions]";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlCommandBuilder builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            con.Close();

        }
        private void questions_Load(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }
        private void resettexts()
        {
            q_id.Text = ""; q_body.Text = ""; q_ans.Text = ""; q_type.Text = ""
                ; q_qbank.Text=""; q_score.Text = ""; 
        }

        private void savebtn_Click(object sender, EventArgs e)
        {
            if (q_id.Text == "" || q_body.Text == "" || q_ans.Text == "" 
               || q_qbank.Text == "" || q_score.Text == "" || q_type.Text == "")
            {
                MessageBox.Show("missing infromation");
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into [dbo].[questions] (quest_id,body,correct_answer,score,qtype,qbank_id) " +
                        "values(@sid,@sn,@sph,@sa,@sdid,@sdob)", con);
                    cmd.Parameters.AddWithValue("@sid", q_id.Text);
                    cmd.Parameters.AddWithValue("@sn", q_body.Text);
                    cmd.Parameters.AddWithValue("@sph", q_ans.Text);
                    cmd.Parameters.AddWithValue("@sa", q_score.Text);
                    cmd.Parameters.AddWithValue("@sdid", q_type.Text);
                    cmd.Parameters.AddWithValue("@sdob", q_qbank.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("question information insert");


                    con.Close();
                    resettexts();
                    displaydata();


                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        private void delete_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentCell.RowIndex);

        }

        private void reset_Click(object sender, EventArgs e)
        {
            resettexts();
        }

        private void updatebtn_Click(object sender, EventArgs e)
        {
            if (q_id.Text == "" || q_body.Text == "" || q_ans.Text == ""
               || q_qbank.Text == "" || q_score.Text == "" || q_type.Text == "")
            {
                MessageBox.Show("missing infromation");
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update [dbo].[questions] set body=@sn,correct_answer=@sph,score=@sa,qtype=@sdid,qbank_id=@sdob where quest_id=@sid"
                       , con);
                    cmd.Parameters.AddWithValue("@sid", q_id.Text);
                    cmd.Parameters.AddWithValue("@sn", q_body.Text);
                    cmd.Parameters.AddWithValue("@sph", q_ans.Text);
                    cmd.Parameters.AddWithValue("@sa", q_score.Text);
                    cmd.Parameters.AddWithValue("@sdid", q_type.Text);
                    cmd.Parameters.AddWithValue("@sdob", q_qbank.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("question information update");


                    con.Close();
                    resettexts();
                    displaydata();


                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            instructorpage spage = new instructorpage();
            spage.Show();
            this.Hide();
        }
    }
}
