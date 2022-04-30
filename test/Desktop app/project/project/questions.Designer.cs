
namespace project
{
    partial class questions
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.delete = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.reset = new System.Windows.Forms.Button();
            this.updatebtn = new System.Windows.Forms.Button();
            this.savebtn = new System.Windows.Forms.Button();
            this.q_type = new System.Windows.Forms.TextBox();
            this.q_qbank = new System.Windows.Forms.TextBox();
            this.q_body = new System.Windows.Forms.TextBox();
            this.q_ans = new System.Windows.Forms.TextBox();
            this.q_score = new System.Windows.Forms.TextBox();
            this.q_id = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(29, 313);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(607, 222);
            this.dataGridView1.TabIndex = 0;
            // 
            // delete
            // 
            this.delete.Location = new System.Drawing.Point(366, 257);
            this.delete.Name = "delete";
            this.delete.Size = new System.Drawing.Size(89, 23);
            this.delete.TabIndex = 42;
            this.delete.Text = "delete";
            this.delete.UseVisualStyleBackColor = true;
            this.delete.Click += new System.EventHandler(this.delete_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(427, 162);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(122, 16);
            this.label9.TabIndex = 41;
            this.label9.Text = "question bank id";
            this.label9.Click += new System.EventHandler(this.label9_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(235, 162);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(101, 16);
            this.label6.TabIndex = 38;
            this.label6.Text = "question type";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(26, 162);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(47, 16);
            this.label5.TabIndex = 37;
            this.label5.Text = "score";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(427, 78);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(109, 16);
            this.label4.TabIndex = 36;
            this.label4.Text = "correct answer";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(235, 78);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(106, 16);
            this.label3.TabIndex = 35;
            this.label3.Text = "question body";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(26, 78);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 16);
            this.label2.TabIndex = 34;
            this.label2.Text = "question id";
            // 
            // reset
            // 
            this.reset.Location = new System.Drawing.Point(482, 257);
            this.reset.Name = "reset";
            this.reset.Size = new System.Drawing.Size(89, 23);
            this.reset.TabIndex = 33;
            this.reset.Text = "reset";
            this.reset.UseVisualStyleBackColor = true;
            this.reset.Click += new System.EventHandler(this.reset_Click);
            // 
            // updatebtn
            // 
            this.updatebtn.Location = new System.Drawing.Point(233, 257);
            this.updatebtn.Name = "updatebtn";
            this.updatebtn.Size = new System.Drawing.Size(89, 23);
            this.updatebtn.TabIndex = 32;
            this.updatebtn.Text = "update";
            this.updatebtn.UseVisualStyleBackColor = true;
            this.updatebtn.Click += new System.EventHandler(this.updatebtn_Click);
            // 
            // savebtn
            // 
            this.savebtn.Location = new System.Drawing.Point(107, 257);
            this.savebtn.Name = "savebtn";
            this.savebtn.Size = new System.Drawing.Size(89, 23);
            this.savebtn.TabIndex = 31;
            this.savebtn.Text = "save";
            this.savebtn.UseVisualStyleBackColor = true;
            this.savebtn.Click += new System.EventHandler(this.savebtn_Click);
            // 
            // q_type
            // 
            this.q_type.Location = new System.Drawing.Point(233, 181);
            this.q_type.Name = "q_type";
            this.q_type.Size = new System.Drawing.Size(148, 20);
            this.q_type.TabIndex = 28;
            // 
            // q_qbank
            // 
            this.q_qbank.Location = new System.Drawing.Point(428, 181);
            this.q_qbank.Name = "q_qbank";
            this.q_qbank.Size = new System.Drawing.Size(155, 20);
            this.q_qbank.TabIndex = 27;
            // 
            // q_body
            // 
            this.q_body.Location = new System.Drawing.Point(238, 97);
            this.q_body.Name = "q_body";
            this.q_body.Size = new System.Drawing.Size(137, 20);
            this.q_body.TabIndex = 26;
            // 
            // q_ans
            // 
            this.q_ans.Location = new System.Drawing.Point(430, 97);
            this.q_ans.Name = "q_ans";
            this.q_ans.Size = new System.Drawing.Size(153, 20);
            this.q_ans.TabIndex = 25;
            // 
            // q_score
            // 
            this.q_score.Location = new System.Drawing.Point(29, 181);
            this.q_score.Name = "q_score";
            this.q_score.Size = new System.Drawing.Size(148, 20);
            this.q_score.TabIndex = 24;
            // 
            // q_id
            // 
            this.q_id.Location = new System.Drawing.Point(29, 97);
            this.q_id.Name = "q_id";
            this.q_id.Size = new System.Drawing.Size(155, 20);
            this.q_id.TabIndex = 23;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(29, 24);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 43;
            this.button1.Text = "back";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // questions
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(653, 538);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.delete);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.reset);
            this.Controls.Add(this.updatebtn);
            this.Controls.Add(this.savebtn);
            this.Controls.Add(this.q_type);
            this.Controls.Add(this.q_qbank);
            this.Controls.Add(this.q_body);
            this.Controls.Add(this.q_ans);
            this.Controls.Add(this.q_score);
            this.Controls.Add(this.q_id);
            this.Controls.Add(this.dataGridView1);
            this.Name = "questions";
            this.Text = "questions";
            this.Load += new System.EventHandler(this.questions_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button delete;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button reset;
        private System.Windows.Forms.Button updatebtn;
        private System.Windows.Forms.Button savebtn;
        private System.Windows.Forms.TextBox q_type;
        private System.Windows.Forms.TextBox q_qbank;
        private System.Windows.Forms.TextBox q_body;
        private System.Windows.Forms.TextBox q_ans;
        private System.Windows.Forms.TextBox q_score;
        private System.Windows.Forms.TextBox q_id;
        private System.Windows.Forms.Button button1;
    }
}