namespace RecordKeeperWinForm
{
    partial class frmOlympicsCreateBasedOnPrevious
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
            lblHeader = new Label();
            lblSeason = new Label();
            lblCity = new Label();
            lblYear = new Label();
            lblBasedon = new Label();
            lstSeasonName = new ComboBox();
            lstCityName = new ComboBox();
            txtYear = new TextBox();
            lstOlympicsDesc = new ComboBox();
            btnCreate = new Button();
            tblMain.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 3;
            tblMain.ColumnStyles.Add(new ColumnStyle());
            tblMain.ColumnStyles.Add(new ColumnStyle());
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblMain.Controls.Add(lblHeader, 0, 0);
            tblMain.Controls.Add(lblSeason, 0, 1);
            tblMain.Controls.Add(lblCity, 0, 2);
            tblMain.Controls.Add(lblYear, 0, 3);
            tblMain.Controls.Add(lblBasedon, 0, 4);
            tblMain.Controls.Add(lstSeasonName, 1, 1);
            tblMain.Controls.Add(lstCityName, 1, 2);
            tblMain.Controls.Add(txtYear, 1, 3);
            tblMain.Controls.Add(lstOlympicsDesc, 1, 4);
            tblMain.Controls.Add(btnCreate, 1, 5);
            tblMain.Location = new Point(0, 0);
            tblMain.Margin = new Padding(3, 3, 3, 10);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 6;
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.Size = new Size(988, 770);
            tblMain.TabIndex = 0;
            // 
            // lblHeader
            // 
            lblHeader.AutoSize = true;
            tblMain.SetColumnSpan(lblHeader, 2);
            lblHeader.Dock = DockStyle.Fill;
            lblHeader.Font = new Font("Segoe UI", 18F, FontStyle.Regular, GraphicsUnit.Point);
            lblHeader.Location = new Point(3, 0);
            lblHeader.Name = "lblHeader";
            lblHeader.Size = new Size(822, 48);
            lblHeader.TabIndex = 0;
            lblHeader.Text = "Create New Olympics Based On Previous Olympics";
            lblHeader.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // lblSeason
            // 
            lblSeason.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblSeason.AutoSize = true;
            lblSeason.Location = new Point(3, 58);
            lblSeason.Name = "lblSeason";
            lblSeason.Size = new Size(145, 32);
            lblSeason.TabIndex = 1;
            lblSeason.Text = "New Season";
            // 
            // lblCity
            // 
            lblCity.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblCity.AutoSize = true;
            lblCity.Location = new Point(3, 111);
            lblCity.Name = "lblCity";
            lblCity.Size = new Size(145, 32);
            lblCity.TabIndex = 3;
            lblCity.Text = "New City";
            // 
            // lblYear
            // 
            lblYear.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblYear.AutoSize = true;
            lblYear.Location = new Point(3, 164);
            lblYear.Name = "lblYear";
            lblYear.Size = new Size(145, 32);
            lblYear.TabIndex = 5;
            lblYear.Text = "New Year";
            // 
            // lblBasedon
            // 
            lblBasedon.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblBasedon.AutoSize = true;
            lblBasedon.Location = new Point(3, 216);
            lblBasedon.Name = "lblBasedon";
            lblBasedon.Size = new Size(145, 32);
            lblBasedon.TabIndex = 7;
            lblBasedon.Text = "Based On ";
            // 
            // lstSeasonName
            // 
            lstSeasonName.Dock = DockStyle.Fill;
            lstSeasonName.FormattingEnabled = true;
            lstSeasonName.Location = new Point(154, 51);
            lstSeasonName.Margin = new Padding(3, 3, 3, 10);
            lstSeasonName.Name = "lstSeasonName";
            lstSeasonName.Size = new Size(671, 40);
            lstSeasonName.TabIndex = 0;
            // 
            // lstCityName
            // 
            lstCityName.Dock = DockStyle.Fill;
            lstCityName.FormattingEnabled = true;
            lstCityName.Location = new Point(154, 104);
            lstCityName.Margin = new Padding(3, 3, 3, 10);
            lstCityName.Name = "lstCityName";
            lstCityName.Size = new Size(671, 40);
            lstCityName.TabIndex = 1;
            // 
            // txtYear
            // 
            txtYear.Dock = DockStyle.Fill;
            txtYear.Location = new Point(154, 157);
            txtYear.Margin = new Padding(3, 3, 3, 10);
            txtYear.Name = "txtYear";
            txtYear.Size = new Size(671, 39);
            txtYear.TabIndex = 2;
            // 
            // lstOlympicsDesc
            // 
            lstOlympicsDesc.Dock = DockStyle.Fill;
            lstOlympicsDesc.FormattingEnabled = true;
            lstOlympicsDesc.Location = new Point(154, 209);
            lstOlympicsDesc.Margin = new Padding(3, 3, 3, 10);
            lstOlympicsDesc.Name = "lstOlympicsDesc";
            lstOlympicsDesc.Size = new Size(671, 40);
            lstOlympicsDesc.TabIndex = 3;
            // 
            // btnCreate
            // 
            btnCreate.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnCreate.AutoSize = true;
            btnCreate.Location = new Point(572, 262);
            btnCreate.Name = "btnCreate";
            btnCreate.Size = new Size(253, 42);
            btnCreate.TabIndex = 4;
            btnCreate.Text = "Create New Olympics";
            btnCreate.UseVisualStyleBackColor = true;
            // 
            // frmOlympicsCreateBasedOnPrevious
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(973, 770);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4);
            Name = "frmOlympicsCreateBasedOnPrevious";
            Text = "Olympics Create Based On Previous";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Label lblHeader;
        private Label lblSeason;
        private Label lblCity;
        private Label lblYear;
        private Label lblBasedon;
        private Button btnCreate;
        private ComboBox lstSeasonName;
        private ComboBox lstCityName;
        private TextBox txtYear;
        private ComboBox lstOlympicsDesc;
    }
}