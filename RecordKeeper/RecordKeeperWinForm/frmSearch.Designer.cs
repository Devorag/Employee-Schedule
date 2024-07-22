namespace RecordKeeperWinForm
{
    partial class frmSearch
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
            tblSearch = new TableLayoutPanel();
            btnSearch = new Button();
            btnNew = new Button();
            lblLastName = new Label();
            txtLastName = new TextBox();
            lblParty = new Label();
            lblTermStart = new Label();
            lstParty = new ComboBox();
            tblTermStart = new TableLayoutPanel();
            txtBeginTermStart = new TextBox();
            txtEndTermStart = new TextBox();
            lblTermStart2 = new Label();
            gPresidents = new DataGridView();
            tblMain.SuspendLayout();
            tblSearch.SuspendLayout();
            tblTermStart.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)gPresidents).BeginInit();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 1;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblMain.Controls.Add(tblSearch, 0, 0);
            tblMain.Controls.Add(gPresidents, 0, 1);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 2;
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblMain.Size = new Size(807, 707);
            tblMain.TabIndex = 1;
            // 
            // tblSearch
            // 
            tblSearch.AutoSize = true;
            tblSearch.ColumnCount = 4;
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.Controls.Add(btnSearch, 0, 3);
            tblSearch.Controls.Add(btnNew, 1, 3);
            tblSearch.Controls.Add(lblLastName, 0, 1);
            tblSearch.Controls.Add(txtLastName, 1, 1);
            tblSearch.Controls.Add(lblParty, 0, 0);
            tblSearch.Controls.Add(lblTermStart, 0, 2);
            tblSearch.Controls.Add(lstParty, 1, 0);
            tblSearch.Controls.Add(tblTermStart, 1, 2);
            tblSearch.Location = new Point(3, 3);
            tblSearch.Name = "tblSearch";
            tblSearch.RowCount = 4;
            tblSearch.RowStyles.Add(new RowStyle());
            tblSearch.RowStyles.Add(new RowStyle());
            tblSearch.RowStyles.Add(new RowStyle());
            tblSearch.RowStyles.Add(new RowStyle());
            tblSearch.Size = new Size(442, 160);
            tblSearch.TabIndex = 0;
            // 
            // btnSearch
            // 
            btnSearch.Anchor = AnchorStyles.Left;
            btnSearch.AutoSize = true;
            btnSearch.Location = new Point(3, 122);
            btnSearch.Name = "btnSearch";
            btnSearch.Size = new Size(112, 35);
            btnSearch.TabIndex = 6;
            btnSearch.Text = "Search";
            btnSearch.UseVisualStyleBackColor = true;
            // 
            // btnNew
            // 
            btnNew.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            btnNew.AutoSize = true;
            btnNew.Location = new Point(365, 122);
            btnNew.Name = "btnNew";
            btnNew.Size = new Size(74, 35);
            btnNew.TabIndex = 7;
            btnNew.Text = "&New";
            btnNew.UseVisualStyleBackColor = true;
            // 
            // lblLastName
            // 
            lblLastName.Anchor = AnchorStyles.Left;
            lblLastName.AutoSize = true;
            lblLastName.Location = new Point(3, 45);
            lblLastName.Name = "lblLastName";
            lblLastName.Size = new Size(95, 25);
            lblLastName.TabIndex = 2;
            lblLastName.Text = "&Last Name";
            lblLastName.Click += lblLastName_Click;
            // 
            // txtLastName
            // 
            txtLastName.Dock = DockStyle.Fill;
            txtLastName.Location = new Point(121, 42);
            txtLastName.Name = "txtLastName";
            txtLastName.Size = new Size(318, 31);
            txtLastName.TabIndex = 3;
            // 
            // lblParty
            // 
            lblParty.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblParty.AutoSize = true;
            lblParty.Location = new Point(3, 7);
            lblParty.Name = "lblParty";
            lblParty.Size = new Size(112, 25);
            lblParty.TabIndex = 0;
            lblParty.Text = "Party";
            // 
            // lblTermStart
            // 
            lblTermStart.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblTermStart.AutoSize = true;
            lblTermStart.Location = new Point(3, 85);
            lblTermStart.Name = "lblTermStart";
            lblTermStart.Size = new Size(112, 25);
            lblTermStart.TabIndex = 4;
            lblTermStart.Text = "Term Start";
            // 
            // lstParty
            // 
            lstParty.Dock = DockStyle.Fill;
            lstParty.FormattingEnabled = true;
            lstParty.Location = new Point(121, 3);
            lstParty.Name = "lstParty";
            lstParty.Size = new Size(318, 33);
            lstParty.TabIndex = 1;
            // 
            // tblTermStart
            // 
            tblTermStart.AutoSize = true;
            tblTermStart.ColumnCount = 3;
            tblTermStart.ColumnStyles.Add(new ColumnStyle());
            tblTermStart.ColumnStyles.Add(new ColumnStyle());
            tblTermStart.ColumnStyles.Add(new ColumnStyle());
            tblTermStart.Controls.Add(txtBeginTermStart, 0, 0);
            tblTermStart.Controls.Add(txtEndTermStart, 2, 0);
            tblTermStart.Controls.Add(lblTermStart2, 1, 0);
            tblTermStart.Location = new Point(121, 79);
            tblTermStart.Name = "tblTermStart";
            tblTermStart.RowCount = 1;
            tblTermStart.RowStyles.Add(new RowStyle());
            tblTermStart.Size = new Size(237, 37);
            tblTermStart.TabIndex = 5;
            // 
            // txtBeginTermStart
            // 
            txtBeginTermStart.Location = new Point(3, 3);
            txtBeginTermStart.Name = "txtBeginTermStart";
            txtBeginTermStart.Size = new Size(93, 31);
            txtBeginTermStart.TabIndex = 0;
            // 
            // txtEndTermStart
            // 
            txtEndTermStart.Location = new Point(138, 3);
            txtEndTermStart.Name = "txtEndTermStart";
            txtEndTermStart.Size = new Size(96, 31);
            txtEndTermStart.TabIndex = 2;
            // 
            // lblTermStart2
            // 
            lblTermStart2.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblTermStart2.AutoSize = true;
            lblTermStart2.Location = new Point(102, 6);
            lblTermStart2.Name = "lblTermStart2";
            lblTermStart2.Size = new Size(30, 25);
            lblTermStart2.TabIndex = 1;
            lblTermStart2.Text = "To";
            // 
            // gPresidents
            // 
            gPresidents.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            gPresidents.Dock = DockStyle.Fill;
            gPresidents.Location = new Point(3, 169);
            gPresidents.Name = "gPresidents";
            gPresidents.RowHeadersWidth = 62;
            gPresidents.RowTemplate.Height = 33;
            gPresidents.Size = new Size(801, 535);
            gPresidents.StandardTab = true;
            gPresidents.TabIndex = 0;
            // 
            // frmSearch
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(807, 707);
            Controls.Add(tblMain);
            Name = "frmSearch";
            Text = "PresidentSearch";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tblSearch.ResumeLayout(false);
            tblSearch.PerformLayout();
            tblTermStart.ResumeLayout(false);
            tblTermStart.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)gPresidents).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private TableLayoutPanel tblSearch;
        private TextBox txtLastName;
        private Button btnSearch;
        private Label lblLastName;
        private DataGridView gPresidents;
        private Button btnNew;
        private Label lblParty;
        private Label lblTermStart;
        private ComboBox lstParty;
        private TableLayoutPanel tblTermStart;
        private TextBox txtBeginTermStart;
        private TextBox txtEndTermStart;
        private Label lblTermStart2;
    }
}