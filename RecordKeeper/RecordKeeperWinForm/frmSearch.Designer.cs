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
            txtLastName = new TextBox();
            btnSearch = new Button();
            lblLastName = new Label();
            gPresidents = new DataGridView();
            btnNew = new Button();
            tblMain.SuspendLayout();
            tblSearch.SuspendLayout();
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
            tblMain.TabIndex = 0;
            // 
            // tblSearch
            // 
            tblSearch.AutoSize = true;
            tblSearch.ColumnCount = 4;
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.ColumnStyles.Add(new ColumnStyle());
            tblSearch.Controls.Add(txtLastName, 1, 0);
            tblSearch.Controls.Add(btnSearch, 2, 0);
            tblSearch.Controls.Add(lblLastName, 0, 0);
            tblSearch.Controls.Add(btnNew, 3, 0);
            tblSearch.Location = new Point(3, 3);
            tblSearch.Name = "tblSearch";
            tblSearch.RowCount = 1;
            tblSearch.RowStyles.Add(new RowStyle());
            tblSearch.Size = new Size(455, 41);
            tblSearch.TabIndex = 0;
            // 
            // txtLastName
            // 
            txtLastName.Anchor = AnchorStyles.Left;
            txtLastName.Location = new Point(104, 5);
            txtLastName.Name = "txtLastName";
            txtLastName.Size = new Size(150, 31);
            txtLastName.TabIndex = 1;
            // 
            // btnSearch
            // 
            btnSearch.Anchor = AnchorStyles.Left;
            btnSearch.AutoSize = true;
            btnSearch.Location = new Point(260, 3);
            btnSearch.Name = "btnSearch";
            btnSearch.Size = new Size(112, 35);
            btnSearch.TabIndex = 2;
            btnSearch.Text = "Search";
            btnSearch.UseVisualStyleBackColor = true;
            // 
            // lblLastName
            // 
            lblLastName.Anchor = AnchorStyles.Left;
            lblLastName.AutoSize = true;
            lblLastName.Location = new Point(3, 8);
            lblLastName.Name = "lblLastName";
            lblLastName.Size = new Size(95, 25);
            lblLastName.TabIndex = 0;
            lblLastName.Text = "Last Name";
            // 
            // gPresidents
            // 
            gPresidents.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            gPresidents.Dock = DockStyle.Fill;
            gPresidents.Location = new Point(3, 50);
            gPresidents.Name = "gPresidents";
            gPresidents.RowHeadersWidth = 62;
            gPresidents.RowTemplate.Height = 33;
            gPresidents.Size = new Size(801, 654);
            gPresidents.TabIndex = 1;
            // 
            // btnNew
            // 
            btnNew.AutoSize = true;
            btnNew.Location = new Point(378, 3);
            btnNew.Name = "btnNew";
            btnNew.Size = new Size(74, 35);
            btnNew.TabIndex = 3;
            btnNew.Text = "&New";
            btnNew.UseVisualStyleBackColor = true;
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
    }
}