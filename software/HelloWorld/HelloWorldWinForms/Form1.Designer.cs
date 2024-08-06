namespace HelloWorldWinForms
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            btnClick = new Button();
            lblText = new Label();
            SuspendLayout();
            // 
            // btnClick
            // 
            btnClick.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            btnClick.Font = new Font("Segoe UI", 14F, FontStyle.Regular, GraphicsUnit.Point, 0);
            btnClick.Location = new Point(409, 721);
            btnClick.Name = "btnClick";
            btnClick.Size = new Size(689, 70);
            btnClick.TabIndex = 0;
            btnClick.Text = "Click me to say Hello";
            btnClick.UseVisualStyleBackColor = true;
            btnClick.Click += btnClick_Click;
            // 
            // lblText
            // 
            lblText.Anchor = AnchorStyles.Left | AnchorStyles.Right;
            lblText.BackColor = SystemColors.ControlLightLight;
            lblText.Location = new Point(186, 384);
            lblText.Name = "lblText";
            lblText.Size = new Size(1132, 115);
            lblText.TabIndex = 1;
            lblText.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1512, 977);
            Controls.Add(lblText);
            Controls.Add(btnClick);
            Name = "Form1";
            Text = "Hello World";
            ResumeLayout(false);
        }

        #endregion

        private Button btnClick;
        private Label lblText;
    }
}
