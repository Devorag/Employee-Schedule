using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;

namespace LanguageBasics
{
    public partial class frmLanguageBasics : Form
    {
        //variables go here 
        public frmLanguageBasics()
        {
            InitializeComponent();
            //event subscription goes here
            btnEvemtHandler1.Click += BtnEvemtHandler1_Click;
            //btnEventHandler2.MouseMove += BtnEventHandler2_MouseMove;
            //btnEventHandler2.MouseLeave += BtnEventHandler2_MouseLeave;
            btnVariable1.Click += BtnVariable1_Click;
            btnVariable2.Click += BtnVariable2_Click;
            btnDataConversion1.Click += BtnDataConversion1_Click;
            btnDataConversion2.Click += BtnDataConversion2_Click;
            btnRandom.Click += BtnRandom_Click;
            btnIf1.Click += BtnIf1_Click;
            btnIf2.Click += BtnIf2_Click;
        }

        private string ConcatMessage(string value)
        {
            string s = "";
            s = txtOutput.Text + value + Environment.NewLine;
            return s;

        }
        private void DisplayMessage(string value, bool clearbox = false) {
            if (clearbox == true)
            {
                txtOutput.Text = "";
            }
        txtOutput.Text = ConcatMessage(value);
        }

        private void DisplayMessage(string caption, string value, bool clearbox = false) {
            string s = caption + " = " + value;
            DisplayMessage(s, clearbox);
        }

        private Color GetRandomColor(int minr, int maxr, int ming, int maxg, int minb, int maxb)
        {
            Random rnd = new Random();
            Color c = Color.FromArgb(rnd.Next(minr, maxr), rnd.Next(ming, maxg), rnd.Next(minb, maxb));
            return c;
        }


        private Color GetRandomColor()
        {
            return GetRandomColor(0, 256, 0, 256, 0, 256);
        }


        private void BtnIf2_Click(object? sender, EventArgs e)
        {
            //has red > 120 then forecolor blue
            //else has blue > 128 then forecolor red 
            //else has green > 128 then forecolor yellow
            //all other cases black
            Random rnd = new Random();
            Color c = GetRandomColor();
            Color fc = Color.Black;
            txtOutput.BackColor = c;
            if (c.R > 128)
            {
                fc = Color.Blue;
            }
            if (c.B > 128)
            {
                fc = Color.Red;
            }
            if (c.G > 128)
            {
                fc = Color.Yellow;
            }
            else
            {
                fc = Color.Black;
            }
            txtOutput.ForeColor = fc;
            DisplayMessage("BackColor: ", c.ToString(), true);
            DisplayMessage("ForeColor: ", fc.ToString());
        }

        private void BtnIf1_Click(object? sender, EventArgs e)
        {
            //7 1st, 3 and 6 2nd prize, Try Again 
            Random rnd = new Random();
            int n = rnd.Next(1, 8);
            string msg = "";
            DisplayMessage(n.ToString(), true);
            if (n == 7)
            {
                msg = "1st prize";
            }
            else if (n > 2 && n < 7)
            {
                msg = "2nd Prize";
            }
            else
            {
                msg = "try again";
            }
            DisplayMessage(msg);
        }

        private void BtnRandom_Click(object? sender, EventArgs e)
        {
            Random rnd = new Random();
            int n = rnd.Next(0, 256);
            txtOutput.Text = "";
            txtOutput.Text = n.ToString();
            Color c = GetRandomColor();
            txtOutput.BackColor = c;
        }

        private void BtnDataConversion2_Click(object? sender, EventArgs e)
        {
            int n = 0;
            string s = txtOutput.Text;
            bool b = int.TryParse(s, out n);
            txtOutput.Text = "s = " + s + ", conversion worked = " + b + ", n = " + n + Environment.NewLine;
        }

        private void BtnDataConversion1_Click(object? sender, EventArgs e)
        {
            decimal d = 1.99m; int n = 0; String s = "100";
            n = (int)d;
            txtOutput.Text = "";
            txtOutput.Text = "d = " + d + ", n = " + n + Environment.NewLine;

            bool b = int.TryParse(s, out n);
            txtOutput.Text = "s = " + s + ", b = " + b + ", n = " + n + Environment.NewLine;
        }

        private void BtnVariable2_Click(object? sender, EventArgs e)
        {
            //sting bool color
            string s = "Hello "; bool b = false; Color c = Color.MediumVioletRed;
            txtOutput.Text = "s = " + s + ", b = " + b + ", c = " + c + Environment.NewLine;
            txtOutput.BackColor = c;
            s += s;
            b = !b;
            c = GetRandomColor(230, 256, 200, 250, 0, 256);
            txtOutput.Text = "s = " + s + ", b = " + b + ", c = " + c + Environment.NewLine;
            txtOutput.BackColor = c;
        }

        private void BtnVariable1_Click(object? sender, EventArgs e)
        {
            //int decimal datetime
            int n = 10; decimal d = .99m; DateTime dt = new DateTime(1989, 4, 25);
            txtOutput.Text = "";
            txtOutput.Text = "n = " + n + ", d = " + d + ", dt = " + dt + Environment.NewLine;
            n = n * 10000;
            d += d;
            dt = dt.AddDays(1000);
            txtOutput.Text = "n = " + n + ", d = " + d + ", dt = " + dt + Environment.NewLine;
        }

        private void BtnEventHandler2_MouseLeave(object? sender, EventArgs e)
        {
            btnEventHandler2.BackColor = SystemColors.ControlLight;
            btnEventHandler2.ForeColor = SystemColors.ControlText;
        }

        private void BtnEventHandler2_MouseMove(object? sender, MouseEventArgs e)
        {
            txtOutput.Text = txtOutput.Text + "Mouse moved over BtnEventHandler2 " + DateTime.Now.TimeOfDay.ToString() + Environment.NewLine;
            btnEventHandler2.BackColor = Color.DodgerBlue;
            btnEventHandler2.ForeColor = Color.OrangeRed;
        }

        private void BtnEvemtHandler1_Click(object? sender, EventArgs e)
        {
            txtOutput.Text = txtOutput.Text + "BtnEventHandler1 was clicked " + DateTime.Now.TimeOfDay.ToString() + Environment.NewLine;

        }

        private void gOutput_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        //code goes here 
    }
}
