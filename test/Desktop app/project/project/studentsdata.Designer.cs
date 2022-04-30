
namespace project
{
    partial class studentsdata
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.st_id = new System.Windows.Forms.TextBox();
            this.st_address = new System.Windows.Forms.TextBox();
            this.st_phone = new System.Windows.Forms.TextBox();
            this.st_name = new System.Windows.Forms.TextBox();
            this.st_age = new System.Windows.Forms.TextBox();
            this.st_password = new System.Windows.Forms.TextBox();
            this.depart_id = new System.Windows.Forms.TextBox();
            this.st_dob = new System.Windows.Forms.TextBox();
            this.savebtn = new System.Windows.Forms.Button();
            this.updatebtn = new System.Windows.Forms.Button();
            this.reset = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.delete = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(306, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(288, 33);
            this.label1.TabIndex = 0;
            this.label1.Text = "Students Data page";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(12, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(92, 34);
            this.button1.TabIndex = 1;
            this.button1.Text = "back";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // st_id
            // 
            this.st_id.Location = new System.Drawing.Point(12, 111);
            this.st_id.Name = "st_id";
            this.st_id.Size = new System.Drawing.Size(155, 20);
            this.st_id.TabIndex = 2;
            // 
            // st_address
            // 
            this.st_address.Location = new System.Drawing.Point(735, 111);
            this.st_address.Name = "st_address";
            this.st_address.Size = new System.Drawing.Size(148, 20);
            this.st_address.TabIndex = 3;
            // 
            // st_phone
            // 
            this.st_phone.Location = new System.Drawing.Point(482, 111);
            this.st_phone.Name = "st_phone";
            this.st_phone.Size = new System.Drawing.Size(153, 20);
            this.st_phone.TabIndex = 4;
            // 
            // st_name
            // 
            this.st_name.Location = new System.Drawing.Point(247, 111);
            this.st_name.Name = "st_name";
            this.st_name.Size = new System.Drawing.Size(137, 20);
            this.st_name.TabIndex = 5;
            // 
            // st_age
            // 
            this.st_age.Location = new System.Drawing.Point(247, 195);
            this.st_age.Name = "st_age";
            this.st_age.Size = new System.Drawing.Size(137, 20);
            this.st_age.TabIndex = 9;
            // 
            // st_password
            // 
            this.st_password.Location = new System.Drawing.Point(482, 195);
            this.st_password.Name = "st_password";
            this.st_password.Size = new System.Drawing.Size(153, 20);
            this.st_password.TabIndex = 8;
            // 
            // depart_id
            // 
            this.depart_id.Location = new System.Drawing.Point(735, 195);
            this.depart_id.Name = "depart_id";
            this.depart_id.Size = new System.Drawing.Size(148, 20);
            this.depart_id.TabIndex = 7;
            // 
            // st_dob
            // 
            this.st_dob.Location = new System.Drawing.Point(12, 195);
            this.st_dob.Name = "st_dob";
            this.st_dob.Size = new System.Drawing.Size(155, 20);
            this.st_dob.TabIndex = 6;
            // 
            // savebtn
            // 
            this.savebtn.Location = new System.Drawing.Point(234, 252);
            this.savebtn.Name = "savebtn";
            this.savebtn.Size = new System.Drawing.Size(89, 23);
            this.savebtn.TabIndex = 10;
            this.savebtn.Text = "save";
            this.savebtn.UseVisualStyleBackColor = true;
            this.savebtn.Click += new System.EventHandler(this.savebtn_Click);
            // 
            // updatebtn
            // 
            this.updatebtn.Location = new System.Drawing.Point(364, 252);
            this.updatebtn.Name = "updatebtn";
            this.updatebtn.Size = new System.Drawing.Size(89, 23);
            this.updatebtn.TabIndex = 11;
            this.updatebtn.Text = "update";
            this.updatebtn.UseVisualStyleBackColor = true;
            this.updatebtn.Click += new System.EventHandler(this.updatebtn_Click);
            // 
            // reset
            // 
            this.reset.Location = new System.Drawing.Point(613, 252);
            this.reset.Name = "reset";
            this.reset.Size = new System.Drawing.Size(89, 23);
            this.reset.TabIndex = 12;
            this.reset.Text = "reset";
            this.reset.UseVisualStyleBackColor = true;
            this.reset.Click += new System.EventHandler(this.reset_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(12, 92);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 16);
            this.label2.TabIndex = 13;
            this.label2.Text = "student id";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(244, 92);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 16);
            this.label3.TabIndex = 14;
            this.label3.Text = "student name";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(479, 92);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 16);
            this.label4.TabIndex = 15;
            this.label4.Text = "student phone";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(732, 92);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(119, 16);
            this.label5.TabIndex = 16;
            this.label5.Text = "student address";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(732, 176);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(107, 16);
            this.label6.TabIndex = 17;
            this.label6.Text = " department id";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(479, 176);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(129, 16);
            this.label7.TabIndex = 18;
            this.label7.Text = "student password";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(244, 176);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(89, 16);
            this.label8.TabIndex = 19;
            this.label8.Text = "student age";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(9, 176);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(144, 16);
            this.label9.TabIndex = 20;
            this.label9.Text = "student date of birth";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToOrderColumns = true;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 306);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(885, 208);
            this.dataGridView1.TabIndex = 21;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // delete
            // 
            this.delete.Location = new System.Drawing.Point(482, 251);
            this.delete.Name = "delete";
            this.delete.Size = new System.Drawing.Size(89, 23);
            this.delete.TabIndex = 22;
            this.delete.Text = "delete";
            this.delete.UseVisualStyleBackColor = true;
            this.delete.Click += new System.EventHandler(this.button2_Click);
            // 
            // studentsdata
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(909, 526);
            this.Controls.Add(this.delete);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.reset);
            this.Controls.Add(this.updatebtn);
            this.Controls.Add(this.savebtn);
            this.Controls.Add(this.st_age);
            this.Controls.Add(this.st_password);
            this.Controls.Add(this.depart_id);
            this.Controls.Add(this.st_dob);
            this.Controls.Add(this.st_name);
            this.Controls.Add(this.st_phone);
            this.Controls.Add(this.st_address);
            this.Controls.Add(this.st_id);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label1);
            this.Name = "studentsdata";
            this.Text = "studentsdata";
            this.Load += new System.EventHandler(this.studentsdata_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox st_id;
        private System.Windows.Forms.TextBox st_address;
        private System.Windows.Forms.TextBox st_phone;
        private System.Windows.Forms.TextBox st_name;
        private System.Windows.Forms.TextBox st_age;
        private System.Windows.Forms.TextBox st_password;
        private System.Windows.Forms.TextBox depart_id;
        private System.Windows.Forms.TextBox st_dob;
        private System.Windows.Forms.Button savebtn;
        private System.Windows.Forms.Button updatebtn;
        private System.Windows.Forms.Button reset;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button delete;
    }
}