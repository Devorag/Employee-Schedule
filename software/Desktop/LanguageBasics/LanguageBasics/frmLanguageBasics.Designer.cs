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
            button1 = new Button();
            button2 = new Button();
            button3 = new Button();
            button4 = new Button();
            tblOutput = new TableLayoutPanel();
            gOutput = new DataGridView();
            txtOutput = new TextBox();
            tblMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)gOutput).BeginInit();
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
            tblMain.Controls.Add(gOutput, 1, 0);
            tblMain.Controls.Add(button1, 0, 1);
            tblMain.Controls.Add(button2, 1, 1);
            tblMain.Controls.Add(button3, 2, 1);
            tblMain.Controls.Add(button4, 3, 1);
            tblMain.Controls.Add(tblOutput, 1, 0);
            tblMain.Controls.Add(txtOutput, 0, 0);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 4;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 40F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.Size = new Size(707, 611);
            tblMain.TabIndex = 0;
            // 
            // button1
            // 
            button1.Dock = DockStyle.Fill;
            button1.Location = new Point(4, 369);
            button1.Name = "button1";
            button1.Size = new Size(169, 115);
            button1.TabIndex = 0;
            button1.Text = "button1";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.Dock = DockStyle.Fill;
            button2.Location = new Point(180, 369);
            button2.Name = "button2";
            button2.Size = new Size(169, 115);
            button2.TabIndex = 1;
            button2.Text = "button2";
            button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            button3.Dock = DockStyle.Fill;
            button3.Location = new Point(356, 369);
            button3.Name = "button3";
            button3.Size = new Size(169, 115);
            button3.TabIndex = 2;
            button3.Text = "button3";
            button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            button4.Dock = DockStyle.Fill;
            button4.Location = new Point(532, 369);
            button4.Name = "button4";
            button4.Size = new Size(171, 115);
            button4.TabIndex = 3;
            button4.Text = "button4";
            button4.UseVisualStyleBackColor = true;
            // 
            // tblOutput
            // 
            tblOutput.ColumnCount = 4;
            tblMain.SetColumnSpan(tblOutput, 4);
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 25F));
            tblOutput.Dock = DockStyle.Fill;
            tblOutput.Location = new Point(4, 247);
            tblOutput.Name = "tblOutput";
            tblOutput.RowCount = 1;
            tblOutput.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblOutput.Size = new Size(699, 115);
            tblOutput.TabIndex = 5;
            // 
            // gOutput
            // 
            gOutput.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            tblMain.SetColumnSpan(gOutput, 2);
            gOutput.Dock = DockStyle.Fill;
            gOutput.Location = new Point(180, 4);
            gOutput.Name = "gOutput";
            gOutput.RowHeadersWidth = 62;
            gOutput.RowTemplate.Height = 33;
            gOutput.Size = new Size(345, 236);
            gOutput.TabIndex = 0;
            // 
            // txtOutput
            // 
            txtOutput.Dock = DockStyle.Fill;
            txtOutput.Location = new Point(4, 4);
            txtOutput.Multiline = true;
            txtOutput.Name = "txtOutput";
            txtOutput.Size = new Size(169, 236);
            txtOutput.TabIndex = 4;
            // 
            // frmLanguageBasics
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(707, 611);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmLanguageBasics";
            Text = "Language Basics";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)gOutput).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Button button1;
        private Button button2;
        private Button button3;
        private Button button4;
        private TableLayoutPanel tblOutput;
        private TextBox txtOutput;
        private DataGridView gOutput;
    }
}