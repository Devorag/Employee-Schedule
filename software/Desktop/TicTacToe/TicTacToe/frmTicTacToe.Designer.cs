namespace TicTacToe
{
    partial class frmTicTacToe
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
            ticTacToeControldg1 = new TicTacToeControlDG();
            ticTacToeContolMe1 = new TicTacToeContolMe();
            tblMain.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 50F));
            tblMain.Controls.Add(ticTacToeControldg1, 0, 0);
            tblMain.Controls.Add(ticTacToeContolMe1, 1, 0);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 1;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tblMain.Size = new Size(1557, 1035);
            tblMain.TabIndex = 0;
            // 
            // ticTacToeControldg1
            // 
            ticTacToeControldg1.Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            ticTacToeControldg1.Location = new Point(4, 5);
            ticTacToeControldg1.Margin = new Padding(4, 5, 4, 5);
            ticTacToeControldg1.Name = "ticTacToeControldg1";
            ticTacToeControldg1.Size = new Size(770, 1025);
            ticTacToeControldg1.TabIndex = 0;
            // 
            // ticTacToeContolMe1
            // 
            ticTacToeContolMe1.Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            ticTacToeContolMe1.Location = new Point(782, 5);
            ticTacToeContolMe1.Margin = new Padding(4, 5, 4, 5);
            ticTacToeContolMe1.Name = "ticTacToeContolMe1";
            ticTacToeContolMe1.Size = new Size(771, 1025);
            ticTacToeContolMe1.TabIndex = 1;
            // 
            // frmTicTacToe
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1557, 1035);
            Controls.Add(tblMain);
            Name = "frmTicTacToe";
            Text = "Tic Tac Toe";
            tblMain.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private TicTacToeControlDG ticTacToeControldg1;
        private TicTacToeContolMe ticTacToeContolMe1;
    }
}