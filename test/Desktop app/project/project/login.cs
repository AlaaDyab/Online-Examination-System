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
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }
        public static string username = "";
        SqlConnection con = new SqlConnection(@"Data Source=onlineexaminationdbserver.database.windows.net;Initial Catalog=OnlineExamination;Persist Security Info=True;User ID=AlaaDyab;Password=none_none00");

        private void stlogin_Click(object sender, EventArgs e)
        {
            if (userNameT.Text==""||userPass.Text=="") {
                MessageBox.Show("plz enter user name or password");

            } else {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select COUNT(*) from [dbo].[student] where st_name='" + userNameT.Text+"' and st_pass='"+userPass.Text+"'",con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    username = userNameT.Text;
                    studentpage spage = new studentpage();
                    spage.Show();
                    this.Hide();
                    con.Close();


                }
                else {
                    MessageBox.Show("wrong password or name ");
                }
            }

        }

        private void instlogin_Click(object sender, EventArgs e)
        {
            if (userNameT.Text == "" || userPass.Text == "")
            {
                MessageBox.Show("plz enter user name or password");

            }
            else
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select COUNT(*) from [dbo].[instructor] where inst_name='" + userNameT.Text + "' and inst_pass='" + userPass.Text +"'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    username = userNameT.Text;
                    instructorpage ipage = new instructorpage();
                    ipage.Show();
                    this.Hide();
                    con.Close();


                }
                else
                {
                    MessageBox.Show("wrong password or name ");
                }
            }
        }

        private void adminlogin_Click(object sender, EventArgs e)
        {

            if (userNameT.Text == "" || userPass.Text == "")
            {
                MessageBox.Show("plz enter user name or password");

            }
            else
            {
                
                if (userNameT.Text == "admin" && userPass.Text == "123456")
                {
                    username = userNameT.Text;
                    adminpage apage = new adminpage();
                    apage.Show();
                    this.Hide();
                    con.Close();


                }
                else
                {
                    MessageBox.Show("wrong password or name ");
                }
            }

        }

        private void login_Load(object sender, EventArgs e)
        {

        }
    }
}
