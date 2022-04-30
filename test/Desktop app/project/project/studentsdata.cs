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
    public partial class studentsdata : Form
    {
        public studentsdata()
        {
            InitializeComponent();
            displaydata();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            adminpage Apage = new adminpage();
            Apage.Show();
            this.Close();
        }
        SqlConnection con = new SqlConnection(@"Data Source=onlineexaminationdbserver.database.windows.net;Initial Catalog=OnlineExamination;Persist Security Info=True;User ID=AlaaDyab;Password=none_none00");

        private void resettexts()
        {
            st_id.Text = ""; st_name.Text = ""; st_phone.Text = ""; st_password.Text = ""
                ; st_dob.Text = ""; st_address.Text = ""; depart_id.Text = "";
        }

        private void displaydata() {
            con.Open();
            string query = "select * from [dbo].[student]";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            SqlCommandBuilder builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            con.Close();

        }
        private void savebtn_Click(object sender, EventArgs e)
        {
            if (st_id.Text==""||st_name.Text==""|| st_phone.Text==""||st_password.Text==""
                ||st_dob.Text==""||st_address.Text==""||depart_id.Text=="") {
                MessageBox.Show("missing infromation");
            } 
            else {
                try {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into [dbo].[student] (st_id,st_name,st_phone,st_address,st_pass,st_dob,dept_id) " +
                        "values(@sid,@sn,@sph,@sa,@spass,@sdob,@sdid)",con);
                    cmd.Parameters.AddWithValue("@sid",st_id.Text);
                    cmd.Parameters.AddWithValue("@sn", st_name.Text);
                    cmd.Parameters.AddWithValue("@sph", st_phone.Text);
                    cmd.Parameters.AddWithValue("@sa", st_address.Text);
                    cmd.Parameters.AddWithValue("@spass", st_password.Text);
                    cmd.Parameters.AddWithValue("@sdob", st_dob.Text);
                    cmd.Parameters.AddWithValue("@sdid", depart_id.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("student information insert");
                

                    con.Close();
                    resettexts();
                    displaydata();


                } catch (Exception ex){
                    MessageBox.Show(ex.Message);
                }

            }

        }

        private void reset_Click(object sender, EventArgs e)
        {
            resettexts();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.RemoveAt(dataGridView1.CurrentCell.RowIndex);
        }

        private void updatebtn_Click(object sender, EventArgs e)
        {
            if (st_id.Text == "" || st_name.Text == "" || st_phone.Text == "" || st_password.Text == ""
                || st_dob.Text == "" || st_address.Text == "" || depart_id.Text == "")
            {
                MessageBox.Show("missing infromation");
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update [dbo].[student] set "+
                        "st_name=@sn,st_phone=@sph,st_address=@sa,st_pass=@spass,st_dob=@sdob,dept_id=@sdid  where st_id=@sid" , con);
                    cmd.Parameters.AddWithValue("@sid", st_id.Text);
                    cmd.Parameters.AddWithValue("@sn", st_name.Text);
                    cmd.Parameters.AddWithValue("@sph", st_phone.Text);
                    cmd.Parameters.AddWithValue("@sa", st_address.Text);
                    cmd.Parameters.AddWithValue("@spass", st_password.Text);
                    cmd.Parameters.AddWithValue("@sdob", st_dob.Text);
                    cmd.Parameters.AddWithValue("@sdid", depart_id.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("student information uptade");


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

        int key = 0;
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            st_id.Text = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            st_name.Text = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
            st_phone.Text = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            st_address.Text = dataGridView1.SelectedRows[0].Cells[3].Value.ToString();
            st_dob.Text = dataGridView1.SelectedRows[0].Cells[4].Value.ToString();
            st_age.Text = dataGridView1.SelectedRows[0].Cells[5].Value.ToString();
            st_password.Text = dataGridView1.SelectedRows[0].Cells[6].Value.ToString();
            depart_id.Text = dataGridView1.SelectedRows[0].Cells[7].Value.ToString();


            if (st_name.Text=="") {
                key = 0;
            } else {
                key = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value.ToString());
            
            }



        }

        private void studentsdata_Load(object sender, EventArgs e)
        {

        }
    }
}
