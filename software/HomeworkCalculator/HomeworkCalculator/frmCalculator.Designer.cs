namespace HomeworkCalculator
{
    partial class frmCalculator
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
            btnClear = new Button();
            btnDivide = new Button();
            btnMultiply = new Button();
            btnSubtract = new Button();
            btnAdd = new Button();
            btnEquals = new Button();
            btn7 = new Button();
            btn8 = new Button();
            btn9 = new Button();
            btn4 = new Button();
            btn5 = new Button();
            btn6 = new Button();
            btn1 = new Button();
            btn2 = new Button();
            btn3 = new Button();
            btnSign = new Button();
            btn0 = new Button();
            btnDecimal = new Button();
            txtFactor1 = new TextBox();
            txtOperator = new TextBox();
            txtFactor2 = new TextBox();
            txtAnswer = new TextBox();
            tblMain.SuspendLayout();
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
            tblMain.Controls.Add(btnClear, 0, 1);
            tblMain.Controls.Add(btnDivide, 3, 1);
            tblMain.Controls.Add(btnMultiply, 3, 2);
            tblMain.Controls.Add(btnSubtract, 3, 3);
            tblMain.Controls.Add(btnAdd, 3, 4);
            tblMain.Controls.Add(btnEquals, 3, 5);
            tblMain.Controls.Add(btn7, 0, 2);
            tblMain.Controls.Add(btn8, 1, 2);
            tblMain.Controls.Add(btn9, 2, 2);
            tblMain.Controls.Add(btn4, 0, 3);
            tblMain.Controls.Add(btn5, 1, 3);
            tblMain.Controls.Add(btn6, 2, 3);
            tblMain.Controls.Add(btn1, 0, 4);
            tblMain.Controls.Add(btn2, 1, 4);
            tblMain.Controls.Add(btn3, 2, 4);
            tblMain.Controls.Add(btnSign, 0, 5);
            tblMain.Controls.Add(btn0, 1, 5);
            tblMain.Controls.Add(btnDecimal, 2, 5);
            tblMain.Controls.Add(txtFactor1, 0, 0);
            tblMain.Controls.Add(txtOperator, 1, 0);
            tblMain.Controls.Add(txtFactor2, 2, 0);
            tblMain.Controls.Add(txtAnswer, 3, 0);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 6;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 16.666666F));
            tblMain.Size = new Size(672, 632);
            tblMain.TabIndex = 0;
            // 
            // btnClear
            // 
            tblMain.SetColumnSpan(btnClear, 3);
            btnClear.Dock = DockStyle.Fill;
            btnClear.Location = new Point(4, 109);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(494, 98);
            btnClear.TabIndex = 0;
            btnClear.Text = "c";
            btnClear.UseVisualStyleBackColor = true;
            // 
            // btnDivide
            // 
            btnDivide.Dock = DockStyle.Fill;
            btnDivide.Location = new Point(505, 109);
            btnDivide.Name = "btnDivide";
            btnDivide.Size = new Size(163, 98);
            btnDivide.TabIndex = 1;
            btnDivide.Text = "/";
            btnDivide.UseVisualStyleBackColor = true;
            // 
            // btnMultiply
            // 
            btnMultiply.Dock = DockStyle.Fill;
            btnMultiply.Location = new Point(505, 214);
            btnMultiply.Name = "btnMultiply";
            btnMultiply.Size = new Size(163, 98);
            btnMultiply.TabIndex = 2;
            btnMultiply.Text = "x";
            btnMultiply.UseVisualStyleBackColor = true;
            // 
            // btnSubtract
            // 
            btnSubtract.Dock = DockStyle.Fill;
            btnSubtract.Location = new Point(505, 319);
            btnSubtract.Name = "btnSubtract";
            btnSubtract.Size = new Size(163, 98);
            btnSubtract.TabIndex = 3;
            btnSubtract.Text = "-";
            btnSubtract.UseVisualStyleBackColor = true;
            // 
            // btnAdd
            // 
            btnAdd.Dock = DockStyle.Fill;
            btnAdd.Location = new Point(505, 424);
            btnAdd.Name = "btnAdd";
            btnAdd.Size = new Size(163, 98);
            btnAdd.TabIndex = 4;
            btnAdd.Text = "+";
            btnAdd.UseVisualStyleBackColor = true;
            // 
            // btnEquals
            // 
            btnEquals.Dock = DockStyle.Fill;
            btnEquals.Location = new Point(505, 529);
            btnEquals.Name = "btnEquals";
            btnEquals.Size = new Size(163, 99);
            btnEquals.TabIndex = 5;
            btnEquals.Text = "=";
            btnEquals.UseVisualStyleBackColor = true;
            // 
            // btn7
            // 
            btn7.Dock = DockStyle.Fill;
            btn7.Location = new Point(4, 214);
            btn7.Name = "btn7";
            btn7.Size = new Size(160, 98);
            btn7.TabIndex = 6;
            btn7.Text = "7";
            btn7.UseVisualStyleBackColor = true;
            // 
            // btn8
            // 
            btn8.Dock = DockStyle.Fill;
            btn8.Location = new Point(171, 214);
            btn8.Name = "btn8";
            btn8.Size = new Size(160, 98);
            btn8.TabIndex = 7;
            btn8.Text = "8";
            btn8.UseVisualStyleBackColor = true;
            // 
            // btn9
            // 
            btn9.Dock = DockStyle.Fill;
            btn9.Location = new Point(338, 214);
            btn9.Name = "btn9";
            btn9.Size = new Size(160, 98);
            btn9.TabIndex = 8;
            btn9.Text = "9";
            btn9.UseVisualStyleBackColor = true;
            // 
            // btn4
            // 
            btn4.Dock = DockStyle.Fill;
            btn4.Location = new Point(4, 319);
            btn4.Name = "btn4";
            btn4.Size = new Size(160, 98);
            btn4.TabIndex = 9;
            btn4.Text = "4";
            btn4.UseVisualStyleBackColor = true;
            // 
            // btn5
            // 
            btn5.Dock = DockStyle.Fill;
            btn5.Location = new Point(171, 319);
            btn5.Name = "btn5";
            btn5.Size = new Size(160, 98);
            btn5.TabIndex = 10;
            btn5.Text = "5";
            btn5.UseVisualStyleBackColor = true;
            // 
            // btn6
            // 
            btn6.Dock = DockStyle.Fill;
            btn6.Location = new Point(338, 319);
            btn6.Name = "btn6";
            btn6.Size = new Size(160, 98);
            btn6.TabIndex = 11;
            btn6.Text = "6";
            btn6.UseVisualStyleBackColor = true;
            // 
            // btn1
            // 
            btn1.Dock = DockStyle.Fill;
            btn1.Location = new Point(4, 424);
            btn1.Name = "btn1";
            btn1.Size = new Size(160, 98);
            btn1.TabIndex = 12;
            btn1.Text = "1";
            btn1.UseVisualStyleBackColor = true;
            // 
            // btn2
            // 
            btn2.Dock = DockStyle.Fill;
            btn2.Location = new Point(171, 424);
            btn2.Name = "btn2";
            btn2.Size = new Size(160, 98);
            btn2.TabIndex = 13;
            btn2.Text = "2";
            btn2.UseVisualStyleBackColor = true;
            // 
            // btn3
            // 
            btn3.Dock = DockStyle.Fill;
            btn3.Location = new Point(338, 424);
            btn3.Name = "btn3";
            btn3.Size = new Size(160, 98);
            btn3.TabIndex = 14;
            btn3.Text = "3";
            btn3.UseVisualStyleBackColor = true;
            // 
            // btnSign
            // 
            btnSign.Dock = DockStyle.Fill;
            btnSign.Location = new Point(4, 529);
            btnSign.Name = "btnSign";
            btnSign.Size = new Size(160, 99);
            btnSign.TabIndex = 15;
            btnSign.Text = "-/+";
            btnSign.UseVisualStyleBackColor = true;
            // 
            // btn0
            // 
            btn0.Dock = DockStyle.Fill;
            btn0.Location = new Point(171, 529);
            btn0.Name = "btn0";
            btn0.Size = new Size(160, 99);
            btn0.TabIndex = 16;
            btn0.Text = "0";
            btn0.UseVisualStyleBackColor = true;
            // 
            // btnDecimal
            // 
            btnDecimal.Dock = DockStyle.Fill;
            btnDecimal.Location = new Point(338, 529);
            btnDecimal.Name = "btnDecimal";
            btnDecimal.Size = new Size(160, 99);
            btnDecimal.TabIndex = 17;
            btnDecimal.Text = ".";
            btnDecimal.UseVisualStyleBackColor = true;
            // 
            // txtFactor1
            // 
            txtFactor1.Dock = DockStyle.Fill;
            txtFactor1.Font = new Font("Segoe UI", 22F, FontStyle.Regular, GraphicsUnit.Point);
            txtFactor1.Location = new Point(4, 4);
            txtFactor1.Multiline = true;
            txtFactor1.Name = "txtFactor1";
            txtFactor1.Size = new Size(160, 98);
            txtFactor1.TabIndex = 18;
            txtFactor1.Text = "7";
            txtFactor1.TextAlign = HorizontalAlignment.Center;
            // 
            // txtOperator
            // 
            txtOperator.Dock = DockStyle.Fill;
            txtOperator.Font = new Font("Segoe UI", 22F, FontStyle.Regular, GraphicsUnit.Point);
            txtOperator.Location = new Point(171, 4);
            txtOperator.Multiline = true;
            txtOperator.Name = "txtOperator";
            txtOperator.Size = new Size(160, 98);
            txtOperator.TabIndex = 19;
            txtOperator.Text = "+";
            txtOperator.TextAlign = HorizontalAlignment.Center;
            // 
            // txtFactor2
            // 
            txtFactor2.Dock = DockStyle.Fill;
            txtFactor2.Font = new Font("Segoe UI", 22F, FontStyle.Regular, GraphicsUnit.Point);
            txtFactor2.Location = new Point(338, 4);
            txtFactor2.Multiline = true;
            txtFactor2.Name = "txtFactor2";
            txtFactor2.Size = new Size(160, 98);
            txtFactor2.TabIndex = 20;
            txtFactor2.Text = "8";
            txtFactor2.TextAlign = HorizontalAlignment.Center;
            // 
            // txtAnswer
            // 
            txtAnswer.Dock = DockStyle.Fill;
            txtAnswer.Location = new Point(505, 4);
            txtAnswer.Multiline = true;
            txtAnswer.Name = "txtAnswer";
            txtAnswer.Size = new Size(163, 98);
            txtAnswer.TabIndex = 21;
            // 
            // frmCalculator
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(672, 632);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmCalculator";
            Text = "Calculator";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Button btnClear;
        private Button btnDivide;
        private Button btnMultiply;
        private Button btnSubtract;
        private Button btnAdd;
        private Button btnEquals;
        private Button btn7;
        private Button btn8;
        private Button btn9;
        private Button btn4;
        private Button btn5;
        private Button btn6;
        private Button btn1;
        private Button btn2;
        private Button btn3;
        private Button btnSign;
        private Button btn0;
        private Button btnDecimal;
        private TextBox txtFactor1;
        private TextBox txtOperator;
        private TextBox txtFactor2;
        private TextBox txtAnswer;
    }
}