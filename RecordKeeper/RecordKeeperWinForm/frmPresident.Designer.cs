namespace RecordKeeperWinForm
{
    partial class frmPresident
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
            tblMain = new TableLayoutPanel();
            lblCaptionParty = new Label();
            lblCaptionNum = new Label();
            lblCaptionFirstName = new Label();
            lblCaptionLastName = new Label();
            lblCaptionDateBorn = new Label();
            lblCaptionDateDied = new Label();
            lblCaptionTermStart = new Label();
            lblCaptionTermEnd = new Label();
            lblParty = new Label();
            lblNum = new Label();
            txtFirstName = new TextBox();
            txtLastName = new TextBox();
            txtDateBorn = new TextBox();
            txtDateDied = new TextBox();
            txtTermStart = new TextBox();
            txtTermEnd = new TextBox();
            tblMain.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle());
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tblMain.Controls.Add(lblCaptionParty, 0, 0);
            tblMain.Controls.Add(lblCaptionNum, 0, 1);
            tblMain.Controls.Add(lblCaptionFirstName, 0, 2);
            tblMain.Controls.Add(lblCaptionLastName, 0, 3);
            tblMain.Controls.Add(lblCaptionDateBorn, 0, 4);
            tblMain.Controls.Add(lblCaptionDateDied, 0, 5);
            tblMain.Controls.Add(lblCaptionTermStart, 0, 6);
            tblMain.Controls.Add(lblCaptionTermEnd, 0, 7);
            tblMain.Controls.Add(lblParty, 1, 0);
            tblMain.Controls.Add(lblNum, 1, 1);
            tblMain.Controls.Add(txtFirstName, 1, 2);
            tblMain.Controls.Add(txtLastName, 1, 3);
            tblMain.Controls.Add(txtDateBorn, 1, 4);
            tblMain.Controls.Add(txtDateDied, 1, 5);
            tblMain.Controls.Add(txtTermStart, 1, 6);
            tblMain.Controls.Add(txtTermEnd, 1, 7);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 8;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.Size = new Size(1091, 416);
            tblMain.TabIndex = 0;
            tblMain.Paint += tblMain_Paint;
            // 
            // lblCaptionParty
            // 
            lblCaptionParty.Anchor = AnchorStyles.Left;
            lblCaptionParty.AutoSize = true;
            lblCaptionParty.Location = new Point(3, 4);
            lblCaptionParty.Name = "lblCaptionParty";
            lblCaptionParty.Size = new Size(66, 32);
            lblCaptionParty.TabIndex = 0;
            lblCaptionParty.Text = "Party";
            // 
            // lblCaptionNum
            // 
            lblCaptionNum.Anchor = AnchorStyles.Left;
            lblCaptionNum.AutoSize = true;
            lblCaptionNum.Location = new Point(3, 44);
            lblCaptionNum.Name = "lblCaptionNum";
            lblCaptionNum.Size = new Size(67, 32);
            lblCaptionNum.TabIndex = 1;
            lblCaptionNum.Text = "Num";
            // 
            // lblCaptionFirstName
            // 
            lblCaptionFirstName.Anchor = AnchorStyles.Left;
            lblCaptionFirstName.AutoSize = true;
            lblCaptionFirstName.Location = new Point(3, 84);
            lblCaptionFirstName.Name = "lblCaptionFirstName";
            lblCaptionFirstName.Size = new Size(129, 32);
            lblCaptionFirstName.TabIndex = 2;
            lblCaptionFirstName.Text = "First Name";
            // 
            // lblCaptionLastName
            // 
            lblCaptionLastName.Anchor = AnchorStyles.Left;
            lblCaptionLastName.AutoSize = true;
            lblCaptionLastName.Location = new Point(3, 124);
            lblCaptionLastName.Name = "lblCaptionLastName";
            lblCaptionLastName.Size = new Size(126, 32);
            lblCaptionLastName.TabIndex = 3;
            lblCaptionLastName.Text = "Last Name";
            // 
            // lblCaptionDateBorn
            // 
            lblCaptionDateBorn.Anchor = AnchorStyles.Left;
            lblCaptionDateBorn.AutoSize = true;
            lblCaptionDateBorn.Location = new Point(3, 164);
            lblCaptionDateBorn.Name = "lblCaptionDateBorn";
            lblCaptionDateBorn.Size = new Size(121, 32);
            lblCaptionDateBorn.TabIndex = 4;
            lblCaptionDateBorn.Text = "Date Born";
            // 
            // lblCaptionDateDied
            // 
            lblCaptionDateDied.Anchor = AnchorStyles.Left;
            lblCaptionDateDied.AutoSize = true;
            lblCaptionDateDied.Location = new Point(3, 204);
            lblCaptionDateDied.Name = "lblCaptionDateDied";
            lblCaptionDateDied.Size = new Size(121, 32);
            lblCaptionDateDied.TabIndex = 5;
            lblCaptionDateDied.Text = "Date Died";
            // 
            // lblCaptionTermStart
            // 
            lblCaptionTermStart.Anchor = AnchorStyles.Left;
            lblCaptionTermStart.AutoSize = true;
            lblCaptionTermStart.Location = new Point(3, 244);
            lblCaptionTermStart.Name = "lblCaptionTermStart";
            lblCaptionTermStart.Size = new Size(122, 32);
            lblCaptionTermStart.TabIndex = 6;
            lblCaptionTermStart.Text = "Term Start";
            // 
            // lblCaptionTermEnd
            // 
            lblCaptionTermEnd.AutoSize = true;
            lblCaptionTermEnd.Location = new Point(3, 287);
            lblCaptionTermEnd.Margin = new Padding(3, 7, 3, 0);
            lblCaptionTermEnd.Name = "lblCaptionTermEnd";
            lblCaptionTermEnd.Size = new Size(114, 32);
            lblCaptionTermEnd.TabIndex = 7;
            lblCaptionTermEnd.Text = "Term End";
            // 
            // lblParty
            // 
            lblParty.BackColor = Color.WhiteSmoke;
            lblParty.BorderStyle = BorderStyle.FixedSingle;
            lblParty.Dock = DockStyle.Fill;
            lblParty.Location = new Point(138, 0);
            lblParty.Name = "lblParty";
            lblParty.Size = new Size(950, 40);
            lblParty.TabIndex = 8;
            // 
            // lblNum
            // 
            lblNum.BackColor = Color.WhiteSmoke;
            lblNum.BorderStyle = BorderStyle.FixedSingle;
            lblNum.Dock = DockStyle.Fill;
            lblNum.Location = new Point(138, 40);
            lblNum.Name = "lblNum";
            lblNum.Size = new Size(950, 40);
            lblNum.TabIndex = 9;
            // 
            // txtFirstName
            // 
            txtFirstName.Dock = DockStyle.Fill;
            txtFirstName.Location = new Point(138, 83);
            txtFirstName.Name = "txtFirstName";
            txtFirstName.Size = new Size(950, 39);
            txtFirstName.TabIndex = 10;
            // 
            // txtLastName
            // 
            txtLastName.Dock = DockStyle.Fill;
            txtLastName.Location = new Point(138, 123);
            txtLastName.Name = "txtLastName";
            txtLastName.Size = new Size(950, 39);
            txtLastName.TabIndex = 11;
            // 
            // txtDateBorn
            // 
            txtDateBorn.Dock = DockStyle.Fill;
            txtDateBorn.Location = new Point(138, 163);
            txtDateBorn.Name = "txtDateBorn";
            txtDateBorn.Size = new Size(950, 39);
            txtDateBorn.TabIndex = 12;
            // 
            // txtDateDied
            // 
            txtDateDied.Dock = DockStyle.Fill;
            txtDateDied.Location = new Point(138, 203);
            txtDateDied.Name = "txtDateDied";
            txtDateDied.Size = new Size(950, 39);
            txtDateDied.TabIndex = 13;
            // 
            // txtTermStart
            // 
            txtTermStart.Dock = DockStyle.Fill;
            txtTermStart.Location = new Point(138, 243);
            txtTermStart.Name = "txtTermStart";
            txtTermStart.Size = new Size(950, 39);
            txtTermStart.TabIndex = 14;
            // 
            // txtTermEnd
            // 
            txtTermEnd.Dock = DockStyle.Fill;
            txtTermEnd.Location = new Point(138, 283);
            txtTermEnd.Name = "txtTermEnd";
            txtTermEnd.Size = new Size(950, 39);
            txtTermEnd.TabIndex = 15;
            // 
            // frmPresident
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1091, 416);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4);
            Name = "frmPresident";
            Text = "President";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Label lblCaptionParty;
        private Label lblCaptionNum;
        private Label lblCaptionFirstName;
        private Label lblCaptionLastName;
        private Label lblCaptionDateBorn;
        private Label lblCaptionDateDied;
        private Label lblCaptionTermStart;
        private Label lblCaptionTermEnd;
        private Label lblParty;
        private Label lblNum;
        private TextBox txtFirstName;
        private TextBox txtLastName;
        private TextBox txtDateBorn;
        private TextBox txtDateDied;
        private TextBox txtTermStart;
        private TextBox txtTermEnd;
    }
}