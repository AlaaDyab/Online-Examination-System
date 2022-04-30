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
    public partial class instructorsdata : Form
    {
        public instructorsdata()
        {
            InitializeComponent();
            displaydata();
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
            ins_id.Text = ""; ins_name.Text = ""; ins_phone.Text = ""; ins_password.Text = ""
                ; ins_dob.Text = ""; ins_address.Text = ""; depart_id.Text = "";
        }

        private void displaydata()
        {
            con.Open();
            string query = "select * from [dbo].[instructor]";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlCommandBuilder builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            con.Close();

        }

        private void savebtn_Click(object sender, EventArgs e)
        {

            if (ins_id.Text == "" || ins_name.Text == "" || ins_phone.Text == "" || ins_password.Text == ""
                || ins_dob.Text == "" || ins_address.Text == "" || depart_id.Text == "")
            {
                MessageBox.Show("missing infromation");
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into [dbo].[instructor] (inst_id,inst_name,inst_phone,inst_address,inst_pass,inst_dob,dept_id) " +
                        "values(@sid,@sn,@sph,@sa,@spass,@sdob,@sdid)", con);
                    cmd.Parameters.AddWithValue("@sid", ins_id.Text);
                    cmd.Parameters.AddWithValue("@sn", ins_name.Text);
                    cmd.Parameters.AddWithValue("@sph", ins_phone.Text);
                    cmd.Parameters.AddWithValue("@sa", ins_address.Text);
                    cmd.Parameters.AddWithValue("@spass", ins_password.Text);
                    cmd.Parameters.AddWithValue("@sdob", ins_dob.Text);
                    cmd.Parameters.AddWithValue("@sdid", depart_id.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("instractor information insert");


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
            if (ins_id.Text == "" || ins_name.Text == "" || ins_phone.Text == "" || ins_password.Text == ""
                || ins_dob.Text == "" || ins_address.Text == "" || depart_id.Text == "")
            {
                MessageBox.Show("missing infromation");
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update [dbo].[instructor] set inst_name=@sn,inst_phone=@sph,inst_address=@sa,inst_pass=@spass,inst_dob=@sdob,dept_id=@sdid  where inst_id=@sid", con);
                    cmd.Parameters.AddWithValue("@sid", ins_id.Text);
                    cmd.Parameters.AddWithValue("@sn", ins_name.Text);
                    cmd.Parameters.AddWithValue("@sph", ins_phone.Text);
                    cmd.Parameters.AddWithValue("@sa", ins_address.Text);
                    cmd.Parameters.AddWithValue("@spass", ins_password.Text);
                    cmd.Parameters.AddWithValue("@sdob", ins_dob.Text);
                    cmd.Parameters.AddWithValue("@sdid", depart_id.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("instractor information uptade");


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

        private void instractorsdata_Load(object sender, EventArgs e)
        {

        }
    }
}
