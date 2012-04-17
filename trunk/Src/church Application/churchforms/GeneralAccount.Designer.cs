namespace churchforms
{
    partial class GeneralAccount
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(GeneralAccount));
            this.btnGentraloffering = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnGentraloffering
            // 
            this.btnGentraloffering.BackColor = System.Drawing.Color.LightSteelBlue;
            this.btnGentraloffering.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGentraloffering.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.btnGentraloffering.Location = new System.Drawing.Point(0, -1);
            this.btnGentraloffering.Name = "btnGentraloffering";
            this.btnGentraloffering.Size = new System.Drawing.Size(116, 60);
            this.btnGentraloffering.TabIndex = 2;
            this.btnGentraloffering.Text = "cridit General Account";
            this.btnGentraloffering.UseVisualStyleBackColor = false;
            this.btnGentraloffering.Click += new System.EventHandler(this.btnGentraloffering_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.LightSteelBlue;
            this.button1.Font = new System.Drawing.Font("Lucida Calligraphy", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.DarkSlateGray;
            this.button1.Location = new System.Drawing.Point(0, 59);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(116, 62);
            this.button1.TabIndex = 3;
            this.button1.Text = "expenditure General Account";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // GeneralAccount
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(484, 262);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnGentraloffering);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "GeneralAccount";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Cash Book";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnGentraloffering;
        private System.Windows.Forms.Button button1;
    }
}