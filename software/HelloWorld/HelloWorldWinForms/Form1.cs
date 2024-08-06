namespace HelloWorldWinForms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnClick_Click(object sender, EventArgs e)
        {
            lblText.Text = "Hello World my name is Devora Goldenberg. The current time is " + DateTime.Now.ToString();
        }
    }
}
