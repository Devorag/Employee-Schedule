﻿namespace RecordKeeperWinForm
{
    partial class frmOlympicsSummary
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
            gData = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)gData).BeginInit();
            SuspendLayout();
            // 
            // gData
            // 
            gData.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            gData.Dock = DockStyle.Fill;
            gData.Location = new Point(0, 0);
            gData.Name = "gData";
            gData.RowHeadersWidth = 62;
            gData.RowTemplate.Height = 33;
            gData.Size = new Size(800, 450);
            gData.TabIndex = 0;
            // 
            // frmOlympicsSummary
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(gData);
            Name = "frmOlympicsSummary";
            Text = "OlympicsSummary";
            ((System.ComponentModel.ISupportInitialize)gData).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView gData;
    }
}