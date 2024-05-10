using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;
using System.Xml.Schema;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

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

        //private void TxtSpecific_Click(object? sender, EventArgs e)
        //{
        //    IsNumeric(txtSpecific);
        //}

        private void DisableShapeSettings()
        {
            if (optMilli.Checked == true)
            {
                txtSpecific.Enabled = false;
                txtSeconds.Enabled = false;
                txtMilli.Enabled = true;
                txtSeconds.Text = "";
                txtSpecific.Text = "";
            }
            else if (optSeconds.Checked == true)
            {
                txtMilli.Enabled = false;
                txtSpecific.Enabled = false;
                txtSeconds.Enabled = true;
                txtMilli.Text = "";
                txtSpecific.Text = "";
            }
            else if (optSpecific.Checked == true)
            {
                txtMilli.Enabled = false;
                txtSeconds.Enabled = false;
                txtSpecific.Enabled = true;
                txtMilli.Text = "";
                txtSeconds.Text = "";
            }

        }

        private void AddShapesForXSeconds()
        {
            DateTime starttime = DateTime.Now;
            if (CreateLabel() == false)
            {
                MessageBox.Show("Error : Invalid Data");
            }
            else if (CreateLabel() == true)
            {
                while ((DateTime.Now - starttime).TotalSeconds <= ConvertTextToInt(txtSeconds.Text))
                {
                    CreateLabel();
                    Application.DoEvents();
                }
            }
        }

        private void AddShapesEveryMilliSecond()
        {
            if (CreateLabel() == false)
            {
                MessageBox.Show("Error : Invalid Data");
            }
            else if (CreateLabel() == true)
            {
                var n = ConvertTextToInt(txtMilli.Text);
                tmr.Interval = n;
                tmr.Enabled = true;
            }
        }

        private void SpecificNumShapes()
        {
            var n = ConvertTextToInt(txtSpecific.Text);
            if (CreateLabel() == false)
            {
                tblForm.ForeColor = Color.Black;
                MessageBox.Show("Error : Invalid Data");
            }
            else if (CreateLabel() == true)
            {
                for (int i = 1; i <= n; i++)
                {
                    CreateLabel();
                    Application.DoEvents();
                }
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

        public bool CheckIfRandomValueIsValid(int min, int max)

        {

            bool isvalid = false;

            ///logic work reset b to represent if its VALID or not
            //check that Max is Greater
            //check that Max is less than 255
            //check that min is greater than 0
            if (min <= max && min >= 0 && max <= 255)
            {
                isvalid = true;
            }
            return isvalid;

        }

        private Color GetRandomColor(int minr, int maxr, int ming, int maxg, int minb, int maxb)
        {
            Random rnd = new();
            int val1 = rnd.Next(minr, maxr);
            int val2 = rnd.Next(ming, maxg);
            int val3 = rnd.Next(minb, maxb);
            //SM You need to make sure that min <= max and that both are between 0 and 255. Otherwise this might crash.

            //to do:
            //get the min,
            //get the max,
            //check that Max is Greater
            //check that Max is less than 255
            //check that min is greater than 0

            //// var yfColor = Color.FromArgb(val1, val2, val3);



            var c = Color.FromArgb(val1, val2, val3);
            return c;
        }

        private Color GetRandomColor()
        {
            var c = Color.Black;
            int minr = ConvertTextToInt(txtMinRed.Text);
            int maxr = ConvertTextToInt(txtMaxRed.Text);
            int ming = ConvertTextToInt(txtMinGreen.Text);
            int maxg = ConvertTextToInt(txtMaxGreen.Text);
            int minb = ConvertTextToInt(txtMinBlue.Text);
            int maxb = ConvertTextToInt(txtMaxBlue.Text);

            c = GetRandomColor(minr, maxr, ming, maxg, minb, maxb);



            return c;
        }
        private bool CheckMinAndMax(int min, int max)
        {
            bool isvalid = false;
            if (min <= max)
            {
                isvalid = true;
            }
            return isvalid;
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

        private bool CreateLabel()
        {
            //declare bool var here set it to false
            bool create = true;
            int minr = ConvertTextToInt(txtMinRed.Text);
            int maxr = ConvertTextToInt(txtMaxRed.Text);
            int ming = ConvertTextToInt(txtMinGreen.Text);
            int maxg = ConvertTextToInt(txtMaxGreen.Text);
            int minb = ConvertTextToInt(txtMinBlue.Text);
            int maxb = ConvertTextToInt(txtMaxBlue.Text);
            if (isrunning == true
                && CheckMinAndMax(ConvertTextToInt(txtMinHeight.Text), ConvertTextToInt(txtMaxHeight.Text)) is true
                && CheckMinAndMax(ConvertTextToInt(txtMinWidth.Text), ConvertTextToInt(txtMaxWidth.Text)) is true
                && CheckIfRandomValueIsValid(minr, maxr) && CheckIfRandomValueIsValid(ming, maxg) && CheckIfRandomValueIsValid(minb, maxb) is true)
            {
                Label lbl1 = CreateShape(tblForm);
                tblForm.Controls.Add(lbl1);
                create = true;

            }
            else if (CheckMinAndMax(ConvertTextToInt(txtMinHeight.Text), ConvertTextToInt(txtMaxHeight.Text)) is false
                || CheckMinAndMax(ConvertTextToInt(txtMinWidth.Text), ConvertTextToInt(txtMaxWidth.Text)) is false
                || CheckIfRandomValueIsValid(minr, maxr) || CheckIfRandomValueIsValid(ming, maxg) || CheckIfRandomValueIsValid(minb, maxb) is true)
            {
                create = false;
            }
            return create;
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

        //private void IsNumeric(Control textbox)
        //{
         //   int num;
          //  if (!int.TryParse(textbox.Text, out num) && textbox.Text != "")
           // {
            //    MessageBox.Show("Error : Invalid Data");
             //   return;
            //} 
        //}

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
