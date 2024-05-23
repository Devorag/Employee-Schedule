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
            tblShapes = new TableLayoutPanel();
            optSeconds = new RadioButton();
            optMilli = new RadioButton();
            optSpecific = new RadioButton();
            tblNum = new TableLayoutPanel();
            txtSeconds = new TextBox();
            txtMilli = new TextBox();
            txtSpecific = new TextBox();
            tblTitle = new TableLayoutPanel();
            lblShapes = new Label();
            lblTitle = new Label();
            tblSize = new TableLayoutPanel();
            lblWidth = new Label();
            lblHeight = new Label();
            lblMinHeight = new Label();
            txtMinWidth = new TextBox();
            txtMinHeight = new TextBox();
            lblMaxWidth = new Label();
            lblMaxHeight = new Label();
            txtMaxWidth = new TextBox();
            txtMaxHeight = new TextBox();
            lblSize = new Label();
            lblMinWidth = new Label();
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
            tblMain = new TableLayoutPanel();
            tblButtons = new TableLayoutPanel();
            btnStart = new Button();
            btnClear = new Button();
            btnRefresh = new Button();
            tblForm = new Panel();
            tblShapes.SuspendLayout();
            tblNum.SuspendLayout();
            tblTitle.SuspendLayout();
            tblSize.SuspendLayout();
            tblColors.SuspendLayout();
            tblMain.SuspendLayout();
            tblButtons.SuspendLayout();
            SuspendLayout();
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
            tblShapes.Location = new Point(3, 91);
            tblShapes.Name = "tblShapes";
            tblShapes.RowCount = 3;
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblShapes.Size = new Size(594, 258);
            tblShapes.TabIndex = 0;
            // 
            // optSeconds
            // 
            optSeconds.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optSeconds.Location = new Point(3, 175);
            optSeconds.Name = "optSeconds";
            optSeconds.Size = new Size(350, 57);
            optSeconds.TabIndex = 2;
            optSeconds.Text = "Add shapes for x seconds";
            optSeconds.UseVisualStyleBackColor = true;
            // 
            // optMilli
            // 
            optMilli.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optMilli.Location = new Point(3, 89);
            optMilli.Name = "optMilli";
            optMilli.Size = new Size(350, 65);
            optMilli.TabIndex = 1;
            optMilli.Text = "Add shape every x milliseconds";
            optMilli.UseVisualStyleBackColor = true;
            // 
            // optSpecific
            // 
            optSpecific.Checked = true;
            optSpecific.Dock = DockStyle.Fill;
            optSpecific.Font = new Font("Segoe UI", 11F, FontStyle.Regular, GraphicsUnit.Point);
            optSpecific.Location = new Point(3, 3);
            optSpecific.Name = "optSpecific";
            optSpecific.Size = new Size(350, 80);
            optSpecific.TabIndex = 0;
            optSpecific.TabStop = true;
            optSpecific.Text = "Specific Number of Shapes";
            optSpecific.UseVisualStyleBackColor = true;
            // 
            // tblNum
            // 
            tblNum.ColumnCount = 1;
            tblNum.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tblNum.Controls.Add(txtSeconds, 0, 2);
            tblNum.Controls.Add(txtMilli, 0, 1);
            tblNum.Controls.Add(txtSpecific, 0, 0);
            tblNum.Dock = DockStyle.Fill;
            tblNum.Location = new Point(359, 3);
            tblNum.Name = "tblNum";
            tblNum.RowCount = 3;
            tblShapes.SetRowSpan(tblNum, 3);
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblNum.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblNum.Size = new Size(232, 252);
            tblNum.TabIndex = 0;
            // 
            // txtSeconds
            // 
            txtSeconds.Dock = DockStyle.Fill;
            txtSeconds.Location = new Point(3, 171);
            txtSeconds.Multiline = true;
            txtSeconds.Name = "txtSeconds";
            txtSeconds.Size = new Size(226, 78);
            txtSeconds.TabIndex = 2;
            txtSeconds.Text = "10";
            txtSeconds.TextAlign = HorizontalAlignment.Center;
            // 
            // txtMilli
            // 
            txtMilli.Dock = DockStyle.Fill;
            txtMilli.Location = new Point(3, 87);
            txtMilli.Multiline = true;
            txtMilli.Name = "txtMilli";
            txtMilli.Size = new Size(226, 78);
            txtMilli.TabIndex = 3;
            txtMilli.Text = "1000";
            txtMilli.TextAlign = HorizontalAlignment.Center;
            // 
            // txtSpecific
            // 
            txtSpecific.Dock = DockStyle.Fill;
            txtSpecific.Location = new Point(3, 3);
            txtSpecific.Multiline = true;
            txtSpecific.Name = "txtSpecific";
            txtSpecific.Size = new Size(226, 78);
            txtSpecific.TabIndex = 4;
            txtSpecific.Text = "10";
            txtSpecific.TextAlign = HorizontalAlignment.Center;
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
            tblTitle.Size = new Size(594, 82);
            tblTitle.TabIndex = 8;
            // 
            // lblShapes
            // 
            lblShapes.AutoSize = true;
            lblShapes.BackColor = SystemColors.Window;
            lblShapes.Dock = DockStyle.Fill;
            lblShapes.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            lblShapes.Location = new Point(3, 45);
            lblShapes.Name = "lblShapes";
            lblShapes.Size = new Size(588, 37);
            lblShapes.TabIndex = 0;
            lblShapes.Text = "Shapes";
            // 
            // lblTitle
            // 
            lblTitle.AutoSize = true;
            lblTitle.Dock = DockStyle.Fill;
            lblTitle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Point);
            lblTitle.Location = new Point(3, 0);
            lblTitle.Name = "lblTitle";
            lblTitle.Size = new Size(588, 45);
            lblTitle.TabIndex = 0;
            lblTitle.Text = "Art Generator Settings";
            lblTitle.TextAlign = ContentAlignment.MiddleCenter;
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
            tblSize.Controls.Add(lblMinHeight, 1, 1);
            tblSize.Controls.Add(txtMinWidth, 2, 2);
            tblSize.Controls.Add(txtMinHeight, 2, 1);
            tblSize.Controls.Add(lblMaxWidth, 3, 2);
            tblSize.Controls.Add(lblMaxHeight, 3, 1);
            tblSize.Controls.Add(txtMaxWidth, 4, 2);
            tblSize.Controls.Add(txtMaxHeight, 4, 1);
            tblSize.Controls.Add(lblSize, 0, 0);
            tblSize.Controls.Add(lblMinWidth, 1, 2);
            tblSize.Dock = DockStyle.Fill;
            tblSize.Location = new Point(3, 678);
            tblSize.Name = "tblSize";
            tblSize.RowCount = 3;
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.RowStyles.Add(new RowStyle(SizeType.Percent, 33.3333321F));
            tblSize.Size = new Size(594, 203);
            tblSize.TabIndex = 2;
            // 
            // lblWidth
            // 
            lblWidth.Dock = DockStyle.Fill;
            lblWidth.Location = new Point(3, 134);
            lblWidth.Name = "lblWidth";
            lblWidth.Size = new Size(193, 69);
            lblWidth.TabIndex = 10;
            lblWidth.Text = "Width:";
            lblWidth.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblHeight
            // 
            lblHeight.AutoSize = true;
            lblHeight.Dock = DockStyle.Fill;
            lblHeight.Location = new Point(3, 67);
            lblHeight.Name = "lblHeight";
            lblHeight.Size = new Size(193, 67);
            lblHeight.TabIndex = 5;
            lblHeight.Text = "Height:";
            lblHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinHeight
            // 
            lblMinHeight.Dock = DockStyle.Fill;
            lblMinHeight.Location = new Point(202, 67);
            lblMinHeight.Name = "lblMinHeight";
            lblMinHeight.Size = new Size(71, 67);
            lblMinHeight.TabIndex = 6;
            lblMinHeight.Text = "Min";
            lblMinHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinWidth
            // 
            txtMinWidth.BorderStyle = BorderStyle.FixedSingle;
            txtMinWidth.Dock = DockStyle.Fill;
            txtMinWidth.Location = new Point(279, 137);
            txtMinWidth.Multiline = true;
            txtMinWidth.Name = "txtMinWidth";
            txtMinWidth.Size = new Size(113, 63);
            txtMinWidth.TabIndex = 2;
            txtMinWidth.Text = "100";
            // 
            // txtMinHeight
            // 
            txtMinHeight.BorderStyle = BorderStyle.FixedSingle;
            txtMinHeight.Dock = DockStyle.Fill;
            txtMinHeight.Location = new Point(279, 70);
            txtMinHeight.Multiline = true;
            txtMinHeight.Name = "txtMinHeight";
            txtMinHeight.Size = new Size(113, 61);
            txtMinHeight.TabIndex = 0;
            txtMinHeight.Text = "100";
            // 
            // lblMaxWidth
            // 
            lblMaxWidth.Dock = DockStyle.Fill;
            lblMaxWidth.Location = new Point(398, 134);
            lblMaxWidth.Name = "lblMaxWidth";
            lblMaxWidth.Size = new Size(71, 69);
            lblMaxWidth.TabIndex = 3;
            lblMaxWidth.Text = "Max";
            lblMaxWidth.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMaxHeight
            // 
            lblMaxHeight.Dock = DockStyle.Fill;
            lblMaxHeight.Location = new Point(398, 67);
            lblMaxHeight.Name = "lblMaxHeight";
            lblMaxHeight.Size = new Size(71, 67);
            lblMaxHeight.TabIndex = 8;
            lblMaxHeight.Text = "Max";
            lblMaxHeight.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxWidth
            // 
            txtMaxWidth.BorderStyle = BorderStyle.FixedSingle;
            txtMaxWidth.Dock = DockStyle.Fill;
            txtMaxWidth.Location = new Point(475, 137);
            txtMaxWidth.Multiline = true;
            txtMaxWidth.Name = "txtMaxWidth";
            txtMaxWidth.Size = new Size(116, 63);
            txtMaxWidth.TabIndex = 3;
            txtMaxWidth.Text = "300";
            // 
            // txtMaxHeight
            // 
            txtMaxHeight.BorderStyle = BorderStyle.FixedSingle;
            txtMaxHeight.Dock = DockStyle.Fill;
            txtMaxHeight.Location = new Point(475, 70);
            txtMaxHeight.Multiline = true;
            txtMaxHeight.Name = "txtMaxHeight";
            txtMaxHeight.Size = new Size(116, 61);
            txtMaxHeight.TabIndex = 1;
            txtMaxHeight.Text = "300";
            // 
            // lblSize
            // 
            tblSize.SetColumnSpan(lblSize, 3);
            lblSize.Dock = DockStyle.Fill;
            lblSize.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Point);
            lblSize.Location = new Point(3, 0);
            lblSize.Name = "lblSize";
            lblSize.Size = new Size(389, 67);
            lblSize.TabIndex = 0;
            lblSize.Text = "Size";
            // 
            // lblMinWidth
            // 
            lblMinWidth.Dock = DockStyle.Fill;
            lblMinWidth.Location = new Point(202, 134);
            lblMinWidth.Name = "lblMinWidth";
            lblMinWidth.Size = new Size(71, 69);
            lblMinWidth.TabIndex = 1;
            lblMinWidth.Text = "Min";
            lblMinWidth.TextAlign = ContentAlignment.MiddleLeft;
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
            tblColors.Location = new Point(3, 355);
            tblColors.Name = "tblColors";
            tblColors.RowCount = 4;
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 12.7302933F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.09087F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.09087F));
            tblColors.RowStyles.Add(new RowStyle(SizeType.Percent, 29.087965F));
            tblColors.Size = new Size(594, 317);
            tblColors.TabIndex = 1;
            // 
            // lblBlue
            // 
            lblBlue.Dock = DockStyle.Fill;
            lblBlue.Location = new Point(3, 224);
            lblBlue.Name = "lblBlue";
            lblBlue.Size = new Size(191, 93);
            lblBlue.TabIndex = 11;
            lblBlue.Text = "Blue:";
            lblBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinBlue
            // 
            lblMinBlue.AutoSize = true;
            lblMinBlue.Dock = DockStyle.Fill;
            lblMinBlue.Location = new Point(200, 224);
            lblMinBlue.Name = "lblMinBlue";
            lblMinBlue.Size = new Size(73, 93);
            lblMinBlue.TabIndex = 12;
            lblMinBlue.Text = "Min";
            lblMinBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinBlue
            // 
            txtMinBlue.BorderStyle = BorderStyle.FixedSingle;
            txtMinBlue.Dock = DockStyle.Fill;
            txtMinBlue.Location = new Point(279, 227);
            txtMinBlue.Multiline = true;
            txtMinBlue.Name = "txtMinBlue";
            txtMinBlue.Size = new Size(112, 87);
            txtMinBlue.TabIndex = 4;
            txtMinBlue.Text = "0";
            txtMinBlue.TextAlign = HorizontalAlignment.Center;
            // 
            // lblMaxBlue
            // 
            lblMaxBlue.AutoSize = true;
            lblMaxBlue.Dock = DockStyle.Fill;
            lblMaxBlue.Location = new Point(397, 224);
            lblMaxBlue.Name = "lblMaxBlue";
            lblMaxBlue.Size = new Size(73, 93);
            lblMaxBlue.TabIndex = 14;
            lblMaxBlue.Text = "Max";
            lblMaxBlue.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxBlue
            // 
            txtMaxBlue.BorderStyle = BorderStyle.FixedSingle;
            txtMaxBlue.Dock = DockStyle.Fill;
            txtMaxBlue.Location = new Point(476, 227);
            txtMaxBlue.Multiline = true;
            txtMaxBlue.Name = "txtMaxBlue";
            txtMaxBlue.Size = new Size(115, 87);
            txtMaxBlue.TabIndex = 5;
            txtMaxBlue.Text = "255";
            txtMaxBlue.TextAlign = HorizontalAlignment.Center;
            // 
            // lblGreen
            // 
            lblGreen.Dock = DockStyle.Fill;
            lblGreen.Location = new Point(3, 132);
            lblGreen.Name = "lblGreen";
            lblGreen.Size = new Size(191, 92);
            lblGreen.TabIndex = 6;
            lblGreen.Text = "Green:";
            lblGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinGreen
            // 
            lblMinGreen.AutoSize = true;
            lblMinGreen.Dock = DockStyle.Fill;
            lblMinGreen.Location = new Point(200, 132);
            lblMinGreen.Name = "lblMinGreen";
            lblMinGreen.Size = new Size(73, 92);
            lblMinGreen.TabIndex = 7;
            lblMinGreen.Text = "Min";
            lblMinGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinGreen
            // 
            txtMinGreen.BorderStyle = BorderStyle.FixedSingle;
            txtMinGreen.Dock = DockStyle.Fill;
            txtMinGreen.Location = new Point(279, 135);
            txtMinGreen.Multiline = true;
            txtMinGreen.Name = "txtMinGreen";
            txtMinGreen.Size = new Size(112, 86);
            txtMinGreen.TabIndex = 2;
            txtMinGreen.Text = "0";
            txtMinGreen.TextAlign = HorizontalAlignment.Center;
            // 
            // lblMaxGreen
            // 
            lblMaxGreen.AutoSize = true;
            lblMaxGreen.Dock = DockStyle.Fill;
            lblMaxGreen.Location = new Point(397, 132);
            lblMaxGreen.Name = "lblMaxGreen";
            lblMaxGreen.Size = new Size(73, 92);
            lblMaxGreen.TabIndex = 9;
            lblMaxGreen.Text = "Max";
            lblMaxGreen.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxGreen
            // 
            txtMaxGreen.BorderStyle = BorderStyle.FixedSingle;
            txtMaxGreen.Dock = DockStyle.Fill;
            txtMaxGreen.Location = new Point(476, 135);
            txtMaxGreen.Multiline = true;
            txtMaxGreen.Name = "txtMaxGreen";
            txtMaxGreen.Size = new Size(115, 86);
            txtMaxGreen.TabIndex = 3;
            txtMaxGreen.Text = "255";
            txtMaxGreen.TextAlign = HorizontalAlignment.Center;
            // 
            // lblRed
            // 
            lblRed.Dock = DockStyle.Fill;
            lblRed.Location = new Point(3, 40);
            lblRed.Name = "lblRed";
            lblRed.Size = new Size(191, 92);
            lblRed.TabIndex = 11;
            lblRed.Text = "Red:";
            lblRed.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // lblMinRed
            // 
            lblMinRed.AutoSize = true;
            lblMinRed.Dock = DockStyle.Fill;
            lblMinRed.Location = new Point(200, 40);
            lblMinRed.Name = "lblMinRed";
            lblMinRed.Size = new Size(73, 92);
            lblMinRed.TabIndex = 12;
            lblMinRed.Text = "Min";
            lblMinRed.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMinRed
            // 
            txtMinRed.BorderStyle = BorderStyle.FixedSingle;
            txtMinRed.Dock = DockStyle.Fill;
            txtMinRed.Location = new Point(279, 43);
            txtMinRed.Multiline = true;
            txtMinRed.Name = "txtMinRed";
            txtMinRed.Size = new Size(112, 86);
            txtMinRed.TabIndex = 0;
            txtMinRed.Text = "0";
            txtMinRed.TextAlign = HorizontalAlignment.Center;
            // 
            // lblMaxRed
            // 
            lblMaxRed.AutoSize = true;
            lblMaxRed.Dock = DockStyle.Fill;
            lblMaxRed.Location = new Point(397, 40);
            lblMaxRed.Name = "lblMaxRed";
            lblMaxRed.Size = new Size(73, 92);
            lblMaxRed.TabIndex = 14;
            lblMaxRed.Text = "Max";
            lblMaxRed.TextAlign = ContentAlignment.MiddleLeft;
            // 
            // txtMaxRed
            // 
            txtMaxRed.BorderStyle = BorderStyle.FixedSingle;
            txtMaxRed.Dock = DockStyle.Fill;
            txtMaxRed.Location = new Point(476, 43);
            txtMaxRed.Multiline = true;
            txtMaxRed.Name = "txtMaxRed";
            txtMaxRed.Size = new Size(115, 86);
            txtMaxRed.TabIndex = 1;
            txtMaxRed.Text = "255";
            txtMaxRed.TextAlign = HorizontalAlignment.Center;
            // 
            // lblColor
            // 
            tblColors.SetColumnSpan(lblColor, 4);
            lblColor.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point);
            lblColor.Location = new Point(3, 0);
            lblColor.Name = "lblColor";
            lblColor.Size = new Size(228, 32);
            lblColor.TabIndex = 0;
            lblColor.Text = "Color Range (RGB)";
            // 
            // tblMain
            // 
            tblMain.BackColor = SystemColors.Window;
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 45.14673F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 54.85327F));
            tblMain.Controls.Add(tblButtons, 0, 4);
            tblMain.Controls.Add(tblColors, 0, 2);
            tblMain.Controls.Add(tblSize, 0, 3);
            tblMain.Controls.Add(tblTitle, 0, 0);
            tblMain.Controls.Add(tblShapes, 0, 1);
            tblMain.Controls.Add(tblForm, 1, 0);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 5;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 8.760294F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 26.1924953F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 32.0142746F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20.689497F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 12.3434362F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Absolute, 20F));
            tblMain.Size = new Size(1329, 1011);
            tblMain.TabIndex = 0;
            // 
            // tblButtons
            // 
            tblButtons.ColumnCount = 3;
            tblButtons.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.33333F));
            tblButtons.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333359F));
            tblButtons.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 33.3333359F));
            tblButtons.Controls.Add(btnStart, 0, 0);
            tblButtons.Controls.Add(btnClear, 1, 0);
            tblButtons.Controls.Add(btnRefresh, 2, 0);
            tblButtons.Dock = DockStyle.Fill;
            tblButtons.Location = new Point(3, 887);
            tblButtons.Name = "tblButtons";
            tblButtons.RowCount = 1;
            tblButtons.RowStyles.Add(new RowStyle(SizeType.Percent, 100F));
            tblButtons.Size = new Size(594, 121);
            tblButtons.TabIndex = 3;
            // 
            // btnStart
            // 
            btnStart.Dock = DockStyle.Fill;
            btnStart.Location = new Point(3, 3);
            btnStart.Name = "btnStart";
            btnStart.Size = new Size(191, 115);
            btnStart.TabIndex = 0;
            btnStart.Text = "Start";
            btnStart.UseVisualStyleBackColor = true;
            // 
            // btnClear
            // 
            btnClear.Dock = DockStyle.Fill;
            btnClear.Location = new Point(200, 3);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(192, 115);
            btnClear.TabIndex = 1;
            btnClear.Text = "Clear Shapes";
            btnClear.UseVisualStyleBackColor = true;
            // 
            // btnRefresh
            // 
            btnRefresh.Dock = DockStyle.Fill;
            btnRefresh.Location = new Point(398, 3);
            btnRefresh.Name = "btnRefresh";
            btnRefresh.Size = new Size(193, 115);
            btnRefresh.TabIndex = 2;
            btnRefresh.Text = "Refresh Color";
            btnRefresh.UseVisualStyleBackColor = true;
            // 
            // tblForm
            // 
            tblForm.BackColor = SystemColors.WindowText;
            tblForm.Dock = DockStyle.Fill;
            tblForm.Location = new Point(603, 3);
            tblForm.Name = "tblForm";
            tblMain.SetRowSpan(tblForm, 5);
            tblForm.Size = new Size(723, 1005);
            tblForm.TabIndex = 0;
            // 
            // frmArtGenerator
            // 
            AutoScaleDimensions = new SizeF(15F, 38F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1329, 1011);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 5, 4, 5);
            Name = "frmArtGenerator";
            Text = "Art Generator";
            tblShapes.ResumeLayout(false);
            tblNum.ResumeLayout(false);
            tblNum.PerformLayout();
            tblTitle.ResumeLayout(false);
            tblTitle.PerformLayout();
            tblSize.ResumeLayout(false);
            tblSize.PerformLayout();
            tblColors.ResumeLayout(false);
            tblColors.PerformLayout();
            tblMain.ResumeLayout(false);
            tblButtons.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion
        private TableLayoutPanel tblMain;
        private TableLayoutPanel tblColors;
        private Label lblBlue;
        private Label lblMinBlue;
        private TextBox txtMinBlue;
        private Label lblMaxBlue;
        private TextBox txtMaxBlue;
        private Label lblGreen;
        private Label lblMinGreen;
        private TextBox txtMinGreen;
        private Label lblMaxGreen;
        private TextBox txtMaxGreen;
        private Label lblRed;
        private Label lblMinRed;
        private TextBox txtMinRed;
        private Label lblMaxRed;
        private TextBox txtMaxRed;
        private Label lblColor;
        private TableLayoutPanel tblSize;
        private Label lblWidth;
        private Label lblHeight;
        private TextBox txtMinWidth;
        private TextBox txtMinHeight;
        private Label lblMaxWidth;
        private Label lblMaxHeight;
        private TextBox txtMaxWidth;
        private TextBox txtMaxHeight;
        private Label lblSize;
        private TableLayoutPanel tblTitle;
        private Label lblShapes;
        private Label lblTitle;
        private TableLayoutPanel tblShapes;
        private RadioButton optSeconds;
        private RadioButton optMilli;
        private RadioButton optSpecific;
        private TableLayoutPanel tblNum;
        private TableLayoutPanel tblButtons;
        private Button btnStart;
        private Button btnClear;
        private Button btnRefresh;
        private Label lblMinWidth;
        private Label lblMinHeight;
        private Panel tblForm;
        private TextBox txtSeconds;
        private TextBox txtMilli;
        private TextBox txtSpecific;
    }
}