namespace RecordKeeperWinForm
{
    partial class frmDataMaintenance
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
            btnSave = new Button();
            gData = new DataGridView();
            pnlOptionButtons = new FlowLayoutPanel();
            optCountry = new RadioButton();
            optCity = new RadioButton();
            optOlympicMedal = new RadioButton();
            optSeason = new RadioButton();
            optSport = new RadioButton();
            optSportSubCategory = new RadioButton();
            tblMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)gData).BeginInit();
            pnlOptionButtons.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 30.76923F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 69.23077F));
            tblMain.Controls.Add(btnSave, 0, 0);
            tblMain.Controls.Add(gData, 1, 1);
            tblMain.Controls.Add(pnlOptionButtons, 0, 1);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Margin = new Padding(4);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 2;
            tblMain.RowStyles.Add(new RowStyle());
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tblMain.Size = new Size(1363, 895);
            tblMain.TabIndex = 0;
            // 
            // btnSave
            // 
            btnSave.AutoSize = true;
            btnSave.BackColor = SystemColors.ControlLight;
            btnSave.Location = new Point(4, 4);
            btnSave.Margin = new Padding(4);
            btnSave.Name = "btnSave";
            btnSave.Size = new Size(165, 67);
            btnSave.TabIndex = 0;
            btnSave.Text = "&Save";
            btnSave.UseVisualStyleBackColor = false;
            // 
            // gData
            // 
            gData.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            gData.Dock = DockStyle.Fill;
            gData.Location = new Point(422, 78);
            gData.Name = "gData";
            gData.RowHeadersWidth = 62;
            gData.RowTemplate.Height = 33;
            gData.Size = new Size(938, 814);
            gData.TabIndex = 1;
            // 
            // pnlOptionButtons
            // 
            pnlOptionButtons.Controls.Add(optCountry);
            pnlOptionButtons.Controls.Add(optCity);
            pnlOptionButtons.Controls.Add(optOlympicMedal);
            pnlOptionButtons.Controls.Add(optSeason);
            pnlOptionButtons.Controls.Add(optSport);
            pnlOptionButtons.Controls.Add(optSportSubCategory);
            pnlOptionButtons.Dock = DockStyle.Fill;
            pnlOptionButtons.FlowDirection = FlowDirection.TopDown;
            pnlOptionButtons.Location = new Point(3, 78);
            pnlOptionButtons.Name = "pnlOptionButtons";
            pnlOptionButtons.Size = new Size(413, 814);
            pnlOptionButtons.TabIndex = 2;
            // 
            // optCountry
            // 
            optCountry.AutoSize = true;
            optCountry.Checked = true;
            optCountry.Location = new Point(3, 3);
            optCountry.Name = "optCountry";
            optCountry.Size = new Size(141, 36);
            optCountry.TabIndex = 0;
            optCountry.TabStop = true;
            optCountry.Text = "Countries";
            optCountry.UseVisualStyleBackColor = true;
            // 
            // optCity
            // 
            optCity.AutoSize = true;
            optCity.Location = new Point(3, 45);
            optCity.Name = "optCity";
            optCity.Size = new Size(97, 36);
            optCity.TabIndex = 1;
            optCity.Text = "Cities";
            optCity.UseVisualStyleBackColor = true;
            // 
            // optOlympicMedal
            // 
            optOlympicMedal.AutoSize = true;
            optOlympicMedal.Location = new Point(3, 87);
            optOlympicMedal.Name = "optOlympicMedal";
            optOlympicMedal.Size = new Size(211, 36);
            optOlympicMedal.TabIndex = 2;
            optOlympicMedal.Text = "Olympic Medals";
            optOlympicMedal.UseVisualStyleBackColor = true;
            // 
            // optSeason
            // 
            optSeason.AutoSize = true;
            optSeason.Location = new Point(3, 129);
            optSeason.Name = "optSeason";
            optSeason.Size = new Size(125, 36);
            optSeason.TabIndex = 3;
            optSeason.Text = "Seasons";
            optSeason.UseVisualStyleBackColor = true;
            // 
            // optSport
            // 
            optSport.AutoSize = true;
            optSport.Location = new Point(3, 171);
            optSport.Name = "optSport";
            optSport.Size = new Size(106, 36);
            optSport.TabIndex = 4;
            optSport.Text = "Sports";
            optSport.UseVisualStyleBackColor = true;
            // 
            // optSportSubCategory
            // 
            optSportSubCategory.AutoSize = true;
            optSportSubCategory.Location = new Point(3, 213);
            optSportSubCategory.Name = "optSportSubCategory";
            optSportSubCategory.Size = new Size(250, 36);
            optSportSubCategory.TabIndex = 5;
            optSportSubCategory.Text = "SportSubCategories";
            optSportSubCategory.UseVisualStyleBackColor = true;
            // 
            // frmDataMaintenance
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1363, 895);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4);
            Name = "frmDataMaintenance";
            Text = "DataMaintenance";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)gData).EndInit();
            pnlOptionButtons.ResumeLayout(false);
            pnlOptionButtons.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Button btnSave;
        private DataGridView gData;
        private FlowLayoutPanel pnlOptionButtons;
        private RadioButton optCountry;
        private RadioButton optCity;
        private RadioButton optOlympicMedal;
        private RadioButton optSeason;
        private RadioButton optSport;
        private RadioButton optSportSubCategory;
    }
}