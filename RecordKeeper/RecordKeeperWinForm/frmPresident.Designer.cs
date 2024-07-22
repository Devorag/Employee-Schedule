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
            components = new System.ComponentModel.Container();
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
            tbChildRecords = new TabControl();
            tbMedal = new TabPage();
            tblMedals = new TableLayoutPanel();
            btnSaveMedal = new Button();
            gMedal = new DataGridView();
            tbExectiveOrder = new TabPage();
            tsMain = new ToolStrip();
            btnSave = new ToolStripButton();
            toolStripSeparator1 = new ToolStripSeparator();
            btnDelete = new ToolStripButton();
            toolStripSeparator2 = new ToolStripSeparator();
            ttPresident = new ToolTip(components);
            tblMain.SuspendLayout();
            tbChildRecords.SuspendLayout();
            tbMedal.SuspendLayout();
            tblMedals.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)gMedal).BeginInit();
            tsMain.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle());
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
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
            tblMain.Controls.Add(tbChildRecords, 0, 8);
            tblMain.Location = new Point(0, 36);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 9;
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblMain.Size = new Size(942, 734);
            tblMain.TabIndex = 2;
            // 
            // lblCaptionParty
            // 
            lblCaptionParty.Anchor = AnchorStyles.Left;
            lblCaptionParty.AutoSize = true;
            lblCaptionParty.Location = new Point(3, 7);
            lblCaptionParty.Name = "lblCaptionParty";
            lblCaptionParty.Size = new Size(66, 32);
            lblCaptionParty.TabIndex = 0;
            lblCaptionParty.Text = "&Party";
            // 
            // lblCaptionNum
            // 
            lblCaptionNum.Anchor = AnchorStyles.Left;
            lblCaptionNum.AutoSize = true;
            lblCaptionNum.Location = new Point(3, 52);
            lblCaptionNum.Name = "lblCaptionNum";
            lblCaptionNum.Size = new Size(67, 32);
            lblCaptionNum.TabIndex = 1;
            lblCaptionNum.Text = "Num";
            // 
            // lblCaptionFirstName
            // 
            lblCaptionFirstName.Anchor = AnchorStyles.Left;
            lblCaptionFirstName.AutoSize = true;
            lblCaptionFirstName.Location = new Point(3, 97);
            lblCaptionFirstName.Name = "lblCaptionFirstName";
            lblCaptionFirstName.Size = new Size(129, 32);
            lblCaptionFirstName.TabIndex = 3;
            lblCaptionFirstName.Text = "First Name";
            // 
            // lblCaptionLastName
            // 
            lblCaptionLastName.Anchor = AnchorStyles.Left;
            lblCaptionLastName.AutoSize = true;
            lblCaptionLastName.Location = new Point(3, 142);
            lblCaptionLastName.Name = "lblCaptionLastName";
            lblCaptionLastName.Size = new Size(126, 32);
            lblCaptionLastName.TabIndex = 5;
            lblCaptionLastName.Text = "Last Name";
            // 
            // lblCaptionDateBorn
            // 
            lblCaptionDateBorn.Anchor = AnchorStyles.Left;
            lblCaptionDateBorn.AutoSize = true;
            lblCaptionDateBorn.Location = new Point(3, 187);
            lblCaptionDateBorn.Name = "lblCaptionDateBorn";
            lblCaptionDateBorn.Size = new Size(121, 32);
            lblCaptionDateBorn.TabIndex = 7;
            lblCaptionDateBorn.Text = "Date Born";
            // 
            // lblCaptionDateDied
            // 
            lblCaptionDateDied.Anchor = AnchorStyles.Left;
            lblCaptionDateDied.AutoSize = true;
            lblCaptionDateDied.Location = new Point(3, 232);
            lblCaptionDateDied.Name = "lblCaptionDateDied";
            lblCaptionDateDied.Size = new Size(121, 32);
            lblCaptionDateDied.TabIndex = 9;
            lblCaptionDateDied.Text = "Date Died";
            // 
            // lblCaptionTermStart
            // 
            lblCaptionTermStart.Anchor = AnchorStyles.Left;
            lblCaptionTermStart.AutoSize = true;
            lblCaptionTermStart.Location = new Point(3, 277);
            lblCaptionTermStart.Name = "lblCaptionTermStart";
            lblCaptionTermStart.Size = new Size(122, 32);
            lblCaptionTermStart.TabIndex = 11;
            lblCaptionTermStart.Text = "Term Start";
            ttPresident.SetToolTip(lblCaptionTermStart, "Enter a Year, not a date ");
            // 
            // lblCaptionTermEnd
            // 
            lblCaptionTermEnd.AutoSize = true;
            lblCaptionTermEnd.Location = new Point(3, 323);
            lblCaptionTermEnd.Margin = new Padding(3, 7, 3, 0);
            lblCaptionTermEnd.Name = "lblCaptionTermEnd";
            lblCaptionTermEnd.Size = new Size(114, 32);
            lblCaptionTermEnd.TabIndex = 13;
            lblCaptionTermEnd.Text = "Term End";
            ttPresident.SetToolTip(lblCaptionTermEnd, "Enter a Year, not a date ");
            // 
            // txtFirstName
            // 
            txtFirstName.Dock = DockStyle.Fill;
            txtFirstName.Location = new Point(138, 94);
            txtFirstName.Name = "txtFirstName";
            txtFirstName.Size = new Size(801, 39);
            txtFirstName.TabIndex = 4;
            // 
            // txtLastName
            // 
            txtLastName.Dock = DockStyle.Fill;
            txtLastName.Location = new Point(138, 139);
            txtLastName.Name = "txtLastName";
            txtLastName.Size = new Size(801, 39);
            txtLastName.TabIndex = 6;
            // 
            // txtDateDied
            // 
            txtDateDied.Dock = DockStyle.Fill;
            txtDateDied.Location = new Point(138, 229);
            txtDateDied.Name = "txtDateDied";
            txtDateDied.Size = new Size(801, 39);
            txtDateDied.TabIndex = 10;
            // 
            // txtTermStart
            // 
            txtTermStart.Dock = DockStyle.Fill;
            txtTermStart.Location = new Point(138, 274);
            txtTermStart.Name = "txtTermStart";
            txtTermStart.Size = new Size(801, 39);
            txtTermStart.TabIndex = 12;
            // 
            // txtTermEnd
            // 
            txtTermEnd.Location = new Point(138, 319);
            txtTermEnd.Name = "txtTermEnd";
            txtTermEnd.Size = new Size(801, 39);
            txtTermEnd.TabIndex = 14;
            // 
            // lstPartyName
            // 
            lstPartyName.FormattingEnabled = true;
            lstPartyName.Location = new Point(138, 3);
            lstPartyName.Name = "lstPartyName";
            lstPartyName.Size = new Size(385, 40);
            lstPartyName.TabIndex = 0;
            // 
            // txtNum
            // 
            txtNum.Dock = DockStyle.Fill;
            txtNum.Location = new Point(138, 49);
            txtNum.Name = "txtNum";
            txtNum.Size = new Size(801, 39);
            txtNum.TabIndex = 2;
            // 
            // dtpDateBorn
            // 
            dtpDateBorn.Format = DateTimePickerFormat.Short;
            dtpDateBorn.Location = new Point(138, 184);
            dtpDateBorn.Name = "dtpDateBorn";
            dtpDateBorn.Size = new Size(263, 39);
            dtpDateBorn.TabIndex = 8;
            // 
            // tbChildRecords
            // 
            tblMain.SetColumnSpan(tbChildRecords, 2);
            tbChildRecords.Controls.Add(tbMedal);
            tbChildRecords.Controls.Add(tbExectiveOrder);
            tbChildRecords.Dock = DockStyle.Fill;
            tbChildRecords.Location = new Point(3, 364);
            tbChildRecords.Name = "tbChildRecords";
            tbChildRecords.SelectedIndex = 0;
            tbChildRecords.Size = new Size(936, 367);
            tbChildRecords.TabIndex = 15;
            // 
            // tbMedal
            // 
            tbMedal.Controls.Add(tblMedals);
            tbMedal.Location = new Point(4, 41);
            tbMedal.Name = "tbMedal";
            tbMedal.Padding = new Padding(3);
            tbMedal.Size = new Size(928, 322);
            tbMedal.TabIndex = 0;
            tbMedal.Text = "Medals";
            tbMedal.UseVisualStyleBackColor = true;
            // 
            // tblMedals
            // 
            tblMedals.ColumnCount = 1;
            tblMedals.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tblMedals.Controls.Add(btnSaveMedal, 0, 0);
            tblMedals.Controls.Add(gMedal, 0, 1);
            tblMedals.Dock = DockStyle.Fill;
            tblMedals.Location = new Point(3, 3);
            tblMedals.Name = "tblMedals";
            tblMedals.RowCount = 2;
            tblMedals.RowStyles.Add(new RowStyle());
            tblMedals.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tblMedals.Size = new Size(922, 316);
            tblMedals.TabIndex = 0;
            // 
            // btnSaveMedal
            // 
            btnSaveMedal.AutoSize = true;
            btnSaveMedal.BackColor = Color.LightGray;
            btnSaveMedal.Location = new Point(3, 3);
            btnSaveMedal.Name = "btnSaveMedal";
            btnSaveMedal.Size = new Size(136, 58);
            btnSaveMedal.TabIndex = 0;
            btnSaveMedal.Text = "Save";
            btnSaveMedal.UseVisualStyleBackColor = false;
            // 
            // gMedal
            // 
            gMedal.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            gMedal.Dock = DockStyle.Fill;
            gMedal.Location = new Point(3, 67);
            gMedal.Name = "gMedal";
            gMedal.RowHeadersWidth = 62;
            gMedal.RowTemplate.Height = 33;
            gMedal.Size = new Size(916, 246);
            gMedal.TabIndex = 1;
            // 
            // tbExectiveOrder
            // 
            tbExectiveOrder.Location = new Point(4, 34);
            tbExectiveOrder.Name = "tbExectiveOrder";
            tbExectiveOrder.Padding = new Padding(3);
            tbExectiveOrder.Size = new Size(1133, 428);
            tbExectiveOrder.TabIndex = 1;
            tbExectiveOrder.Text = "Executive Orders";
            tbExectiveOrder.UseVisualStyleBackColor = true;
            // 
            // tsMain
            // 
            tsMain.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            tsMain.ImageScalingSize = new Size(24, 24);
            tsMain.Items.AddRange(new ToolStripItem[] { btnSave, toolStripSeparator1, btnDelete, toolStripSeparator2 });
            tsMain.Location = new Point(0, 0);
            tsMain.Name = "tsMain";
            tsMain.Size = new Size(926, 41);
            tsMain.TabIndex = 1;
            tsMain.TabStop = true;
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
            ClientSize = new Size(926, 770);
            Controls.Add(tsMain);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4);
            Name = "frmPresident";
            Text = "President";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tbChildRecords.ResumeLayout(false);
            tbMedal.ResumeLayout(false);
            tblMedals.ResumeLayout(false);
            tblMedals.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)gMedal).EndInit();
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
        private ToolTip ttPresident;
        private TabControl tbChildRecords;
        private TabPage tbMedal;
        private TabPage tbExectiveOrder;
        private TableLayoutPanel tblMedals;
        private Button btnSaveMedal;
        private DataGridView gMedal;
    }
}