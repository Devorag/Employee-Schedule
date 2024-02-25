namespace LanguageBasics
{
    partial class frmLanguageBasics
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
            gOutput = new DataGridView();
            btnEvemtHandler1 = new Button();
            btnEventHandler2 = new Button();
            btnVariable1 = new Button();
            btnVariable2 = new Button();
            tblOutput = new TableLayoutPanel();
            btnDataConversion1 = new Button();
            btnDataConversion2 = new Button();
            btnRandom = new Button();
            txtOutput = new TextBox();
            btnIf1 = new Button();
            btnIf2 = new Button();
            tblMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)gOutput).BeginInit();
            tblOutput.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.CellBorderStyle = TableLayoutPanelCellBorderStyle.Single;
            tblMain.ColumnCount = 4;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblMain.Controls.Add(btnEvemtHandler1, 0, 1);
            tblMain.Controls.Add(btnEventHandler2, 1, 1);
            tblMain.Controls.Add(btnVariable1, 2, 1);
            tblMain.Controls.Add(btnVariable2, 3, 1);
            tblMain.Controls.Add(tblOutput, 1, 0);
            tblMain.Controls.Add(txtOutput, 0, 0);
            tblMain.Controls.Add(btnIf1, 0, 3);
            tblMain.Controls.Add(gOutput, 3, 3);
            tblMain.Controls.Add(btnIf2, 1, 3);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 4;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblMain.Size = new Size(1459, 901);
            tblMain.TabIndex = 0;
            // 
            // gOutput
            // 
            gOutput.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            tblMain.SetColumnSpan(gOutput, 2);
            gOutput.Dock = DockStyle.Fill;
            gOutput.Location = new Point(4, 883);
            gOutput.Name = "gOutput";
            gOutput.RowHeadersWidth = 62;
            gOutput.RowTemplate.Height = 33;
            gOutput.Size = new Size(721, 14);
            gOutput.TabIndex = 0;
            gOutput.CellContentClick += gOutput_CellContentClick;
            // 
            // btnEvemtHandler1
            // 
            btnEvemtHandler1.Dock = DockStyle.Fill;
            btnEvemtHandler1.Location = new Point(4, 531);
            btnEvemtHandler1.Name = "btnEvemtHandler1";
            btnEvemtHandler1.Size = new Size(357, 169);
            btnEvemtHandler1.TabIndex = 0;
            btnEvemtHandler1.Text = "Event Handler 1 ";
            btnEvemtHandler1.UseVisualStyleBackColor = true;
            // 
            // btnEventHandler2
            // 
            btnEventHandler2.Dock = DockStyle.Fill;
            btnEventHandler2.Location = new Point(368, 531);
            btnEventHandler2.Name = "btnEventHandler2";
            btnEventHandler2.Size = new Size(357, 169);
            btnEventHandler2.TabIndex = 1;
            btnEventHandler2.Text = "Event Handler 2 ";
            btnEventHandler2.UseVisualStyleBackColor = true;
            // 
            // btnVariable1
            // 
            btnVariable1.Dock = DockStyle.Fill;
            btnVariable1.Location = new Point(732, 531);
            btnVariable1.Name = "btnVariable1";
            btnVariable1.Size = new Size(357, 169);
            btnVariable1.TabIndex = 2;
            btnVariable1.Text = "Variable 1 ";
            btnVariable1.UseVisualStyleBackColor = true;
            // 
            // btnVariable2
            // 
            btnVariable2.Dock = DockStyle.Fill;
            btnVariable2.Location = new Point(1096, 531);
            btnVariable2.Name = "btnVariable2";
            btnVariable2.Size = new Size(359, 169);
            btnVariable2.TabIndex = 3;
            btnVariable2.Text = "Variable 2 ";
            btnVariable2.UseVisualStyleBackColor = true;
            // 
            // tblOutput
            // 
            tblOutput.ColumnCount = 4;
            tblMain.SetColumnSpan(tblOutput, 4);
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.Controls.Add(btnDataConversion1, 0, 0);
            tblOutput.Controls.Add(btnDataConversion2, 1, 0);
            tblOutput.Controls.Add(btnRandom, 2, 0);
            tblOutput.Dock = DockStyle.Fill;
            tblOutput.Location = new Point(4, 355);
            tblOutput.Name = "tblOutput";
            tblOutput.RowCount = 1;
            tblOutput.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblOutput.Size = new Size(1451, 169);
            tblOutput.TabIndex = 5;
            // 
            // btnDataConversion1
            // 
            btnDataConversion1.Dock = DockStyle.Fill;
            btnDataConversion1.Location = new Point(3, 3);
            btnDataConversion1.Name = "btnDataConversion1";
            btnDataConversion1.Size = new Size(356, 163);
            btnDataConversion1.TabIndex = 0;
            btnDataConversion1.Text = "Data Conversion 1";
            btnDataConversion1.UseVisualStyleBackColor = true;
            // 
            // btnDataConversion2
            // 
            btnDataConversion2.Dock = DockStyle.Fill;
            btnDataConversion2.Location = new Point(365, 3);
            btnDataConversion2.Name = "btnDataConversion2";
            btnDataConversion2.Size = new Size(356, 163);
            btnDataConversion2.TabIndex = 1;
            btnDataConversion2.Text = "Data Conversion 2";
            btnDataConversion2.UseVisualStyleBackColor = true;
            // 
            // btnRandom
            // 
            btnRandom.Dock = DockStyle.Fill;
            btnRandom.Location = new Point(727, 3);
            btnRandom.Name = "btnRandom";
            btnRandom.Size = new Size(356, 163);
            btnRandom.TabIndex = 2;
            btnRandom.Text = "Random ";
            btnRandom.UseVisualStyleBackColor = true;
            // 
            // txtOutput
            // 
            txtOutput.Dock = DockStyle.Fill;
            txtOutput.Location = new Point(4, 4);
            txtOutput.Multiline = true;
            txtOutput.Name = "txtOutput";
            txtOutput.Size = new Size(357, 344);
            txtOutput.TabIndex = 4;
            // 
            // btnIf1
            // 
            btnIf1.Dock = DockStyle.Fill;
            btnIf1.Location = new Point(4, 707);
            btnIf1.Name = "btnIf1";
            btnIf1.Size = new Size(357, 169);
            btnIf1.TabIndex = 6;
            btnIf1.Text = "If 1 ";
            btnIf1.UseVisualStyleBackColor = true;
            // 
            // btnIf2
            // 
            btnIf2.Dock = DockStyle.Fill;
            btnIf2.Location = new Point(368, 707);
            btnIf2.Name = "btnIf2";
            btnIf2.Size = new Size(357, 169);
            btnIf2.TabIndex = 7;
            btnIf2.Text = "If 2";
            btnIf2.UseVisualStyleBackColor = true;
            // 
            // frmLanguageBasics
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1459, 901);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmLanguageBasics";
            Text = "Language Basics";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)gOutput).EndInit();
            tblOutput.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Button btnEvemtHandler1;
        private Button btnVariable1;
        private Button btnVariable2;
        private TableLayoutPanel tblOutput;
        private TextBox txtOutput;
        private DataGridView gOutput;
        private Button btnEventHandler2;
        private Button btnDataConversion1;
        private Button btnDataConversion2;
        private Button btnRandom;
        private Button btnIf1;
        private Button btnIf2;
    }
}