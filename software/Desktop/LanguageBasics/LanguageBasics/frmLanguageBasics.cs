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

        private void BtnIf2_Click(object? sender, EventArgs e)
        {

        }

        private void BtnIf1_Click(object? sender, EventArgs e)
        {

        }

        private void BtnRandom_Click(object? sender, EventArgs e)
        {
            Random rnd = new Random();
            int n = rnd.Next(0, 256);
            txtOutput.Text = "";
            txtOutput.Text = n.ToString();
            Color c = Color.FromArgb(rnd.Next(0, 256), rnd.Next(0, 256), rnd.Next(0, 256));
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
            c = Color.FromArgb(200, 100, 50);
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
