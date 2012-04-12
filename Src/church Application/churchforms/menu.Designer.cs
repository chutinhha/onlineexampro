namespace churchforms
{
    partial class menu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(menu));
            this.btnmember = new System.Windows.Forms.Button();
            this.btnAccounts = new System.Windows.Forms.Button();
            this.btnReport = new System.Windows.Forms.Button();
            this.btnResetpwd = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnmember
            // 
            this.btnmember.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btnmember.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnmember.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.btnmember.Location = new System.Drawing.Point(0, 0);
            this.btnmember.Name = "btnmember";
            this.btnmember.Size = new System.Drawing.Size(116, 50);
            this.btnmember.TabIndex = 0;
            this.btnmember.Text = "Member Detail";
            this.btnmember.UseVisualStyleBackColor = false;
            this.btnmember.Click += new System.EventHandler(this.btnmember_Click);
            // 
            // btnAccounts
            // 
            this.btnAccounts.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btnAccounts.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnAccounts.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.btnAccounts.Location = new System.Drawing.Point(0, 50);
            this.btnAccounts.Name = "btnAccounts";
            this.btnAccounts.Size = new System.Drawing.Size(116, 50);
            this.btnAccounts.TabIndex = 1;
            this.btnAccounts.Text = "Cash Book";
            this.btnAccounts.UseVisualStyleBackColor = false;
            this.btnAccounts.Click += new System.EventHandler(this.btnAccounts_Click);
            // 
            // btnReport
            // 
            this.btnReport.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btnReport.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnReport.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.btnReport.Location = new System.Drawing.Point(0, 200);
            this.btnReport.Name = "btnReport";
            this.btnReport.Size = new System.Drawing.Size(116, 50);
            this.btnReport.TabIndex = 2;
            this.btnReport.Text = "Reports";
            this.btnReport.UseVisualStyleBackColor = false;
            // 
            // btnResetpwd
            // 
            this.btnResetpwd.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btnResetpwd.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnResetpwd.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.btnResetpwd.Location = new System.Drawing.Point(0, 250);
            this.btnResetpwd.Name = "btnResetpwd";
            this.btnResetpwd.Size = new System.Drawing.Size(116, 50);
            this.btnResetpwd.TabIndex = 3;
            this.btnResetpwd.Text = "Reset Pwd";
            this.btnResetpwd.UseVisualStyleBackColor = false;
            this.btnResetpwd.Click += new System.EventHandler(this.btnResetpwd_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.LightSteelBlue;
            this.button1.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold);
            this.button1.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.button1.Location = new System.Drawing.Point(0, 150);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(116, 50);
            this.button1.TabIndex = 5;
            this.button1.Text = "Sunday Auction";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.LightSteelBlue;
            this.button2.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold);
            this.button2.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.button2.Location = new System.Drawing.Point(0, 100);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(116, 50);
            this.button2.TabIndex = 4;
            this.button2.Text = "Harvest";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1041, 487);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnResetpwd);
            this.Controls.Add(this.btnReport);
            this.Controls.Add(this.btnAccounts);
            this.Controls.Add(this.btnmember);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "menu";
            this.Text = "menu";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnmember;
        private System.Windows.Forms.Button btnAccounts;
        private System.Windows.Forms.Button btnReport;
        private System.Windows.Forms.Button btnResetpwd;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}