namespace TicTacToe
{
    partial class TicTacToeControls
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            tblMain = new TableLayoutPanel();
            tblToolBar = new TableLayoutPanel();
            btnStart = new Button();
            optTwoPlayer = new RadioButton();
            optPlayComputer = new RadioButton();
            lblStatus = new Label();
            tblSpots = new TableLayoutPanel();
            btn2 = new Button();
            btn3 = new Button();
            btn6 = new Button();
            btn5 = new Button();
            btn8 = new Button();
            btn9 = new Button();
            btn1 = new Button();
            btn4 = new Button();
            btn7 = new Button();
            lblName = new Label();
            tblMain.SuspendLayout();
            tblToolBar.SuspendLayout();
            tblSpots.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 1;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblMain.Controls.Add(tblToolBar, 0, 0);
            tblMain.Controls.Add(tblSpots, 0, 1);
            tblMain.Controls.Add(lblName, 0, 2);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 3;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 12F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 88F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 40F));
            tblMain.Size = new Size(1126, 955);
            tblMain.TabIndex = 0;
            // 
            // tblToolBar
            // 
            tblToolBar.AutoSize = true;
            tblToolBar.ColumnCount = 4;
            tblToolBar.ColumnStyles.Add(new ColumnStyle());
            tblToolBar.ColumnStyles.Add(new ColumnStyle());
            tblToolBar.ColumnStyles.Add(new ColumnStyle());
            tblToolBar.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblToolBar.Controls.Add(btnStart, 0, 0);
            tblToolBar.Controls.Add(optPlayComputer, 2, 0);
            tblToolBar.Controls.Add(lblStatus, 0, 1);
            tblToolBar.Controls.Add(optTwoPlayer, 1, 0);
            tblToolBar.Dock = DockStyle.Fill;
            tblToolBar.Location = new Point(3, 3);
            tblToolBar.Name = "tblToolBar";
            tblToolBar.RowCount = 3;
            tblToolBar.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tblToolBar.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tblToolBar.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblToolBar.Size = new Size(1120, 103);
            tblToolBar.TabIndex = 0;
            // 
            // btnStart
            // 
            btnStart.Anchor = AnchorStyles.Left;
            btnStart.AutoSize = true;
            btnStart.Location = new Point(3, 3);
            btnStart.Name = "btnStart";
            btnStart.Size = new Size(112, 35);
            btnStart.TabIndex = 0;
            btnStart.Text = "&Start";
            btnStart.UseVisualStyleBackColor = true;
            // 
            // optTwoPlayer
            // 
            optTwoPlayer.Anchor = AnchorStyles.Left;
            optTwoPlayer.AutoSize = true;
            optTwoPlayer.Checked = true;
            optTwoPlayer.Location = new Point(121, 3);
            optTwoPlayer.Name = "optTwoPlayer";
            optTwoPlayer.Size = new Size(153, 35);
            optTwoPlayer.TabIndex = 1;
            optTwoPlayer.TabStop = true;
            optTwoPlayer.Text = "2 &Players";
            optTwoPlayer.UseVisualStyleBackColor = true;
            // 
            // optPlayComputer
            // 
            optPlayComputer.Anchor = AnchorStyles.Left;
            optPlayComputer.AutoSize = true;
            optPlayComputer.Location = new Point(280, 3);
            optPlayComputer.Name = "optPlayComputer";
            optPlayComputer.Size = new Size(324, 35);
            optPlayComputer.TabIndex = 2;
            optPlayComputer.Text = "Play &Against Computer";
            optPlayComputer.UseVisualStyleBackColor = true;
            // 
            // lblStatus
            // 
            lblStatus.AutoSize = true;
            lblStatus.BackColor = SystemColors.Info;
            lblStatus.BorderStyle = BorderStyle.FixedSingle;
            tblToolBar.SetColumnSpan(lblStatus, 4);
            lblStatus.Dock = DockStyle.Fill;
            lblStatus.Location = new Point(3, 41);
            lblStatus.Name = "lblStatus";
            lblStatus.Size = new Size(1114, 41);
            lblStatus.TabIndex = 3;
            lblStatus.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // tblSpots
            // 
            tblSpots.ColumnCount = 3;
            tblSpots.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tblSpots.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tblSpots.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tblSpots.Controls.Add(btn2, 1, 0);
            tblSpots.Controls.Add(btn3, 2, 0);
            tblSpots.Controls.Add(btn6, 2, 1);
            tblSpots.Controls.Add(btn5, 1, 1);
            tblSpots.Controls.Add(btn8, 1, 2);
            tblSpots.Controls.Add(btn9, 2, 2);
            tblSpots.Controls.Add(btn1, 0, 0);
            tblSpots.Controls.Add(btn4, 0, 1);
            tblSpots.Controls.Add(btn7, 0, 2);
            tblSpots.Dock = DockStyle.Fill;
            tblSpots.Location = new Point(3, 112);
            tblSpots.Name = "tblSpots";
            tblSpots.RowCount = 3;
            tblSpots.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSpots.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSpots.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSpots.Size = new Size(1120, 799);
            tblSpots.TabIndex = 1;
            // 
            // btn2
            // 
            btn2.Dock = DockStyle.Fill;
            btn2.Location = new Point(376, 3);
            btn2.Name = "btn2";
            btn2.Size = new Size(367, 260);
            btn2.TabIndex = 1;
            btn2.UseVisualStyleBackColor = true;
            // 
            // btn3
            // 
            btn3.Dock = DockStyle.Fill;
            btn3.Location = new Point(749, 3);
            btn3.Name = "btn3";
            btn3.Size = new Size(368, 260);
            btn3.TabIndex = 2;
            btn3.UseVisualStyleBackColor = true;
            // 
            // btn6
            // 
            btn6.Dock = DockStyle.Fill;
            btn6.Location = new Point(749, 269);
            btn6.Name = "btn6";
            btn6.Size = new Size(368, 260);
            btn6.TabIndex = 5;
            btn6.UseVisualStyleBackColor = true;
            // 
            // btn5
            // 
            btn5.Dock = DockStyle.Fill;
            btn5.Location = new Point(376, 269);
            btn5.Name = "btn5";
            btn5.Size = new Size(367, 260);
            btn5.TabIndex = 4;
            btn5.UseVisualStyleBackColor = true;
            // 
            // btn8
            // 
            btn8.Dock = DockStyle.Fill;
            btn8.Location = new Point(376, 535);
            btn8.Name = "btn8";
            btn8.Size = new Size(367, 261);
            btn8.TabIndex = 7;
            btn8.UseVisualStyleBackColor = true;
            // 
            // btn9
            // 
            btn9.Dock = DockStyle.Fill;
            btn9.Location = new Point(749, 535);
            btn9.Name = "btn9";
            btn9.Size = new Size(368, 261);
            btn9.TabIndex = 8;
            btn9.UseVisualStyleBackColor = true;
            // 
            // btn1
            // 
            btn1.Dock = DockStyle.Fill;
            btn1.Location = new Point(3, 3);
            btn1.Name = "btn1";
            btn1.Size = new Size(367, 260);
            btn1.TabIndex = 0;
            btn1.UseVisualStyleBackColor = true;
            // 
            // btn4
            // 
            btn4.Dock = DockStyle.Fill;
            btn4.Location = new Point(3, 269);
            btn4.Name = "btn4";
            btn4.Size = new Size(367, 260);
            btn4.TabIndex = 3;
            btn4.UseVisualStyleBackColor = true;
            // 
            // btn7
            // 
            btn7.Dock = DockStyle.Fill;
            btn7.Location = new Point(3, 535);
            btn7.Name = "btn7";
            btn7.Size = new Size(367, 261);
            btn7.TabIndex = 6;
            btn7.UseVisualStyleBackColor = true;
            // 
            // lblName
            // 
            lblName.BackColor = SystemColors.ActiveCaption;
            lblName.Dock = DockStyle.Fill;
            lblName.Location = new Point(3, 914);
            lblName.Name = "lblName";
            lblName.Size = new Size(1120, 41);
            lblName.TabIndex = 2;
            lblName.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // TicTacToeControls
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "TicTacToeControls";
            Size = new Size(1126, 955);
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tblToolBar.ResumeLayout(false);
            tblToolBar.PerformLayout();
            tblSpots.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        protected TableLayoutPanel tblMain;
        protected TableLayoutPanel tblToolBar;
        protected Button btnStart;
        protected RadioButton optTwoPlayer;
        protected RadioButton optPlayComputer;
        protected Label lblStatus;
        protected TableLayoutPanel tblSpots;
        protected Button btn2;
        protected Button btn3;
        protected Button btn6;
        protected Button btn5;
        protected Button btn8;
        protected Button btn9;
        protected Button btn1;
        protected Button btn4;
        protected Button btn7;
        protected Label lblName;
    }
}
