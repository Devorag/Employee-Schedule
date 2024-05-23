namespace RecordKeeperWinForm
{
    partial class frmPresident
    {
        private const int V = 0;

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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPresident));
            tblMain = new TableLayoutPanel();
            lblCaptionParty = new Label();
            lblCaptionNum = new Label();
            lblCaptionFirstName = new Label();
            lblCaptionLastName = new Label();
            lblCaptionDateBorn = new Label();
            lblCaptionDateDied = new Label();
            lblCaptionTermStart = new Label();
            lblCaptionTermEnd = new Label();
            txtFirstName = new TextBox();
            txtLastName = new TextBox();
            txtDateDied = new TextBox();
            txtTermStart = new TextBox();
            txtTermEnd = new TextBox();
            lstPartyName = new ComboBox();
            txtNum = new TextBox();
            dtpDateBorn = new DateTimePicker();
            tsMain = new ToolStrip();
            btnSave = new ToolStripButton();
            toolStripSeparator1 = new ToolStripSeparator();
            btnDelete = new ToolStripButton();
            toolStripSeparator2 = new ToolStripSeparator();
            tblMain.SuspendLayout();
            tsMain.SuspendLayout();
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
            tblMain.Controls.Add(txtFirstName, 1, 2);
            tblMain.Controls.Add(txtLastName, 1, 3);
            tblMain.Controls.Add(txtDateDied, 1, 5);
            tblMain.Controls.Add(txtTermStart, 1, 6);
            tblMain.Controls.Add(txtTermEnd, 1, 7);
            tblMain.Controls.Add(lstPartyName, 1, 0);
            tblMain.Controls.Add(txtNum, 1, 1);
            tblMain.Controls.Add(dtpDateBorn, 1, 4);
            tblMain.Location = new Point(0, 73);
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
            tblMain.Size = new Size(1141, 608);
            tblMain.TabIndex = 2;
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
            // txtFirstName
            // 
            txtFirstName.Dock = DockStyle.Fill;
            txtFirstName.Location = new Point(138, 83);
            txtFirstName.Name = "txtFirstName";
            txtFirstName.Size = new Size(1000, 39);
            txtFirstName.TabIndex = 10;
            // 
            // txtLastName
            // 
            txtLastName.Dock = DockStyle.Fill;
            txtLastName.Location = new Point(138, 123);
            txtLastName.Name = "txtLastName";
            txtLastName.Size = new Size(1000, 39);
            txtLastName.TabIndex = 11;
            // 
            // txtDateDied
            // 
            txtDateDied.Dock = DockStyle.Fill;
            txtDateDied.Location = new Point(138, 203);
            txtDateDied.Name = "txtDateDied";
            txtDateDied.Size = new Size(1000, 39);
            txtDateDied.TabIndex = 13;
            // 
            // txtTermStart
            // 
            txtTermStart.Dock = DockStyle.Fill;
            txtTermStart.Location = new Point(138, 243);
            txtTermStart.Name = "txtTermStart";
            txtTermStart.Size = new Size(1000, 39);
            txtTermStart.TabIndex = 14;
            // 
            // txtTermEnd
            // 
            txtTermEnd.Location = new Point(138, 283);
            txtTermEnd.Name = "txtTermEnd";
            txtTermEnd.Size = new Size(1000, 39);
            txtTermEnd.TabIndex = 15;
            // 
            // lstPartyName
            // 
            lstPartyName.FormattingEnabled = true;
            lstPartyName.Location = new Point(138, 3);
            lstPartyName.Name = "lstPartyName";
            lstPartyName.Size = new Size(385, 40);
            lstPartyName.TabIndex = 16;
            // 
            // txtNum
            // 
            txtNum.Dock = DockStyle.Fill;
            txtNum.Location = new Point(138, 43);
            txtNum.Name = "txtNum";
            txtNum.Size = new Size(1000, 39);
            txtNum.TabIndex = 17;
            // 
            // dtpDateBorn
            // 
            dtpDateBorn.Format = DateTimePickerFormat.Short;
            dtpDateBorn.Location = new Point(138, 163);
            dtpDateBorn.Name = "dtpDateBorn";
            dtpDateBorn.Size = new Size(263, 39);
            dtpDateBorn.TabIndex = 18;
            // 
            // tsMain
            // 
            tsMain.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            tsMain.ImageScalingSize = new Size(24, 24);
            tsMain.Items.AddRange(new ToolStripItem[] { btnSave, toolStripSeparator1, btnDelete, toolStripSeparator2 });
            tsMain.Location = new Point(0, 0);
            tsMain.Name = "tsMain";
            tsMain.Size = new Size(1141, 41);
            tsMain.TabIndex = 1;
            tsMain.Text = "toolStrip1";
            // 
            // btnSave
            // 
            btnSave.DisplayStyle = ToolStripItemDisplayStyle.Text;
            btnSave.Image = (Image)resources.GetObject("btnSave.Image");
            btnSave.ImageTransparentColor = Color.Magenta;
            btnSave.Name = "btnSave";
            btnSave.Size = new Size(68, 36);
            btnSave.Text = "&Save";
            // 
            // toolStripSeparator1
            // 
            toolStripSeparator1.Name = "toolStripSeparator1";
            toolStripSeparator1.Size = new Size(6, 41);
            // 
            // btnDelete
            // 
            btnDelete.DisplayStyle = ToolStripItemDisplayStyle.Text;
            btnDelete.Image = (Image)resources.GetObject("btnDelete.Image");
            btnDelete.ImageTransparentColor = Color.Magenta;
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(88, 36);
            btnDelete.Text = "&Delete";
            // 
            // toolStripSeparator2
            // 
            toolStripSeparator2.Name = "toolStripSeparator2";
            toolStripSeparator2.Size = new Size(6, 41);
            // 
            // frmPresident
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1141, 678);
            Controls.Add(tsMain);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4);
            Name = "frmPresident";
            Text = "President";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tsMain.ResumeLayout(false);
            tsMain.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Label lblCaptionNum;
        private Label lblCaptionFirstName;
        private Label lblCaptionLastName;
        private Label lblCaptionDateBorn;
        private Label lblCaptionDateDied;
        private Label lblCaptionTermStart;
        private Label lblCaptionTermEnd;
        private TextBox txtFirstName;
        private TextBox txtLastName;
        private TextBox txtDateDied;
        private TextBox txtTermStart;
        private TextBox txtTermEnd;
        private ToolStrip tsMain;
        private ToolStripButton btnSave;
        private ToolStripSeparator toolStripSeparator1;
        private ToolStripButton btnDelete;
        private ToolStripSeparator toolStripSeparator2;
        private Label lblCaptionParty;
        private ComboBox lstPartyName;
        private TextBox txtNum;
        private DateTimePicker dtpDateBorn;
    }
}