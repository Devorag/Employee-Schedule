namespace LanguageBasics
{
    partial class frmTest
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
            optWater = new RadioButton();
            optMilk = new RadioButton();
            optTea = new RadioButton();
            optBread = new RadioButton();
            optPizza = new RadioButton();
            panel1 = new Panel();
            panel2 = new Panel();
            tableLayoutPanel1 = new TableLayoutPanel();
            panel1.SuspendLayout();
            panel2.SuspendLayout();
            SuspendLayout();
            // 
            // optWater
            // 
            optWater.AutoSize = true;
            optWater.Location = new Point(26, 23);
            optWater.Name = "optWater";
            optWater.Size = new Size(110, 42);
            optWater.TabIndex = 0;
            optWater.TabStop = true;
            optWater.Text = "water";
            optWater.UseVisualStyleBackColor = true;
            // 
            // optMilk
            // 
            optMilk.AutoSize = true;
            optMilk.Location = new Point(26, 90);
            optMilk.Name = "optMilk";
            optMilk.Size = new Size(94, 42);
            optMilk.TabIndex = 1;
            optMilk.TabStop = true;
            optMilk.Text = "milk";
            optMilk.UseVisualStyleBackColor = true;
            // 
            // optTea
            // 
            optTea.AutoSize = true;
            optTea.Location = new Point(26, 174);
            optTea.Name = "optTea";
            optTea.Size = new Size(80, 42);
            optTea.TabIndex = 2;
            optTea.TabStop = true;
            optTea.Text = "tea";
            optTea.UseVisualStyleBackColor = true;
            // 
            // optBread
            // 
            optBread.AutoSize = true;
            optBread.Location = new Point(42, 51);
            optBread.Name = "optBread";
            optBread.Size = new Size(113, 42);
            optBread.TabIndex = 3;
            optBread.TabStop = true;
            optBread.Text = "Bread";
            optBread.UseVisualStyleBackColor = true;
            // 
            // optPizza
            // 
            optPizza.AutoSize = true;
            optPizza.Location = new Point(42, 109);
            optPizza.Name = "optPizza";
            optPizza.Size = new Size(105, 42);
            optPizza.TabIndex = 4;
            optPizza.TabStop = true;
            optPizza.Text = "Pizza";
            optPizza.UseVisualStyleBackColor = true;
            optPizza.CheckedChanged += optPizza_CheckedChanged;
            // 
            // panel1
            // 
            panel1.BorderStyle = BorderStyle.FixedSingle;
            panel1.Controls.Add(optWater);
            panel1.Controls.Add(optMilk);
            panel1.Controls.Add(optTea);
            panel1.Location = new Point(105, 58);
            panel1.Name = "panel1";
            panel1.Size = new Size(523, 413);
            panel1.TabIndex = 5;
            // 
            // panel2
            // 
            panel2.BorderStyle = BorderStyle.FixedSingle;
            panel2.Controls.Add(optBread);
            panel2.Controls.Add(optPizza);
            panel2.Location = new Point(735, 58);
            panel2.Name = "panel2";
            panel2.Size = new Size(570, 384);
            panel2.TabIndex = 6;
            // 
            // tableLayoutPanel1
            // 
            tableLayoutPanel1.ColumnCount = 2;
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tableLayoutPanel1.Location = new Point(316, 793);
            tableLayoutPanel1.Name = "tableLayoutPanel1";
            tableLayoutPanel1.RowCount = 3;
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Absolute, 65F));
            tableLayoutPanel1.Size = new Size(300, 214);
            tableLayoutPanel1.TabIndex = 7;
            // 
            // frmTest
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(2079, 1207);
            Controls.Add(tableLayoutPanel1);
            Controls.Add(panel2);
            Controls.Add(panel1);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmTest";
            Text = "Test";
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            panel2.ResumeLayout(false);
            panel2.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private RadioButton optWater;
        private RadioButton optMilk;
        private RadioButton optTea;
        private RadioButton optBread;
        private RadioButton optPizza;
        private Panel panel1;
        private Panel panel2;
        private TableLayoutPanel tableLayoutPanel1;
    }
}