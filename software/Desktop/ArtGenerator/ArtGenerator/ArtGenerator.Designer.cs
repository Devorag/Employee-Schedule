namespace ArtGenerator
{
    partial class frmArtGenerator
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
            tableLayoutPanel9 = new TableLayoutPanel();
            btnStart = new Button();
            btnClear = new Button();
            btnRefresh = new Button();
            tblColors = new TableLayoutPanel();
            lblBlue = new Label();
            lblMinBlue = new Label();
            txtMinBlue = new TextBox();
            lblMaxBlue = new Label();
            txtMaxBlue = new TextBox();
            lblGreen = new Label();
            lblMinGreen = new Label();
            txtMinGreen = new TextBox();
            lblMaxGreen = new Label();
            txtMaxGreen = new TextBox();
            lblRed = new Label();
            lblMinRed = new Label();
            txtMinRed = new TextBox();
            lblMaxRed = new Label();
            txtMaxRed = new TextBox();
            lblColor = new Label();
            tblSize = new TableLayoutPanel();
            lblWidth = new Label();
            lblHeight = new Label();
            lblMinWidth = new Label();
            lblMinHeight = new Label();
            txtMinWidth = new TextBox();
            txtMinHeight = new TextBox();
            lblMaxWidth = new Label();
            lblMaxHeight = new Label();
            txtMaxWidth = new TextBox();
            txtMaxHeight = new TextBox();
            label1 = new Label();
            tblTitle = new TableLayoutPanel();
            lblShapes = new Label();
            lblTitle = new Label();
            tblShape1 = new TableLayoutPanel();
            tblShapes = new TableLayoutPanel();
            optSeconds = new RadioButton();
            optMilli = new RadioButton();
            optSpecific = new RadioButton();
            tblNum = new TableLayoutPanel();
            txtMilli = new TextBox();
            txtSeconds = new TextBox();
            txtShapes = new TextBox();
            tblMain.SuspendLayout();
            tableLayoutPanel9.SuspendLayout();
            tblColors.SuspendLayout();
            tblSize.SuspendLayout();
            tblTitle.SuspendLayout();
            tblShapes.SuspendLayout();
            tblNum.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.BackColor = SystemColors.Window;
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 45.14673F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 54.85327F));
            tblMain.Controls.Add(tableLayoutPanel9, 0, 4);
            tblMain.Controls.Add(tblColors, 0, 2);
            tblMain.Controls.Add(tblSize, 0, 3);
            tblMain.Controls.Add(tblTitle, 0, 0);
            tblMain.Controls.Add(tblShape1, 1, 1);
            tblMain.Controls.Add(tblShapes, 0, 1);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 5;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 8.744491F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 26.1452446F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 32.2538147F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20.5352821F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 12.3211689F));
            tblMain.Size = new Size(1329, 920);
            tblMain.TabIndex = 0;
            tblMain.Paint += tblMain_Paint;
            // 
            // tableLayoutPanel9
            // 
            tableLayoutPanel9.ColumnCount = 3;
            tableLayoutPanel9.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tableLayoutPanel9.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tableLayoutPanel9.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333321F));
            tableLayoutPanel9.Controls.Add(btnStart, 0, 0);
            tableLayoutPanel9.Controls.Add(btnClear, 1, 0);
            tableLayoutPanel9.Controls.Add(btnRefresh, 2, 0);
            tableLayoutPanel9.Dock = DockStyle.Fill;
            tableLayoutPanel9.Location = new Point(3, 807);
            tableLayoutPanel9.Name = "tableLayoutPanel9";
            tableLayoutPanel9.RowCount = 1;
            tableLayoutPanel9.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tableLayoutPanel9.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tableLayoutPanel9.Size = new Size(594, 110);
            tableLayoutPanel9.TabIndex = 0;
            // 
            // btnStart
            // 
            btnStart.Dock = DockStyle.Fill;
            btnStart.Location = new Point(3, 3);
            btnStart.Name = "btnStart";
            btnStart.Size = new Size(192, 104);
            btnStart.TabIndex = 0;
            btnStart.Text = "Start/Stop";
            btnStart.UseVisualStyleBackColor = true;
            // 
            // btnClear
            // 
            btnClear.Dock = DockStyle.Fill;
            btnClear.Location = new Point(201, 3);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(192, 104);
            btnClear.TabIndex = 1;
            btnClear.Text = "Clear Shapes";
            btnClear.UseVisualStyleBackColor = true;
            // 
            // btnRefresh
            // 
            btnRefresh.Dock = DockStyle.Fill;
            btnRefresh.Location = new Point(399, 3);
            btnRefresh.Name = "btnRefresh";
            btnRefresh.Size = new Size(192, 104);
            btnRefresh.TabIndex = 2;
            btnRefresh.Text = "Refresh Color";
            btnRefresh.UseVisualStyleBackColor = true;
            // 
            // tblColors
            // 
            tblColors.ColumnCount = 5;
            tblColors.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.33333F));
            tblColors.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 13.3333349F));
            tblColors.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 20.0000019F));
            tblColors.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 13.3333349F));
            tblColors.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 20F));
            tblColors.Controls.Add(lblBlue, 0, 3);
            tblColors.Controls.Add(lblMinBlue, 1, 3);
            tblColors.Controls.Add(txtMinBlue, 2, 3);
            tblColors.Controls.Add(lblMaxBlue, 3, 3);
            tblColors.Controls.Add(txtMaxBlue, 4, 3);
            tblColors.Controls.Add(lblGreen, 0, 2);
            tblColors.Controls.Add(lblMinGreen, 1, 2);
            tblColors.Controls.Add(txtMinGreen, 2, 2);
            tblColors.Controls.Add(lblMaxGreen, 3, 2);
            tblColors.Controls.Add(txtMaxGreen, 4, 2);
            tblColors.Controls.Add(lblRed, 0, 1);
            tblColors.Controls.Add(lblMinRed, 1, 1);
            tblColors.Controls.Add(txtMinRed, 2, 1);
            tblColors.Controls.Add(lblMaxRed, 3, 1);
            tblColors.Controls.Add(txtMaxRed, 4, 1);
            tblColors.Controls.Add(lblColor, 0, 0);
            tblColors.Dock = DockStyle.Fill;
            tblColors.Location = new Point(3, 323);
            tblColors.Name = "tblColors";
            tblColors.RowCount = 4;
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 12.7302933F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.09087F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.09087F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.087965F));
            tblColors.Size = new Size(594, 290);
            tblColors.TabIndex = 5;
            // 
            // lblBlue
            // 
            lblBlue.AutoSize = true;
            lblBlue.Dock = DockStyle.Fill;
            lblBlue.Location = new Point(3, 204);
            lblBlue.Name = "lblBlue";
            lblBlue.Size = new Size(191, 86);
            lblBlue.TabIndex = 18;
            lblBlue.Text = "Blue:";
            lblBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinBlue
            // 
            lblMinBlue.AutoSize = true;
            lblMinBlue.Dock = DockStyle.Fill;
            lblMinBlue.Location = new Point(200, 204);
            lblMinBlue.Name = "lblMinBlue";
            lblMinBlue.Size = new Size(73, 86);
            lblMinBlue.TabIndex = 21;
            lblMinBlue.Text = "Min";
            lblMinBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinBlue
            // 
            txtMinBlue.BorderStyle = BorderStyle.FixedSingle;
            txtMinBlue.Dock = DockStyle.Fill;
            txtMinBlue.Location = new Point(279, 207);
            txtMinBlue.Multiline = true;
            txtMinBlue.Name = "txtMinBlue";
            txtMinBlue.Size = new Size(112, 80);
            txtMinBlue.TabIndex = 8;
            // 
            // lblMaxBlue
            // 
            lblMaxBlue.AutoSize = true;
            lblMaxBlue.Dock = DockStyle.Fill;
            lblMaxBlue.Location = new Point(397, 204);
            lblMaxBlue.Name = "lblMaxBlue";
            lblMaxBlue.Size = new Size(73, 86);
            lblMaxBlue.TabIndex = 24;
            lblMaxBlue.Text = "Max";
            lblMaxBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxBlue
            // 
            txtMaxBlue.BorderStyle = BorderStyle.FixedSingle;
            txtMaxBlue.Dock = DockStyle.Fill;
            txtMaxBlue.Location = new Point(476, 207);
            txtMaxBlue.Multiline = true;
            txtMaxBlue.Name = "txtMaxBlue";
            txtMaxBlue.Size = new Size(115, 80);
            txtMaxBlue.TabIndex = 12;
            // 
            // lblGreen
            // 
            lblGreen.AutoSize = true;
            lblGreen.Dock = DockStyle.Fill;
            lblGreen.Location = new Point(3, 120);
            lblGreen.Name = "lblGreen";
            lblGreen.Size = new Size(191, 84);
            lblGreen.TabIndex = 17;
            lblGreen.Text = "Green:";
            lblGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinGreen
            // 
            lblMinGreen.AutoSize = true;
            lblMinGreen.Dock = DockStyle.Fill;
            lblMinGreen.Location = new Point(200, 120);
            lblMinGreen.Name = "lblMinGreen";
            lblMinGreen.Size = new Size(73, 84);
            lblMinGreen.TabIndex = 20;
            lblMinGreen.Text = "Min";
            lblMinGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinGreen
            // 
            txtMinGreen.BorderStyle = BorderStyle.FixedSingle;
            txtMinGreen.Dock = DockStyle.Fill;
            txtMinGreen.Location = new Point(279, 123);
            txtMinGreen.Multiline = true;
            txtMinGreen.Name = "txtMinGreen";
            txtMinGreen.Size = new Size(112, 78);
            txtMinGreen.TabIndex = 7;
            // 
            // lblMaxGreen
            // 
            lblMaxGreen.AutoSize = true;
            lblMaxGreen.Dock = DockStyle.Fill;
            lblMaxGreen.Location = new Point(397, 120);
            lblMaxGreen.Name = "lblMaxGreen";
            lblMaxGreen.Size = new Size(73, 84);
            lblMaxGreen.TabIndex = 23;
            lblMaxGreen.Text = "Max";
            lblMaxGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxGreen
            // 
            txtMaxGreen.BorderStyle = BorderStyle.FixedSingle;
            txtMaxGreen.Dock = DockStyle.Fill;
            txtMaxGreen.Location = new Point(476, 123);
            txtMaxGreen.Multiline = true;
            txtMaxGreen.Name = "txtMaxGreen";
            txtMaxGreen.Size = new Size(115, 78);
            txtMaxGreen.TabIndex = 13;
            // 
            // lblRed
            // 
            lblRed.AutoSize = true;
            lblRed.Dock = DockStyle.Fill;
            lblRed.Location = new Point(3, 36);
            lblRed.Name = "lblRed";
            lblRed.Size = new Size(191, 84);
            lblRed.TabIndex = 16;
            lblRed.Text = "Red:";
            lblRed.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinRed
            // 
            lblMinRed.AutoSize = true;
            lblMinRed.Dock = DockStyle.Fill;
            lblMinRed.Location = new Point(200, 36);
            lblMinRed.Name = "lblMinRed";
            lblMinRed.Size = new Size(73, 84);
            lblMinRed.TabIndex = 19;
            lblMinRed.Text = "Min";
            lblMinRed.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinRed
            // 
            txtMinRed.BorderStyle = BorderStyle.FixedSingle;
            txtMinRed.Dock = DockStyle.Fill;
            txtMinRed.Location = new Point(279, 39);
            txtMinRed.Multiline = true;
            txtMinRed.Name = "txtMinRed";
            txtMinRed.Size = new Size(112, 78);
            txtMinRed.TabIndex = 15;
            // 
            // lblMaxRed
            // 
            lblMaxRed.AutoSize = true;
            lblMaxRed.Dock = DockStyle.Fill;
            lblMaxRed.Location = new Point(397, 36);
            lblMaxRed.Name = "lblMaxRed";
            lblMaxRed.Size = new Size(73, 84);
            lblMaxRed.TabIndex = 22;
            lblMaxRed.Text = "Max";
            lblMaxRed.TextAlign = ContentAlignment.MiddleLeft;
            lblMaxRed.Click += label8_Click;
            // 
            // txtMaxRed
            // 
            txtMaxRed.BorderStyle = BorderStyle.FixedSingle;
            txtMaxRed.Dock = DockStyle.Fill;
            txtMaxRed.Location = new Point(476, 39);
            txtMaxRed.Multiline = true;
            txtMaxRed.Name = "txtMaxRed";
            txtMaxRed.Size = new Size(115, 78);
            txtMaxRed.TabIndex = 14;
            // 
            // lblColor
            // 
            lblColor.AutoSize = true;
            tblColors.SetColumnSpan(lblColor, 4);
            lblColor.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            lblColor.Location = new Point(3, 0);
            lblColor.Name = "lblColor";
            lblColor.Size = new Size(228, 32);
            lblColor.TabIndex = 0;
            lblColor.Text = "Color Range (RGB)";
            lblColor.Click += lblColor_Click;
            // 
            // tblSize
            // 
            tblSize.ColumnCount = 5;
            tblSize.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.6388168F));
            tblSize.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 12.9952793F));
            tblSize.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 20.1853085F));
            tblSize.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 12.9952793F));
            tblSize.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 20.1853085F));
            tblSize.Controls.Add(lblWidth, 0, 2);
            tblSize.Controls.Add(lblHeight, 0, 1);
            tblSize.Controls.Add(lblMinWidth, 1, 2);
            tblSize.Controls.Add(lblMinHeight, 1, 1);
            tblSize.Controls.Add(txtMinWidth, 2, 2);
            tblSize.Controls.Add(txtMinHeight, 2, 1);
            tblSize.Controls.Add(lblMaxWidth, 3, 2);
            tblSize.Controls.Add(lblMaxHeight, 3, 1);
            tblSize.Controls.Add(txtMaxWidth, 4, 2);
            tblSize.Controls.Add(txtMaxHeight, 4, 1);
            tblSize.Controls.Add(label1, 0, 0);
            tblSize.Dock = DockStyle.Fill;
            tblSize.Location = new Point(3, 619);
            tblSize.Name = "tblSize";
            tblSize.RowCount = 3;
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.Size = new Size(594, 182);
            tblSize.TabIndex = 7;
            // 
            // lblWidth
            // 
            lblWidth.AutoSize = true;
            lblWidth.Dock = DockStyle.Fill;
            lblWidth.Location = new Point(3, 120);
            lblWidth.Name = "lblWidth";
            lblWidth.Size = new Size(193, 62);
            lblWidth.TabIndex = 11;
            lblWidth.Text = "Width:";
            lblWidth.TextAlign = ContentAlignment.MiddleLeft;
            lblWidth.Click += label12_Click;
            // 
            // lblHeight
            // 
            lblHeight.AutoSize = true;
            lblHeight.Dock = DockStyle.Fill;
            lblHeight.Location = new Point(3, 60);
            lblHeight.Name = "lblHeight";
            lblHeight.Size = new Size(193, 60);
            lblHeight.TabIndex = 10;
            lblHeight.Text = "Height:";
            lblHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinWidth
            // 
            lblMinWidth.AutoSize = true;
            lblMinWidth.Dock = DockStyle.Fill;
            lblMinWidth.Location = new Point(202, 120);
            lblMinWidth.Name = "lblMinWidth";
            lblMinWidth.Size = new Size(71, 62);
            lblMinWidth.TabIndex = 13;
            lblMinWidth.Text = "Min";
            lblMinWidth.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinHeight
            // 
            lblMinHeight.AutoSize = true;
            lblMinHeight.Dock = DockStyle.Fill;
            lblMinHeight.Location = new Point(202, 60);
            lblMinHeight.Name = "lblMinHeight";
            lblMinHeight.Size = new Size(71, 60);
            lblMinHeight.TabIndex = 12;
            lblMinHeight.Text = "Min";
            lblMinHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinWidth
            // 
            txtMinWidth.BorderStyle = BorderStyle.FixedSingle;
            txtMinWidth.Dock = DockStyle.Fill;
            txtMinWidth.Location = new Point(279, 123);
            txtMinWidth.Multiline = true;
            txtMinWidth.Name = "txtMinWidth";
            txtMinWidth.Size = new Size(113, 56);
            txtMinWidth.TabIndex = 3;
            // 
            // txtMinHeight
            // 
            txtMinHeight.BorderStyle = BorderStyle.FixedSingle;
            txtMinHeight.Dock = DockStyle.Fill;
            txtMinHeight.Location = new Point(279, 63);
            txtMinHeight.Multiline = true;
            txtMinHeight.Name = "txtMinHeight";
            txtMinHeight.Size = new Size(113, 54);
            txtMinHeight.TabIndex = 2;
            // 
            // lblMaxWidth
            // 
            lblMaxWidth.AutoSize = true;
            lblMaxWidth.Dock = DockStyle.Fill;
            lblMaxWidth.Location = new Point(398, 120);
            lblMaxWidth.Name = "lblMaxWidth";
            lblMaxWidth.Size = new Size(71, 62);
            lblMaxWidth.TabIndex = 15;
            lblMaxWidth.Text = "Max";
            lblMaxWidth.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMaxHeight
            // 
            lblMaxHeight.AutoSize = true;
            lblMaxHeight.Dock = DockStyle.Fill;
            lblMaxHeight.Location = new Point(398, 60);
            lblMaxHeight.Name = "lblMaxHeight";
            lblMaxHeight.Size = new Size(71, 60);
            lblMaxHeight.TabIndex = 14;
            lblMaxHeight.Text = "Max";
            lblMaxHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxWidth
            // 
            txtMaxWidth.BorderStyle = BorderStyle.FixedSingle;
            txtMaxWidth.Dock = DockStyle.Fill;
            txtMaxWidth.Location = new Point(475, 123);
            txtMaxWidth.Multiline = true;
            txtMaxWidth.Name = "txtMaxWidth";
            txtMaxWidth.Size = new Size(116, 56);
            txtMaxWidth.TabIndex = 5;
            // 
            // txtMaxHeight
            // 
            txtMaxHeight.BorderStyle = BorderStyle.FixedSingle;
            txtMaxHeight.Location = new Point(475, 63);
            txtMaxHeight.Multiline = true;
            txtMaxHeight.Name = "txtMaxHeight";
            txtMaxHeight.Size = new Size(116, 54);
            txtMaxHeight.TabIndex = 4;
            // 
            // label1
            // 
            label1.AutoSize = true;
            tblSize.SetColumnSpan(label1, 3);
            label1.Dock = DockStyle.Fill;
            label1.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Point);
            label1.Location = new Point(3, 0);
            label1.Name = "label1";
            label1.Size = new Size(389, 60);
            label1.TabIndex = 16;
            label1.Text = "Size";
            // 
            // tblTitle
            // 
            tblTitle.ColumnCount = 1;
            tblTitle.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblTitle.Controls.Add(lblShapes, 0, 1);
            tblTitle.Controls.Add(lblTitle, 0, 0);
            tblTitle.Dock = DockStyle.Fill;
            tblTitle.Location = new Point(3, 3);
            tblTitle.Name = "tblTitle";
            tblTitle.RowCount = 2;
            tblTitle.RowStyles.Add(new RowStyle(SizeType.Percent, 55F));
            tblTitle.RowStyles.Add(new RowStyle(SizeType.Percent, 45F));
            tblTitle.Size = new Size(594, 74);
            tblTitle.TabIndex = 8;
            // 
            // lblShapes
            // 
            lblShapes.AutoSize = true;
            lblShapes.BackColor = SystemColors.Window;
            lblShapes.Dock = DockStyle.Fill;
            lblShapes.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            lblShapes.Location = new Point(3, 40);
            lblShapes.Name = "lblShapes";
            lblShapes.Size = new Size(588, 34);
            lblShapes.TabIndex = 1;
            lblShapes.Text = "Shapes";
            // 
            // lblTitle
            // 
            lblTitle.AutoSize = true;
            lblTitle.Dock = DockStyle.Fill;
            lblTitle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Point);
            lblTitle.Location = new Point(3, 0);
            lblTitle.Name = "lblTitle";
            lblTitle.Size = new Size(588, 40);
            lblTitle.TabIndex = 2;
            lblTitle.Text = "Art Generator Settings";
            lblTitle.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // tblShape1
            // 
            tblShape1.AutoSize = true;
            tblShape1.ColumnCount = 2;
            tblShape1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 60F));
            tblShape1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 40F));
            tblShape1.Location = new Point(603, 83);
            tblShape1.Name = "tblShape1";
            tblShape1.RowCount = 1;
            tblShape1.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblShape1.Size = new Size(0, 0);
            tblShape1.TabIndex = 1;
            // 
            // tblShapes
            // 
            tblShapes.ColumnCount = 2;
            tblShapes.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 60F));
            tblShapes.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 40F));
            tblShapes.Controls.Add(optSeconds, 0, 2);
            tblShapes.Controls.Add(optMilli, 0, 1);
            tblShapes.Controls.Add(optSpecific, 0, 0);
            tblShapes.Controls.Add(tblNum, 1, 0);
            tblShapes.Dock = DockStyle.Fill;
            tblShapes.Location = new Point(3, 83);
            tblShapes.Name = "tblShapes";
            tblShapes.RowCount = 3;
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.Size = new Size(594, 234);
            tblShapes.TabIndex = 9;
            // 
            // optSeconds
            // 
            optSeconds.AutoSize = true;
            optSeconds.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optSeconds.Location = new Point(3, 157);
            optSeconds.Name = "optSeconds";
            optSeconds.Size = new Size(284, 34);
            optSeconds.TabIndex = 0;
            optSeconds.TabStop = true;
            optSeconds.Text = "Add shapes for x seconds";
            optSeconds.UseVisualStyleBackColor = true;
            // 
            // optMilli
            // 
            optMilli.AutoSize = true;
            optMilli.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optMilli.Location = new Point(3, 80);
            optMilli.Name = "optMilli";
            optMilli.Size = new Size(340, 34);
            optMilli.TabIndex = 0;
            optMilli.TabStop = true;
            optMilli.Text = "Add shape every x milliseconds";
            optMilli.UseVisualStyleBackColor = true;
            // 
            // optSpecific
            // 
            optSpecific.AutoSize = true;
            optSpecific.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optSpecific.Location = new Point(3, 3);
            optSpecific.Name = "optSpecific";
            optSpecific.Size = new Size(299, 34);
            optSpecific.TabIndex = 0;
            optSpecific.TabStop = true;
            optSpecific.Text = "Specific Number of Shapes";
            optSpecific.TextAlign = ContentAlignment.MiddleCenter;
            optSpecific.UseVisualStyleBackColor = true;
            // 
            // tblNum
            // 
            tblNum.ColumnCount = 1;
            tblNum.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblNum.Controls.Add(txtMilli, 0, 1);
            tblNum.Controls.Add(txtSeconds, 0, 2);
            tblNum.Controls.Add(txtShapes, 0, 0);
            tblNum.Dock = DockStyle.Fill;
            tblNum.Location = new Point(359, 3);
            tblNum.Name = "tblNum";
            tblNum.RowCount = 3;
            tblShapes.SetRowSpan(tblNum, 3);
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.Size = new Size(232, 228);
            tblNum.TabIndex = 1;
            // 
            // txtMilli
            // 
            txtMilli.BackColor = SystemColors.Window;
            txtMilli.BorderStyle = BorderStyle.FixedSingle;
            txtMilli.Dock = DockStyle.Fill;
            txtMilli.Location = new Point(3, 78);
            txtMilli.Multiline = true;
            txtMilli.Name = "txtMilli";
            txtMilli.PlaceholderText = "# of milliseconds";
            txtMilli.Size = new Size(226, 69);
            txtMilli.TabIndex = 1;
            txtMilli.TextAlign = HorizontalAlignment.Center;
            txtMilli.TextChanged += txtMilli_TextChanged;
            // 
            // txtSeconds
            // 
            txtSeconds.BorderStyle = BorderStyle.FixedSingle;
            txtSeconds.Dock = DockStyle.Fill;
            txtSeconds.Location = new Point(3, 153);
            txtSeconds.Multiline = true;
            txtSeconds.Name = "txtSeconds";
            txtSeconds.PlaceholderText = "# of seconds";
            txtSeconds.Size = new Size(226, 72);
            txtSeconds.TabIndex = 1;
            txtSeconds.TextAlign = HorizontalAlignment.Center;
            // 
            // txtShapes
            // 
            txtShapes.BackColor = SystemColors.Window;
            txtShapes.BorderStyle = BorderStyle.FixedSingle;
            txtShapes.Dock = DockStyle.Fill;
            txtShapes.Location = new Point(3, 3);
            txtShapes.Multiline = true;
            txtShapes.Name = "txtShapes";
            txtShapes.PlaceholderText = "# of shapes";
            txtShapes.Size = new Size(226, 69);
            txtShapes.TabIndex = 1;
            txtShapes.TextAlign = HorizontalAlignment.Center;
            txtShapes.TextChanged += txtShapes_TextChanged;
            // 
            // frmArtGenerator
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1329, 920);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmArtGenerator";
            Text = "ArtGenerator";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            tableLayoutPanel9.ResumeLayout(false);
            tblColors.ResumeLayout(false);
            tblColors.PerformLayout();
            tblSize.ResumeLayout(false);
            tblSize.PerformLayout();
            tblTitle.ResumeLayout(false);
            tblTitle.PerformLayout();
            tblShapes.ResumeLayout(false);
            tblShapes.PerformLayout();
            tblNum.ResumeLayout(false);
            tblNum.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private TableLayoutPanel tableLayoutPanel9;
        private Button btnStart;
        private Button btnClear;
        private Button btnRefresh;
        private TableLayoutPanel tblShape1;
        private RadioButton optSpecific;
        private TextBox txtShapes;
        private TableLayoutPanel tblColors;
        private TextBox txtMinGreen;
        private TextBox txtMinBlue;
        private TextBox txtMaxBlue;
        private TextBox txtMaxGreen;
        private TextBox txtMaxRed;
        private TableLayoutPanel tblSize;
        private TextBox txtMinHeight;
        private TextBox txtMinWidth;
        private TextBox txtMaxHeight;
        private TextBox txtMaxWidth;
        private TableLayoutPanel tblTitle;
        private Label lblShapes;
        private TextBox txtMinRed;
        private TextBox txtSeconds;
        private RadioButton optSeconds;
        private RadioButton optMilli;
        private TextBox txtMilli;
        private TableLayoutPanel tblShapes;
        private Label lblRed;
        private Label lblGreen;
        private Label lblBlue;
        private Label lblMinRed;
        private Label lblMinGreen;
        private Label lblMinBlue;
        private Label lblMaxRed;
        private Label lblMaxGreen;
        private Label lblMaxBlue;
        private Label lblHeight;
        private Label lblWidth;
        private Label lblMinHeight;
        private Label lblMinWidth;
        private Label lblMaxHeight;
        private Label lblMaxWidth;
        private Label lblTitle;
        private Label lblColor;
        private TableLayoutPanel tblNum;
        private Label label1;
    }
}