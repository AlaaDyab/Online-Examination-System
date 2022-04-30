
namespace project
{
    partial class login
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
            this.userNameT = new System.Windows.Forms.TextBox();
            this.userPass = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.stlogin = new System.Windows.Forms.Button();
            this.instlogin = new System.Windows.Forms.Button();
            this.adminlogin = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // userNameT
            // 
            this.userNameT.Location = new System.Drawing.Point(249, 75);
            this.userNameT.Name = "userNameT";
            this.userNameT.Size = new System.Drawing.Size(157, 20);
            this.userNameT.TabIndex = 0;
            // 
            // userPass
            // 
            this.userPass.Location = new System.Drawing.Point(249, 137);
            this.userPass.Name = "userPass";
            this.userPass.Size = new System.Drawing.Size(157, 20);
            this.userPass.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(154, 75);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "User name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(137, 137);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "User password";
            // 
            // stlogin
            // 
            this.stlogin.Location = new System.Drawing.Point(140, 208);
            this.stlogin.Name = "stlogin";
            this.stlogin.Size = new System.Drawing.Size(75, 39);
            this.stlogin.TabIndex = 4;
            this.stlogin.Text = "Student login";
            this.stlogin.UseVisualStyleBackColor = true;
            this.stlogin.Click += new System.EventHandler(this.stlogin_Click);
            // 
            // instlogin
            // 
            this.instlogin.Location = new System.Drawing.Point(234, 208);
            this.instlogin.Name = "instlogin";
            this.instlogin.Size = new System.Drawing.Size(75, 39);
            this.instlogin.TabIndex = 5;
            this.instlogin.Text = "instructor login";
            this.instlogin.UseVisualStyleBackColor = true;
            this.instlogin.Click += new System.EventHandler(this.instlogin_Click);
            // 
            // adminlogin
            // 
            this.adminlogin.Location = new System.Drawing.Point(331, 208);
            this.adminlogin.Name = "adminlogin";
            this.adminlogin.Size = new System.Drawing.Size(75, 42);
            this.adminlogin.TabIndex = 6;
            this.adminlogin.Text = "Admin login";
            this.adminlogin.UseVisualStyleBackColor = true;
            this.adminlogin.Click += new System.EventHandler(this.adminlogin_Click);
            // 
            // login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(528, 280);
            this.Controls.Add(this.adminlogin);
            this.Controls.Add(this.instlogin);
            this.Controls.Add(this.stlogin);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.userPass);
            this.Controls.Add(this.userNameT);
            this.Name = "login";
            this.Text = "login";
            this.Load += new System.EventHandler(this.login_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox userNameT;
        private System.Windows.Forms.TextBox userPass;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button stlogin;
        private System.Windows.Forms.Button instlogin;
        private System.Windows.Forms.Button adminlogin;
    }
}