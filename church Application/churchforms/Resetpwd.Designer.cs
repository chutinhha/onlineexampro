namespace churchforms
{
    partial class Resetpwd
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
            this.label2 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtOldpwd = new System.Windows.Forms.TextBox();
            this.txtNewpwd = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtRenewpwd = new System.Windows.Forms.TextBox();
            this.btnresetpwd = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(50, 100);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Enter old password:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(50, 139);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(106, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Enter new password:";
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Member Login",
            "Account Login"});
            this.comboBox1.Location = new System.Drawing.Point(178, 49);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(50, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Choose which one:";
            // 
            // txtOldpwd
            // 
            this.txtOldpwd.Location = new System.Drawing.Point(178, 97);
            this.txtOldpwd.Name = "txtOldpwd";
            this.txtOldpwd.PasswordChar = '*';
            this.txtOldpwd.Size = new System.Drawing.Size(121, 20);
            this.txtOldpwd.TabIndex = 4;
            // 
            // txtNewpwd
            // 
            this.txtNewpwd.Location = new System.Drawing.Point(178, 136);
            this.txtNewpwd.Name = "txtNewpwd";
            this.txtNewpwd.PasswordChar = '*';
            this.txtNewpwd.Size = new System.Drawing.Size(121, 20);
            this.txtNewpwd.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(50, 180);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(126, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Re_Enter new password:";
            // 
            // txtRenewpwd
            // 
            this.txtRenewpwd.Location = new System.Drawing.Point(178, 177);
            this.txtRenewpwd.Name = "txtRenewpwd";
            this.txtRenewpwd.PasswordChar = '*';
            this.txtRenewpwd.Size = new System.Drawing.Size(121, 20);
            this.txtRenewpwd.TabIndex = 7;
            // 
            // btnresetpwd
            // 
            this.btnresetpwd.Location = new System.Drawing.Point(140, 232);
            this.btnresetpwd.Name = "btnresetpwd";
            this.btnresetpwd.Size = new System.Drawing.Size(75, 23);
            this.btnresetpwd.TabIndex = 8;
            this.btnresetpwd.Text = "Change";
            this.btnresetpwd.UseVisualStyleBackColor = true;
            this.btnresetpwd.Click += new System.EventHandler(this.btnresetpwd_Click);
            // 
            // Resetpwd
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(353, 302);
            this.Controls.Add(this.btnresetpwd);
            this.Controls.Add(this.txtRenewpwd);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtNewpwd);
            this.Controls.Add(this.txtOldpwd);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Resetpwd";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Reset Password";
            this.Load += new System.EventHandler(this.Resetpwd_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtOldpwd;
        private System.Windows.Forms.TextBox txtNewpwd;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtRenewpwd;
        private System.Windows.Forms.Button btnresetpwd;
    }
}