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
        public frmArtGenerator()
        {
            InitializeComponent();
            btnStart.Click += BtnStart_Click;
            btnClear.Click += BtnClear_Click;
            btnRefresh.Click += BtnRefresh_Click;
            tmr.Tick += Tmr_Tick;

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
            tmr.Enabled = !tmr.Enabled;
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
        private int ConvertTextToInt(string txt)
        {
            int n = 0;
            bool b = int.TryParse(txt, out n);
            return n;
        }

        private Color GetRandomColor(int minr, int maxr, int ming, int maxg, int minb, int maxb)
        {
            Random rnd = new();
            //SM You need to make sure that min <= max and that both are between 0 and 255. Otherwise this might crash.
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
            //SM You need to make sure that min <= max. Otherwise this might crash.
            lbl.Size = new Size(rnd.Next(panel.Width = ConvertTextToInt(txtMinWidth.Text), panel.Width = ConvertTextToInt(txtMaxWidth.Text)),
                rnd.Next(panel.Height = ConvertTextToInt(txtMinHeight.Text), panel.Height = ConvertTextToInt(txtMaxHeight.Text)));
            return lbl;
        }

        private void CreateLabel()
        {
            Label lbl1 = CreateShape(tblForm);
            tblForm.Controls.Add(lbl1);
        }


        private string StartSession()
        {
            string s = "Start";
            btnStart.Text = s;
            return s;
        }

        private string StopSession()
        {
            string s = "Stop";
            btnStart.Text = s;
            return s;
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

        private void BtnRefresh_Click(object? sender, EventArgs e)
        {
            //SM Refresh should refresh the colors of all labels in the output.
            tblForm.Controls.Clear();
            AddShapes();
        }

        private void BtnClear_Click(object? sender, EventArgs e)
        {
            tblForm.Controls.Clear();
        }

        private void BtnStart_Click(object? sender, EventArgs e)
        {
            if (btnStart.Text == "Start")
            {
                //SM Why do you need this procedure? It's just one line and you only call it once, add it here.
                StopSession();
                ControlsDisabled();
                tblForm.Controls.Clear();
                //SM Why do you need this here? It should be done in UI design.
                tblForm.BackColor = Color.Black;
                //SM Why do you need this here? It should be done in UI design.
                tblForm.Dock = DockStyle.Fill;
                AddShapes();
            }
            else
            {
                //SM Why do you need this procedure? It's just one line and you only call it once, add it here.
                StartSession();
                ControlsEnabled();
            }
        }

    }
}
