namespace FrmSqlExecutor
{
    partial class FrmSqlExecutor
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
            tableLayout = new TableLayoutPanel();
            radioAzure = new RadioButton();
            radioLocalDB = new RadioButton();
            txtDatabase = new TextBox();
            tableLayoutPanel1 = new TableLayoutPanel();
            radioRecordKeeper = new RadioButton();
            radioRecipe = new RadioButton();
            txtQuery = new TextBox();
            tableLayoutPanel2 = new TableLayoutPanel();
            btnRunQuery = new Button();
            tabMain = new TabControl();
            tblMain.SuspendLayout();
            tableLayout.SuspendLayout();
            tableLayoutPanel1.SuspendLayout();
            tableLayoutPanel2.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 3;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.33333F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333359F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333359F));
            tblMain.Controls.Add(tableLayout, 1, 0);
            tblMain.Controls.Add(txtDatabase, 0, 0);
            tblMain.Controls.Add(tableLayoutPanel1, 0, 1);
            tblMain.Controls.Add(txtQuery, 1, 1);
            tblMain.Controls.Add(tableLayoutPanel2, 1, 2);
            tblMain.Controls.Add(tabMain, 0, 4);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 5;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 10F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 10F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 10F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 30F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblMain.Size = new Size(960, 816);
            tblMain.TabIndex = 0;
            // 
            // tableLayout
            // 
            tableLayout.ColumnCount = 2;
            tblMain.SetColumnSpan(tableLayout, 2);
            tableLayout.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tableLayout.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tableLayout.Controls.Add(radioAzure, 1, 0);
            tableLayout.Controls.Add(radioLocalDB, 0, 0);
            tableLayout.Location = new Point(322, 3);
            tableLayout.Name = "tableLayout";
            tableLayout.RowCount = 1;
            tableLayout.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tableLayout.Size = new Size(633, 71);
            tableLayout.TabIndex = 0;
            // 
            // radioAzure
            // 
            radioAzure.AutoSize = true;
            radioAzure.Location = new Point(319, 3);
            radioAzure.Name = "radioAzure";
            radioAzure.Size = new Size(114, 42);
            radioAzure.TabIndex = 2;
            radioAzure.Text = "Azure";
            radioAzure.UseVisualStyleBackColor = true;
            // 
            // radioLocalDB
            // 
            radioLocalDB.AutoSize = true;
            radioLocalDB.Checked = true;
            radioLocalDB.Location = new Point(3, 3);
            radioLocalDB.Name = "radioLocalDB";
            radioLocalDB.Size = new Size(149, 42);
            radioLocalDB.TabIndex = 0;
            radioLocalDB.TabStop = true;
            radioLocalDB.Text = "Local DB";
            radioLocalDB.UseVisualStyleBackColor = true;
            // 
            // txtDatabase
            // 
            txtDatabase.Dock = DockStyle.Fill;
            txtDatabase.Location = new Point(3, 3);
            txtDatabase.Multiline = true;
            txtDatabase.Name = "txtDatabase";
            txtDatabase.ReadOnly = true;
            txtDatabase.Size = new Size(313, 71);
            txtDatabase.TabIndex = 1;
            txtDatabase.Text = "Database";
            // 
            // tableLayoutPanel1
            // 
            tableLayoutPanel1.ColumnCount = 1;
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tableLayoutPanel1.Controls.Add(radioRecordKeeper, 0, 0);
            tableLayoutPanel1.Controls.Add(radioRecipe, 0, 1);
            tableLayoutPanel1.Dock = DockStyle.Fill;
            tableLayoutPanel1.Location = new Point(3, 80);
            tableLayoutPanel1.Name = "tableLayoutPanel1";
            tableLayoutPanel1.RowCount = 2;
            tblMain.SetRowSpan(tableLayoutPanel1, 2);
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 15F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 85F));
            tableLayoutPanel1.Size = new Size(313, 381);
            tableLayoutPanel1.TabIndex = 2;
            // 
            // radioRecordKeeper
            // 
            radioRecordKeeper.AutoSize = true;
            radioRecordKeeper.Checked = true;
            radioRecordKeeper.Location = new Point(3, 3);
            radioRecordKeeper.Name = "radioRecordKeeper";
            radioRecordKeeper.Size = new Size(215, 42);
            radioRecordKeeper.TabIndex = 0;
            radioRecordKeeper.TabStop = true;
            radioRecordKeeper.Text = "RecordKeeper";
            radioRecordKeeper.UseVisualStyleBackColor = true;
            // 
            // radioRecipe
            // 
            radioRecipe.AutoSize = true;
            radioRecipe.Location = new Point(3, 60);
            radioRecipe.Name = "radioRecipe";
            radioRecipe.Size = new Size(124, 42);
            radioRecipe.TabIndex = 1;
            radioRecipe.Text = "Recipe";
            radioRecipe.UseVisualStyleBackColor = true;
            // 
            // txtQuery
            // 
            txtQuery.BorderStyle = BorderStyle.FixedSingle;
            tblMain.SetColumnSpan(txtQuery, 2);
            txtQuery.Dock = DockStyle.Fill;
            txtQuery.Location = new Point(322, 80);
            txtQuery.Multiline = true;
            txtQuery.Name = "txtQuery";
            txtQuery.PlaceholderText = "Text Query Here";
            txtQuery.Size = new Size(635, 304);
            txtQuery.TabIndex = 3;
            // 
            // tableLayoutPanel2
            // 
            tableLayoutPanel2.CellBorderStyle = TableLayoutPanelCellBorderStyle.Single;
            tableLayoutPanel2.ColumnCount = 2;
            tblMain.SetColumnSpan(tableLayoutPanel2, 2);
            tableLayoutPanel2.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 66.80027F));
            tableLayoutPanel2.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.19973F));
            tableLayoutPanel2.Controls.Add(btnRunQuery, 1, 0);
            tableLayoutPanel2.Location = new Point(322, 390);
            tableLayoutPanel2.Name = "tableLayoutPanel2";
            tableLayoutPanel2.RowCount = 1;
            tableLayoutPanel2.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tableLayoutPanel2.Size = new Size(633, 71);
            tableLayoutPanel2.TabIndex = 5;
            // 
            // btnRunQuery
            // 
            btnRunQuery.Dock = DockStyle.Fill;
            btnRunQuery.Location = new Point(425, 4);
            btnRunQuery.Name = "btnRunQuery";
            btnRunQuery.Size = new Size(204, 63);
            btnRunQuery.TabIndex = 0;
            btnRunQuery.Text = "Run Query";
            btnRunQuery.UseVisualStyleBackColor = true;
            // 
            // tabMain
            // 
            tabMain.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            tblMain.SetColumnSpan(tabMain, 3);
            tabMain.Location = new Point(3, 544);
            tabMain.Multiline = true;
            tabMain.Name = "tabMain";
            tblMain.SetRowSpan(tabMain, 3);
            tabMain.SelectedIndex = 0;
            tabMain.Size = new Size(954, 269);
            tabMain.TabIndex = 6;
            // 
            // FrmSqlExecutor
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(960, 816);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "FrmSqlExecutor";
            Text = "SQLExecutor";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tableLayout.ResumeLayout(false);
            tableLayout.PerformLayout();
            tableLayoutPanel1.ResumeLayout(false);
            tableLayoutPanel1.PerformLayout();
            tableLayoutPanel2.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private TableLayoutPanel tableLayout;
        private TextBox txtDatabase;
        private RadioButton radioLocalDB;
        private RadioButton radioAzure;
        private TableLayoutPanel tableLayoutPanel1;
        private RadioButton radioRecordKeeper;
        private RadioButton radioRecipe;
        private TextBox txtQuery;
        private TableLayoutPanel tableLayoutPanel2;
        private Button btnRunQuery;
        private TabControl tabMain;
    }
}