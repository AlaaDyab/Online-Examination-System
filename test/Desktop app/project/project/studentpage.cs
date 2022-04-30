using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project
{
    public partial class studentpage : Form
    {
        public studentpage()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            studentcourse spage = new studentcourse();
            spage.Show();
            this.Hide();

        }

        private void button5_Click(object sender, EventArgs e)
        {
            yourresult spage = new yourresult();
            spage.Show();
            this.Hide();


        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://onlineexaminationsystem.azurewebsites.net/WebForm2.aspx");

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
