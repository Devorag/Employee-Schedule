using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;

namespace ArtGenerator
{
    public partial class frmArtGenerator : Form
    {
        System.Windows.Forms.Timer tmr = new();
        bool isrunning = false;
        public frmArtGenerator()
        {
            InitializeComponent();
            btnStart.Click += BtnStart_Click;
            btnClear.Click += BtnClear_Click;
            btnRefresh.Click += BtnRefresh_Click;
            optMilli.Click += Opt_Click;
            optSpecific.Click += Opt_Click;
            optSeconds.Click += Opt_Click;
            tmr.Tick += Tmr_Tick;
        }

        private void DisableShapeSettings()
        {
            if (optMilli.Checked == true)
            {
                txtSpecific.Enabled = false;
                txtSeconds.Enabled = false;
                txtMilli.Enabled = true;
                txtMilli.Text = "";
            }
            if (optSeconds.Checked == true && txtSeconds.Text != "")
            {
                txtMilli.Enabled = false;
                txtSpecific.Enabled = false;
                txtSeconds.Enabled = true;
                txtSeconds.Text = "";
            }
            if (optSpecific.Checked == true && txtSpecific.Text != "")
            {
                txtMilli.Enabled = false;
                txtSeconds.Enabled = false;
                txtSpecific.Enabled = true;
                txtSpecific.Text = "";
            }

        }

        private void AddShapesForXSeconds()
        {
            DateTime starttime = DateTime.Now;
            while ((DateTime.Now - starttime).TotalSeconds <= ConvertTextToInt(txtSeconds.Text))
            {
                CreateLabel();
                Application.DoEvents();
            }
        }

        private void AddShapesEveryMilliSecond()
        {
            var n = ConvertTextToInt(txtMilli.Text);
            tmr.Interval = n;
            tmr.Enabled = true;
        }

        private void SpecificNumShapes()
        {
            var n = ConvertTextToInt(txtSpecific.Text);
            for (int i = 1; i <= n; i++)
            {
                CreateLabel();
                Application.DoEvents();
            }
        }

        private void AddShapes()
        {
            if (isrunning == true)
            {
                if (optSpecific.Checked == true)
                {
                    SpecificNumShapes();
                }
                else if (optMilli.Checked == true)
                {
                    AddShapesEveryMilliSecond();
                }
                else if (optSeconds.Checked == true)
                {
                    AddShapesForXSeconds();
                }
            }
        }
        private int ConvertTextToInt(string txt)
        {
            int n = 0;
            bool b = int.TryParse(txt, out n);
            return n;
        }

        private Color GetRandomColor(int minr, int maxr, int ming, int maxg, int minb, int maxb)
        {
            Random rnd = new();
            var c = Color.FromArgb(rnd.Next(minr, maxr), rnd.Next(ming, maxg), rnd.Next(minb, maxb));
            return c;
        }

        private Color GetRandomColor()
        {
            return GetRandomColor(ConvertTextToInt(txtMinRed.Text), ConvertTextToInt(txtMaxRed.Text), ConvertTextToInt(txtMinGreen.Text),
                ConvertTextToInt(txtMaxGreen.Text), ConvertTextToInt(txtMinBlue.Text), ConvertTextToInt(txtMaxBlue.Text));
        }

        private Label CreateShape(Panel panel)
        {
            Random rnd = new Random();
            Label lbl = new Label();
            lbl.AutoSize = false;
            lbl.BackColor = GetRandomColor();
            lbl.Location = new Point(rnd.Next(0, panel.Width - 100), rnd.Next(0, panel.Height - 100));
            lbl.Size = new Size(rnd.Next(panel.Width = ConvertTextToInt(txtMinWidth.Text), panel.Width = ConvertTextToInt(txtMaxWidth.Text)),
                rnd.Next(panel.Height = ConvertTextToInt(txtMinHeight.Text), panel.Height = ConvertTextToInt(txtMaxHeight.Text)));
            return lbl;
        }

        private void CreateLabel()
        {
            if (isrunning == true)
            {
                Label lbl1 = CreateShape(tblForm);
                tblForm.Controls.Add(lbl1);
            }
        }

        private void ControlsEnabled()
        {
            foreach (Control c in tblColors.Controls)
            {
                c.Enabled = true;
            }
            foreach (Control c in tblSize.Controls)
            {
                c.Enabled = true;
            }
            foreach (Control c in tblShapes.Controls)
            {
                c.Enabled = true;
            }
        }

        private void ControlsDisabled()
        {
            foreach (Control c in tblColors.Controls)
            {
                c.Enabled = false;
            }
            foreach (Control c in tblSize.Controls)
            {
                c.Enabled = false;
            }
            foreach (Control c in tblShapes.Controls)
            {
                c.Enabled = false;
            }

        }

        private void Tmr_Tick(object? sender, EventArgs e)
        {
            CreateLabel();
        }

        private void Opt_Click(object? sender, EventArgs e)
        {
            RadioButton rb = (RadioButton)sender;
            DisableShapeSettings();
        }

        private void BtnRefresh_Click(object? sender, EventArgs e)
        {
            foreach (Label l in tblForm.Controls)
            {
                l.BackColor = GetRandomColor();
            }

        }


        private void BtnClear_Click(object? sender, EventArgs e)
        {
            tblForm.Controls.Clear();
        }

        private void BtnStart_Click(object? sender, EventArgs e)
        {

            if (btnStart.Text == "Start")
            {
                btnStart.Text = "Stop";
                ControlsDisabled();
                tblForm.Controls.Clear();
                isrunning = true;
                AddShapes();
            }
            else if (btnStart.Text == "Stop")
            {
                btnStart.Text = "Start";
                ControlsEnabled();
                tmr.Enabled = false;
                isrunning = false;
            }
        }

    }
}
