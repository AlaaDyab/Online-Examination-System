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
    public partial class instructorpage : Form
    {
        public instructorpage()
        {
            InitializeComponent();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            studentresult rpage = new studentresult();
            rpage.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            questions qpage = new questions();
            qpage.Show();
            this.Hide();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://onlineexaminationsystem.azurewebsites.net/WebForm1.aspx");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
