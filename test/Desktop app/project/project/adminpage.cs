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
    public partial class adminpage : Form
    {
        public adminpage()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            studentsdata Spage = new studentsdata();
            Spage.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            instructorsdata Ipage = new instructorsdata();
            Ipage.Show();
            this.Hide();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            studentresult rpage = new studentresult();
            rpage.Show();
            this.Hide();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            reports rpage = new reports();
            rpage.Show();
            this.Hide();
        }
    }
}
